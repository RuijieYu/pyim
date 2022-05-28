;;; pyim-cstring.el --- Chinese string core tools for pyim.        -*- lexical-binding: t; -*-

;; * Header
;; Copyright (C) 2021 Free Software Foundation, Inc.

;; Author: Feng Shu <tumashu@163.com>
;; Maintainer: Feng Shu <tumashu@163.com>
;; URL: https://github.com/tumashu/pyim
;; Keywords: convenience, Chinese, pinyin, input-method

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:
;; * 代码                                                           :code:
(require 'cl-lib)
(require 'pyim-common)
(require 'pyim-dcache)
(require 'pyim-scheme)
(require 'pyim-pymap)

(defgroup pyim-cstring nil
  "Chinese string tools for pyim."
  :group 'pyim)

(defun pyim-cstring-partition (string &optional to-cchar)
  "STRING partition.

1. Hello你好 -> (\"Hello\" \"你\" \"好\"), when TO-CCHAR is non-nil.
2. Hello你好 -> (\"Hello\" \"你好\"), when TO-CCHAR is nil."
  ;; NOTE: 使用5个\0作为分割符有没有其它副作用？有待观察。
  (let ((sep (make-string 5 ?\0)))
    (if (pyim-string-match-p "\\CC" string)
        ;; 处理中英文混合的情况
        (remove "" (split-string
                    (replace-regexp-in-string
                     (if to-cchar "\\(\\cc\\)" "\\(\\cc+\\)")
                     (concat sep "\\1" sep) string)
                    sep))
      (if to-cchar
          (cl-mapcar #'char-to-string string)
        (list string)))))

(defun pyim-cstring-substrings (cstring &optional max-length number)
  "找出 CSTRING 中所有长度不超过 MAX-LENGTH 的子字符串，生成一个 alist。

这个 alist 中的每个元素为：(子字符串 开始位置 结束位置), 参数
NUMBER 用于递归，表示子字符串在 CSTRING 中的位置。"
  (let ((number (or number 0)))
    (cond
     ((= (length cstring) 0) nil)
     (t (append (pyim-cstring-substrings-1 cstring max-length number)
                (pyim-cstring-substrings (substring cstring 1)
                                         max-length (1+ number)))))))

(defun pyim-cstring-substrings-1 (cstring max-length number)
  "`pyim-cstring-substrings' 的内部函数。"
  (cond
   ((< (length cstring) 2) nil)
   (t (append
       (let ((length (length cstring)))
         (when (<= length (or max-length 6))
           (list (list cstring number (+ number length)))))
       (pyim-cstring-substrings-1
        (substring cstring 0 -1)
        max-length number)))))

;; ** 中文字符串到拼音的转换工具
;;;###autoload
(defun pyim-cstring-to-pinyin (string &optional shou-zi-mu separator
                                      return-list ignore-duo-yin-zi adjust-duo-yin-zi)
  "将汉字字符串转换为对应的拼音字符串的工具.

如果 SHOU-ZI-MU 设置为 t, 转换仅得到拼音首字母字符串。当
RETURN-LIST 设置为 t 时，返回一个拼音列表，这个列表包含词条的一个
或者多个拼音（词条包含多音字时）；如果 IGNORE-DUO-YIN-ZI 设置为
t, 遇到多音字时，只使用第一个拼音，其它拼音忽略；当
ADJUST-DUO-YIN-Zi 设置为 t 时, `pyim-cstring-to-pinyin' 会使用 pyim 已
安装的词库来校正多音字，但这个功能有一定的限制:

1. pyim 普通词库中不存在的词条不能较正
2. 多音字校正速度比较慢，实时转换会产生卡顿。

BUG: 当 STRING 中包含其它标点符号，并且设置 SEPERATER 时，结果会
包含多余的连接符：比如： '你=好' --> 'ni-=-hao'"
  (if (not (pyim-string-match-p "\\cc" string))
      (if return-list
          (list string)
        string)
    (let (pinyins-list pinyins-list-adjusted)
      ;; ("Hello" "银" "行") -> (("Hello") ("yin") ("hang" "xing"))
      (setq pinyins-list
            (mapcar (lambda (str)
                      (if (pyim-string-match-p "\\cc" str)
                          (pyim-pymap-cchar2py-get str)
                        (list str)))
                    (pyim-cstring-partition string t)))

      ;; 通过排列组合的方式, 重排 pinyins-list。
      ;; 比如：(("Hello") ("yin") ("hang" "xing")) -> (("Hello" "yin" "hang") ("Hello" "yin" "xing"))
      (setq pinyins-list
            (pyim-permutate-list pinyins-list))

      ;; 使用 pyim 的安装的词库来校正多音字。
      ;; FIXME：如果 string 包含非中文的字符，那么多音字矫正将不起作用。
      (when adjust-duo-yin-zi
        (pyim-dcache-init-variables)
        (dolist (pylist pinyins-list)
          (let* ((py-str (mapconcat #'identity pylist "-"))
                 (words-from-dicts
                  (pyim-dcache-get py-str '(code2word))))
            (when (member string words-from-dicts)
              (push pylist pinyins-list-adjusted))))
        (setq pinyins-list-adjusted
              (nreverse pinyins-list-adjusted)))

      ;; 返回拼音字符串或者拼音列表
      (let* ((pinyins-list
              (or pinyins-list-adjusted
                  pinyins-list))
             (list (mapcar (lambda (x)
                             (mapconcat (lambda (str)
                                          (if shou-zi-mu
                                              (substring str 0 1)
                                            str))
                                        x separator))
                           (if ignore-duo-yin-zi
                               (list (car pinyins-list))
                             pinyins-list))))
        (if return-list
            list
          (string-join list " "))))))

;;;###autoload
(defun pyim-cstring-to-pinyin-simple (string &optional shou-zi-mu separator return-list)
  "简化版的 `pyim-cstring-to-pinyin', 不处理多音字。"
  (pyim-cstring-to-pinyin string shou-zi-mu separator return-list t))

;; ** 中文字符串到形码的转换工具
(defun pyim-cstring-to-xingma (string scheme-name &optional return-list)
  "返回汉字 STRING 对应形码方案 SCHEME-NAME 的 code (不包括
code-prefix)。当RETURN-LIST 设置为 t 时，返回一个 code list。"
  (when (string-match-p "^\\cc+\\'" string)
    (let* ((prefix (pyim-scheme-get-option scheme-name :code-prefix))
           (func (intern (concat "pyim-cstring-to-xingma:" (symbol-name scheme-name))))
           (dcache-codes (mapcar (lambda (x)
                                   (when (string-prefix-p prefix x)
                                     (string-remove-prefix prefix x)))
                                 (sort (cl-copy-list (pyim-dcache-call-api 'search-word-code string))
                                       (lambda (a b) (> (length a) (length b))))))
           (codes (or (remove nil dcache-codes)
                      (and (functionp func)
                           (funcall func string scheme-name)))))
      (when codes
        (if return-list
            codes
          ;; 如果要返回一个字符串，那就返回第一个，也就是最长的那个编码。
          (car codes))))))

(defun pyim-cstring-to-xingma:wubi (string &optional scheme-name)
  "返回汉字 STRING 的五笔编码 (不包括 code-prefix) 编码列表。"
  (let ((length (length string))
        (string (split-string string "" t)))
    (cond
     ;; 双字词，分别取两个字的前两个编码
     ((eq length 2)
      (let ((s1 (pyim-cstring-to-xingma (nth 0 string) scheme-name))
            (s2 (pyim-cstring-to-xingma (nth 1 string) scheme-name)))
        (when (and s1 s2)
          (list (concat (substring s1 0 2)
                        (substring s2 0 2))))))
     ;; 三字词，取前二字的首编码，及第三个字的前两个编码
     ((eq length 3)
      (let ((s1 (pyim-cstring-to-xingma (nth 0 string) scheme-name))
            (s2 (pyim-cstring-to-xingma (nth 1 string) scheme-name))
            (s3 (pyim-cstring-to-xingma (nth 2 string) scheme-name)))
        (when (and s1 s2 s3)
          (list (concat (substring s1 0 1)
                        (substring s2 0 1)
                        (substring s3 0 2))))))
     ;; 四字词及以上，分别前三个字及最后一个字的首编码
     ((> length 3)
      (let ((s1 (pyim-cstring-to-xingma (nth 0 string) scheme-name))
            (s2 (pyim-cstring-to-xingma (nth 1 string) scheme-name))
            (s3 (pyim-cstring-to-xingma (nth 2 string) scheme-name))
            (s4 (pyim-cstring-to-xingma (nth (1- length) string) scheme-name)))
        (when (and s1 s2 s3 s4)
          (list (concat (substring s1 0 1)
                        (substring s2 0 1)
                        (substring s3 0 1)
                        (substring s4 0 1))))))
     (t nil))))

(defun pyim-cstring-to-codes (string scheme-name &optional criteria)
  "将 STRING 转换为 SCHEME-NAME 对应的 codes.

当 pyim class 为拼音，并且提供 CRITERIA 字符串时，检索到的所有
codes 会和这个字符串进行比较，然后选择一个相似度最高的 code 作为
输出，这种处理方式适合拼音输入法，形码输入法一般不需要类似的操作。

CRITERIA 字符串一般是通过 imobjs 构建的，它保留了用户原始的输入信
息。"
  (let ((class (pyim-scheme-get-option scheme-name :class)))
    (cond ((eq class 'xingma)
           (pyim-cstring-to-xingma string scheme-name t))
          ;;拼音使用了多音字校正
          (t (let ((codes (pyim-cstring-to-pinyin string nil "-" t nil t))
                   codes-sorted)
               (if (< (length criteria) 1)
                   codes
                 ;; 将 所有 codes 与 criteria 字符串比对，选取相似度最高的一个
                 ;; code. 这种处理方式适合拼音输入法。
                 (setq codes-sorted
                       (sort codes
                             (lambda (a b)
                               (< (pyim-string-distance a criteria)
                                  (pyim-string-distance b criteria)))))
                 (list (car codes-sorted))))))))

;; PYIM 重构以前使用的一些函数名称，alias 一下，便于兼容。
(defalias 'pyim-hanzi2pinyin-simple 'pyim-cstring-to-pinyin-simple)
(defalias 'pyim-hanzi2pinyin 'pyim-cstring-to-pinyin)
(defalias 'pyim-hanzi2xingma 'pyim-cstring-to-xingma)
(defalias 'pyim-cwords-at-point 'pyim-cstring-words-at-point)

;; * Footer
(provide 'pyim-cstring)

;;; pyim-cstring.el ends here
