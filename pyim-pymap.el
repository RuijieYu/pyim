;;; pyim-pymap.el --- Pinyin map used by pyim  -*- lexical-binding: t; -*-

;; * Header
;; Copyright (C) 2015-2020 Free Software Foundation, Inc.

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

;; 这个文件是 pyim 内部使用的 "拼音-汉字" 对照表，
;; 这个对照表用来实现拼音查询功能，即，查询某个汉字对应的拼音代码。

;; 词库中汉字拼音的信息从 android project 中得到：
;; http://android.git.kernel.org/?p=platform/packages/inputmethods/PinyinIME.git

;; 注意： 这个文件 *不用于* 输入法自定义词库！！！

;;; Code:

;; * 代码                                                                 :code:

(defvar pyim-pymap
  '(("a" "啊阿吖呵腌|嗄锕")
    ("ai" "爱唉哎艾挨矮癌埃哀碍愛暧嗳隘霭|捱蔼皑嫒噯瑷嗌毐欸僾薆嬡壒鑀砹敳礙曖锿啀璦瞹娭藹譪呆溾昹騃靄皚鴱溰餲")
    ("an" "按俺安案暗岸鞍氨庵胺黯|铵谙桉唵闇垵盦儑侒鹌犴埯厂广揞荌鮟諳銨錌豻韽萻啽峖馣腤雸鵪")
    ("ang" "昂盎肮|昻骯醠")
    ("ao" "奥熬澳傲凹敖袄嗷|獒拗坳鳌岙螯翱遨骜媪懊奧璈鏊鏖廒奡芺聱鰲謷墺擙襖鼇镺扷嶴岰滶隞爊蔜柪艹")
    ("ba" "吧把八爸巴拔罢霸坝扒芭疤靶捌叭灞跋耙粑钯笆|茇岜魃罷仈鲅犮菝壩矲癹豝胈覇朳抜弝蚆釟軷釛鼥")
    ("bai" "白百摆拜败柏掰呗佰伯|挀稗敗擺捭粺栢粨擘拝竡")
    ("ban" "办版半班板般搬伴斑扮拌瓣绊扳颁|坂阪辦钣瘢攽癍闆湴粄頒舨絆蝂柈姅昄鈑怑鉡靽螁魬斒")
    ("bang" "帮棒榜邦浜绑磅傍镑蚌谤膀|幫梆幇垹綁旁蒡謗塝鞤鎊搒縍玤艕峀")
    ("bao" "包报宝抱保爆暴饱薄堡鲍煲豹胞曝苞褒葆宀|孢寶勹雹報菢寳刨飽剥鸨龅鮑儤褓瀑趵笣窇蕔珤媬鑤鴇虣炮齙怉靤駂鳵髱忁飹")
    ("bei" "被呗北背倍杯贝备悲碑卑辈蓓焙惫|钡悖陂備孛唄狈臂貝碚盃輩偝珼邶鹎褙鞴琲牬鐾庳椑誖鋇揹鞁桮憊襬狽梖骳藣糒鄁鵯犕")
    ("ben" "本笨奔苯|锛贲渀犇畚坌夯錛泍栟")
    ("beng" "泵蹦崩甭绷迸嘣蚌|繃伻甏祊埲琫菶塴嵭閍")
    ("bi" "比必笔逼币俾碧毕壁避鼻闭彼臂弊屄畀璧毙辟蔽弼痹敝庇鄙吡|婢滗陛荜铋匕濞哔妣薜篦筆湢楅蓖芘嬖髀妼毖畢秕苾彃襞繴閉裨箅佖跸嬶泌愎筚幣堛萆斃躄睥贲閟荸疪詖狴柀賁粊庳獙沘邲痺嗶皕觱秘潷珌綼閇蹕匂舭縪愊幤怭鄪髲坒篳鏎獘廦腷贔蓽貏熚疕罼駜朼蜌奰鄨襣飶鮅鵖鷩鼊梐馝鷝驆滭")
    ("bian" "便边变遍编扁辩鞭辨贬卞辫匾|煸弁變苄邊汴編砭変釆褊笾忭辯蝙邉鳊貶抃箯碥缏窆籩辮髟辧萹揙艑豍惼甂峅汳稨鴘")
    ("biao" "表标彪飙飚镖膘裱婊骠|镳杓灬標飑摽俵錶鳔飆儦諘藨褾驃鑣熛鏢瘭猋滮檦贆爂墂髟瀌臕飇鰾")
    ("bie" "别憋鳖瘪|別蹩彆鱉咇蟞柲癟鼈虌襒徶蛂")
    ("bin" "斌彬宾滨鬓镔濒殡缤槟|殯摈玢膑豳髌賓傧儐邠濱鬢繽瀕蠙擯濵臏虨椕髕霦鑌")
    ("bing" "并病冰兵饼丙柄炳秉並|禀氷摒幷邴屏餅槟併鞞昺偋掤抦稟垪倂棅餠竝寎梹檳苪誁陃窉怲庰鞆蛃鋲栟")
    ("bo" "波博播拨伯薄啵剥搏柏勃泊膊驳卜钵玻脖铂癶帛渤舶跛箔菠亳|撥钹簸擘僰剝礴魄礡孛浡踣鎛愽檗缽饽駁鹁駮嶓蘗狛蔔詙簙譒僠鈸犦襮鉢糪秡懪欂瓝鋍葧胉鉑鑮餺蹳餑郣挬鱍鵓")
    ("bu" "不部补布步卜捕簿埠卟吥哺怖钚補|逋歩堡佈埔瓿晡钸咘鸔鳪鈽餔醭蔀誧踄峬篰轐")
    ("ca" "擦拆|礤嚓礸")
    ("cai" "才菜猜踩蔡采彩财材裁|睬財戝採婇偲綵棌寀埰跴縩")
    ("can" "惨残餐参灿蚕惭|璨粲殘慘參骖孱憯燦黪蠶慚飡驂慙澯黲嬠")
    ("cang" "藏仓苍舱沧|倉蒼滄伧艙臧欌鑶獊嵢凔")
    ("cao" "草操曹槽肏艹糙嘈|漕嶆螬艸艚騲襙曺")
    ("ce" "测侧册策厕|恻側憡測冊廁惻萴蓛")
    ("cen" "岑|涔参梣嵾")
    ("ceng" "曾层蹭|噌層嶒驓")
    ("cha" "差查茶插叉察茬搽岔碴槎檫汊杈诧姹镲嚓刹衩楂|偛侘锸鍤猹査馇垞喳嗏臿奼靫疀蹅艖紁")
    ("chai" "拆柴差钗|豺犲侪虿瘥釵儕喍蠆祡袃囆")
    ("chan" "产缠禅铲颤馋掺蝉婵谗搀蟾|澶阐忏煘觇谄蒇潺躔禪鑱单廛產儳顫孱羼纏瀍鋋劖蟬襜巉辿摻懺瀺饞冁讒棎丳毚闡摲諂湹鏟骣嬋剷産灛嵼幨旵蕆壥纒繟梴懴簅滻囅嚵幝獑磛酁艬鋓")
    ("chang" "长唱常厂场昌尝肠畅偿娼倡敞長昶|怅嫦場苌嘗猖徜阊廠鲳伥氅菖裳鬯暢償腸倘鋹嚐萇悵厰僘惝錩甞韔蟐椙膓淐裮琩鯧鋿鱨鼚")
    ("chao" "超炒朝吵抄潮巢钞绰嘲焯|晁牊耖剿鈔怊弨巣漅眧鄛罺巐轈窲")
    ("che" "车扯撤彻澈車掣坼|徹偖砗尺迠硨硩撦烢莗")
    ("chen" "陈趁沉晨尘臣辰称衬琛嗔|宸郴谌陳抻忱谶瞋碜塵伧龀榇傖襯讖棽疢沈蔯踸諃煁茞諶莐磣嚫贂墋螴肜鷐賝揨樄麎齔")
    ("cheng" "成称城呈程乘撑诚承橙澄秤丞盛逞惩骋|稱铖棖塍埕悜誠蛏瞠偁脭撐琤裎柽宬枨澂酲郕珹懲牚橕掁荿铛珵棦騁峸鋮庱檉碀蟶筬赬浾騬溗竀饓鏿")
    ("chi" "吃持池迟赤尺齿痴驰翅耻斥炽弛叺彳|敕叱嗤螭匙豉侈哧墀饬湁笞篪呎蚩鸱茌遲啻魑媸黐褫傺歯瘛恥齒馳絺坻摛癡熾勅懘喫瘈踟鶒眵鉓妛荎抶攡淔痸遅鴟遫蚇瞝謘漦瓻鉹胣鷘翨鵄腟貾饎岻齝麶")
    ("chong" "冲重充虫宠崇翀|铳舂衝沖憧忡蟲蹖寵种艟茺銃珫罿隀浺憃")
    ("chou" "抽丑臭愁仇筹畴瞅稠酬绸|俦踌醜雠惆瘳籌栦疇讎篘吜犨綢菗絒帱殠讐杻杽雔燽躊懤嬦")
    ("chu" "出处除初楚触储厨褚畜雏锄杵橱|亍処處怵矗刍础滁黜楮蹰濋绌樗俶躇滀搐儊儲絀齣敊憷觸芻廚貙雛櫥摴蜍歜篨蒢鋤斶鶵耡豖礎趎懨犓蒭幮鄐珿臅躕檚琡")
    ("chua" "|欻")
    ("chuai" "踹揣|啜搋嘬膪欼膗")
    ("chuan" "传穿船川串喘|傳舛椽钏巛氚荈遄舡踳瑏釧汌歂賗玔輲暷")
    ("chuang" "床创窗闯疮怆|創幢闖摐瘡傸愴牀剏刱窓磢")
    ("chui" "吹垂锤捶炊槌|棰陲缍圌椎錘鎚菙")
    ("chun" "春纯唇蠢醇淳椿|純莼蝽鹑脣偆賰暙橁蓴犉惷漘杶萶鶉瑃鰆槆媋鶞鯙")
    ("chuo" "戳绰|啜辍龊踔磭綽歠娖輟惙逴齪嚽擉")
    ("ci" "次此词刺辞赐磁瓷慈茨雌祠兹疵差|詞糍佽鹚賜栨辭伺泚偨佌茈嬨絘庛朿跐蛓柌莿濨趀飺餈鶿皉茦")
    ("cong" "从葱聪丛從琮|璁匆骢淙熜婃囱聰従枞苁蔥囪悰聡叢怱悤賨驄孮慒謥暰欉鏦藂蟌樅瑽瞛徖")
    ("cou" "凑|腠湊辏玼楱輳")
    ("cu" "粗促醋簇蹙|蹴猝徂蔟殂卒瘯憱酢麁顣麤觕踧踀鼀")
    ("cuan" "窜蹿攒|篡爨汆撺竄攢镩攅巑攛躥簒")
    ("cui" "催崔翠脆摧粹萃淬|啐璀瘁悴毳衰榱漼墔膵凗焠膬磪忰翆鏙竁慛")
    ("cun" "村存寸吋|忖皴邨蹲籿刌")
    ("cuo" "错撮搓措挫厝|錯锉磋矬痤鹾蹉夎嵯棤剉脞瘥齹剒瑳醝鹺莝銼蒫蓌遳嵳髊")
    ("da" "打大达答搭哒|嗒妲怛達沓鞑耷笪瘩噠龘褡靼咑炟躂鐽薘燵羍繨韃匒鎝畣")
    ("dai" "带待代呆戴袋贷黛逮岱大|甙歹帶怠殆傣埭玳迨绐呔汏帯貸瀻軑襶柋紿獃靆軩艜")
    ("dan" "但单蛋丹淡胆担弹氮旦诞啖耽卩|掸澹儋單惮殚亶勯箪聃膽窞眈噉擔帎赕石郸紞疸殫誕啗泹啿憚憺簞褝亻萏瘅柦襌酖蜑玬譂觛禫匰燀狚嚪砃甔聸贉癚鄲澸刐髧沊鴠黕霮衴")
    ("dang" "当党档挡荡當裆|铛宕檔凼黨砀谠噹擋儅蕩菪璫簹讜盪鐺襠璗礑蟷澢碭艡瓽")
    ("dao" "到道倒刀岛导盗稻捣悼屶槝叨|蹈刂祷島纛忉瓙氘菿導嶋盜檤稲儔魛椡捯焘禱裯搗翿嶌帱舠禂擣壔嶹幬釖隝陦隯")
    ("de" "的得地德锝|底徳悳淂")
    ("dei" "得|")
    ("den" "|扽扥")
    ("deng" "等灯登邓瞪蹬凳噔|澄镫燈磴鄧鐙嶝戥簦豋墱嬁璒")
    ("di" "地第低滴底睇帝的迪弟敌抵递蒂狄堤笛谛娣|嘀荻涤邸旳骶棣嫡缔氐菂砥镝觌翟诋碲柢籴敵俤聜墬鞮袛坻磾諦奀滌遞提厎羝禘牴玓蚳締墑苖螮踶糴彽菧嚁蔕阺呧廸隄釱蔋鏑馰藡鸐逓梑髢眱軧靮蹢焍弤甋梊")
    ("dia" "|嗲")
    ("dian" "点店电殿垫典颠掂碘滇甸點癫丶踮|靛淀巅奠佃癜簟钿惦玷電敁槙坫顛厧傎磹墊癲瘨扂巔蒧壂婰巓蹎阽椣澱蕇驔齻婝")
    ("diao" "掉吊调叼钓雕屌刁凋|貂弔鲷碉鸟铞釣弴伄魡蛁鯛铫琱彫蓧鵰虭殦雿簓奝窵")
    ("die" "跌碟爹蝶叠迭谍牒褋喋|耋堞鲽垤疊蹀諜瓞疂昳詄咥峌絰艓胅嵽蜨畳疉眣镻苵跮")
    ("ding" "定顶丁订盯鼎钉锭叮|町腚頂啶碇酊玎仃釘訂疔耵萣掟錠帄嵿顁椗虰聢飣靪薡碠甼")
    ("diu" "丢|丟铥颩銩")
    ("dong" "动懂东洞董冬栋冻|咚氡東動侗夂峒硐恫胴棟垌鸫凍岽戙胨崠姛蝀働諌涷苳挏嬞迵蕫鮗揰菄埬鼕鶇霘駧鶫")
    ("dou" "都斗豆逗抖兜窦陡痘蔸|脰鬥钭枓篼闘蚪竇鈄荳鬪读郖唗酘浢餖梪瞗")
    ("du" "读度都毒杜独赌堵渡肚督嘟镀睹笃妒犊渎|讀蠹獨顿殰牍賭牘篤椟芏涜黩読鍍秺髑瀆覩妬犢帾蝳櫝讟詫蠧贕韥皾韣裻黷醏韇錖")
    ("duan" "段短断端锻缎椴煅|斷鍛緞偳簖葮毈腶籪媏躖碫")
    ("dui" "对队堆對兑|碓隊対敦怼兌镦憝搥懟濧薱譈瀩鴭痽祋頧")
    ("dun" "吨顿盾炖蹲敦墩钝遁盹|趸囤沌惇頓鐓礅伅噸燉砘潡楯不鈍遯躉镦撉壿驐")
    ("duo" "多躲夺朵堕剁哆铎跺踱舵垛剟惰|掇哚敓埵咄柁奪墮朶驮躱沲裰度墯跢鐸錞杕柮陊剫痑嚲敪奲趓嶞毲綞鈬椯鮵鬌鵽")
    ("e" "额俄饿呃恶哦厄诶鹅鄂娥莪蛾扼峨噩鳄|屙丨萼颚讹峩遏愕腭锷谔鍔枙惡皒轭涐婀餓垩阿額鹗欸锇噁鵝砵苊訛顎囮搹迗娾珴悪阨崿鱷睋諤譌鵞頞咢軛堮遻砐廅堊鑩蝁峉鰐鶚歞軶匎餩齶蚅蕚砨鵈櫮豟")
    ("ei" "|诶")
    ("en" "恩嗯|唔摁蒽奀峎")
    ("eng" "|鞥")
    ("er" "而二儿尔耳贰饵|迩弍兒洱珥铒爾鸸洏栭貳侕餌鲕佴鉺邇弐毦陑咡貮粫荋刵薾栮胹輀峏鴯駬鮞轜衈")
    ("fa" "发法伐罚阀乏發筏|珐髮垡発罰髪砝閥琺沷醗瞂罸疺藅")
    ("fan" "饭反烦翻凡范返犯番泛繁樊帆贩梵|藩钒蕃幡攵矾勫飯畈犭煩璠蘩燔範墦辺販仮柉汎氾蹯繙旛薠瀿籵笵轓軓膰礬奿釩杋鐇飜瀪払軬蠜笲羳嬏舩旙颿橎滼鱕鷭")
    ("fang" "放方房防芳坊仿访纺舫妨|枋昉肪鲂彷倣訪钫紡邡鈁昞魴瓬淓錺髣鶭")
    ("fei" "非飞费肥菲废肺妃匪斐绯沸翡霏吠扉啡|飛鐨腓诽費痱俷淝蜚芾狒镄篚廢悱榧棐緋櫠馡怫癈剕婓鲱誹屝暃厞騑廃蜰裶騛奜蟦曊襏鯡濷餥昲疿胇鼣")
    ("fen" "分份粉芬粪坟奋酚愤纷焚汾忿氛鼢瀵吩|濆鲼偾玢墳蚡棻棼紛昐糞憤蒶奮枌僨蕡妢雰鈖羵坋黺豶翂轒魵弅膹幩橨梤鳻羒鼖炃黂饙竕鐼秎")
    ("feng" "风封峰疯冯凤丰锋枫逢缝奉蜂烽|沣讽風俸砜鳳葑瘋賵酆楓豐鋒馮偑崶峯縫諷灃唪檒渢犎覂堸妦桻猦麷凬捀甮焨艂飌")
    ("fiao" "|覅")
    ("fo" "佛|仏坲")
    ("fou" "否|缶紑缹鴀")
    ("fu" "副付服福富负夫复赴府父附符傅扶浮幅腹伏敷赋弗甫妇覆辅抚腐拂氟芙肤斧阜俯缚孚馥佛釜孵腑辐俘蝠凫苻涪祓脯|麸復呋頫讣褔冨黻滏芣罘咐鍑赙拊輔黼洑賦匐绂绋負蝮茀驸鲋跗鵩桴茯撫袱趺婦幞諨綍伕鄜膚稃複郛縛砩菔偩姇艴祔帗芾簠枹駙蚨蜉鈇冹偪怫袚紱輻紨彿箙鳆枎蝜莩柎泭衭垘榑咈緮荂刜虙砆麩坿訃琈綒輹蚹岪鮒椨萯鳧柭葍怤笰紼罦萉賻釡蚥澓蕧髴弣烰鰒蜅郙踾玸荴韍鶝柫鳬艀邞嬔蛗畉糐翇鴔")
    ("ga" "噶嘎咖|伽尬尕轧旮钆夹尜")
    ("gai" "该改盖钙概丐乢該|蓋溉赅垓陔芥鈣祴荄葢戤瓂槪賅漑豥峐賌")
    ("gan" "干甘感敢赶肝杆赣竿苷乾柑|咁秆淦擀幹绀橄酐矸趕疳尴坩皯泔詌桿旰玕澉紺簳贛稈笴凎筸骭玵尷盰灨漧")
    ("gang" "刚港钢岗缸纲冈杠肛罡|戆剛崗岡鋼扛綱槓釭棡筻堽犅堈疘")
    ("gao" "高搞告稿膏糕皋镐锆郜羔|篙诰杲睾缟槁藁睪髙檺槔誥皐槹縞櫜韟祰鼛鋯勂筶鷎")
    ("ge" "个各格歌哥隔割阁葛戈咯搁革個铬鸽镉舸嗝膈戓硌疙圪胳閣|鬲彁骼纥颌箇滆謌哿搿擱盖佮虼閤袼蛤獦鉻仡鴿轕塥滒鎘觡合韐吤愅鮯杚鞷鴐騔")
    ("gei" "给|給")
    ("gen" "跟根|艮哏亘茛揯")
    ("geng" "更庚耿耕梗羹哽|埂鲠赓绠颈綆亙畊浭挭緪賡鯁堩郠峺骾菮鶊")
    ("gong" "共工公供宫功攻弓龚拱恭贡巩汞躬宮|肱觥珙蚣貢栱幊塨鞏红龔拲輁匑熕")
    ("gou" "够狗购沟勾钩构苟垢夠|媾诟篝枸觏彀岣缑遘姤溝鉤佝笱緱鞲購芶袧鈎構簼冓搆耇雊覯韝耉玽句")
    ("gu" "股故古顾谷骨鼓孤固姑估雇沽菇蛊箍辜钴呱咕|瞽毂崮菰臌牯鹄顧罛痼诂锢觚蛄汩轱榖穀酤罟箛棝鹘鲴鸪蠱梏贾稒鈷嘏僱牿羖詁堌盬榾愲柧轂泒凅皷峠軱尳嫴啒蓇鴣錮蛌瀔硲鮕唃薣濲橭逧")
    ("gua" "挂瓜刮卦寡呱剐褂胍栝掛|诖鸹罣剮苽劀緺騧括詿颪鴰颳")
    ("guai" "乖怪拐|夬恠掴柺枴罫")
    ("guan" "管关官观馆灌冠罐惯贯棺|莞倌關祼觀掼館鹳琯瓘纶鳏鏆涫盥観矜慣貫瘝摜閞悹錧鑵舘筦蒄悺毌爟鸛樌鱹鱞痯")
    ("guang" "光广逛咣|廣桄胱犷洸広侊垙俇撗珖銧茪欟烡炚")
    ("gui" "贵鬼归桂规龟柜硅跪轨圭闺癸诡瑰|珪妫貴櫃桧佹歸鲑刿簋炅皈匦晷規龜垝姽庋槻湀槼宄劌亀鳜刽邽瞡軌詭袿帰媯摫庪閨匭劊槶厬撌氿蟡觤椢鳺禬蛫祪筀茥猤")
    ("gun" "滚棍|辊衮鲧丨滾绲棞磙惃輥袞鯀璭蔉")
    ("guo" "过国果郭锅裹過|掴國囗虢椁鍋蝈帼呙粿聒聝涡淉埚幗菓馘惈崞蜾彉鐹猓摑瘑墎槨圀嘓褁慖蔮漍簂")
    ("ha" "哈蛤虾|铪")
    ("hai" "还海害嗨咳孩還亥|骇嘿氦骸醢嗐駭侅胲烸絯塰駴餀")
    ("han" "汗喊含寒韩汉涵函焊翰旱憨瀚罕撼悍憾晗|酣菡捍琀邯漢焓韓鼾颔邗蚶顸扞犴晥榦撖阚螒頇唅豃閈釬暵凾虷谽哻蔊魽鋎頷銲鋡駻涆蜬顄睅鶾嵅甝鬫梒蜭雗莟")
    ("hang" "行航杭夯吭巷|绗沆垳斻颃迒苀貥笐魧蚢絎頏")
    ("hao" "好号浩豪耗郝昊皓毫灏|嚎蒿濠蚝號壕颢镐嗥薅貉鎬嚆滈淏灝皜皞澔顥蠔晧暠哠鄗譹籇薃昦竓鰝")
    ("he" "和喝何合河呵核盒贺荷鹤赫禾褐诃|壑颌阖涸爀嗬阂菏犵翮劾曷貉訶楁賀盍鶴鞨啝郃纥敆吓姀蚵佫粭挌闔翯鉌盉熆熇澕龢覈渮煂寉紇鶡魺閡靍齕峆靏籺篕餲鑉齃麧")
    ("hei" "黑嘿|嗨黒潶")
    ("hen" "很恨狠痕|鞎拫")
    ("heng" "横哼恒衡亨|珩蘅佷桁橫姮恆脝烆啈鑅胻鵆")
    ("hm" "|噷")
    ("hong" "红宏洪哄鸿虹弘轰泓烘|紅薨闳吽紘荭苰訇竑鴻鍧黉仜轟垬蕻魟愩鋐翃葒讧鉷浤澒澋汯灴渱訌玒嗊谹谼吰彋竤鈜軣嚝閎霐霟妅鞃輷耾黌羾焢篊宖")
    ("hou" "后厚後侯吼候猴|喉鲎骺篌逅堠垕瘊齁洉糇詬葔腄郈帿鍭翭茩鯸鄇鱟餱")
    ("hu" "胡户湖虎呼沪乎互护忽糊壶狐弧唬寣弖扈斛鍙祜|琥许浒笏瑚戏蝴葫瓠滹鹄和惚怙槲煳護戸戽壺戶唿觳綔乕鹘囫鹕嫭俿烀滬嫮猢枑縠醐岵鹱鄠冴粐核虖冱滸轷鵠淴鰗淈縎箎沍熩垀鬍楜抇瀫淲槴匢雽鯱曶媩歑螜昈昒鶻頀焀餬韄壷嘝鶦蔰婟鶘衚魱")
    ("hua" "话花化画华划滑桦哗骅|話畫華嬅铧樺猾畵錵埖劃糀椛槬砉嘩嫿螖搳崋譁杹吪繣驊摦諙魤澅硴鷨鏵蘤")
    ("huai" "坏怀淮槐踝徊|壞懷壊懐划褢蘾櫰褱蘹")
    ("huan" "换还环患欢幻缓唤焕桓浣寰|宦換涣奂鬟獾洹嬛豢痪歡郇環缳擐圜喚驩鲩煥逭緩漶萑锾讙轘歓澣懽雚貆睆潅渙澴奐瘓峘豩荁犿鍰鴅繯豲嚾瑍闤羦攌肒鯇瞣鰀雈")
    ("huang" "黄晃皇慌荒煌谎凰恍簧磺璜黃惶蝗|篁幌徨湟肓潢鍠愰隍遑偟怳崲滉癀皝喤晄謊汻蟥鳇巟媓穔獚兤熿艎諻榥衁鐄鰉炾堭趪楻鎤餭葟奛騜鷬")
    ("hui" "会回灰辉汇惠慧毁挥會晖绘徽悔蕙卉秽晦讳恢烩诲|囘荟喙贿茴彗拻恚珲洄麾桧輝隳蛔恵咴繪虺絵毀溃迴匯揮诙廻蟪佪諱徊缋穢暉誨彙恛撝薈槥鐬徻洃檜襘燴詼賄嘒輠燬翬顪篲硊毇譓橞螝圚潓薉烠噅蔧闠譿獩豗禈痐憓蘳芔暳譭檓楎瞺繢翽鰴隓餯藱檅")
    ("hun" "混昏魂婚荤浑|溷馄棔阍閽诨掍惛珲倱渾圂諢琿涽慁緄觨睯餛繉睧鼲")
    ("huo" "或活货火获霍祸惑伙豁和|灬镬嚯佸獲鈥貨嚄禍藿钬豰夥耠蠖捇漷吙鑊攉劐湱锪濩秮臛姡咊謋膕曤嗀矐騞癨穫沎檴趏眓瀖")
    ("ji" "及级即几机既急集记极鸡寄基继吉计挤季剂暨纪己积籍技击姬济肌忌祭疾激迹辑际冀叽寂妓脊饥霁戟骥藉绩汲棘旡髻矶彑蓟亼畸伎箕|丌唧讥畿稽系丮偈羁記機嫉極稷缉嵇幾鲫亟計悸玑屐級赍銈觊殛期笈紀其咭麂嵴奇戢楫剤跻雞繼佶圾给鐖骑笄瘠劑剞喞擠芨洎勣漈積撃績芰輯櫅乩擊掎犱齑濟革伋虮岌罽荠吇墼姞鶏蕺跡岋忣際偮茍蠀彶潗緝茤磯鲚诘譏跽卽嘰犄饑継蒺妀誋旣暩湒惎繋羈薺薊飢漃泲驥諅徛穄鷄蕀虀覿枅塈鶺霽諔羇璣皀叝躋蹟覊鞿齎蹐觙鮆撠覬揤覘臮簊踖膌鸄堲簎蘻隮齌谻嶯禝鱭裚瀱鰶槉穊齏鏶懻痵庴轚檕蘮錤癠銡霵刉癪鑇耭畟襋鱀韲螏鰿穖鷑鵋橶塉鯚")
    ("jia" "家加假价架甲佳夹嘉嫁贾驾钾迦茄颊稼痂|珈葭荚枷伽戛镓岬戞笳鎵傢铗郏夾價瘕駕賈浃胛袈恝榎幏跏蛱嘏斝頰豭筴泇鉀莢耞糘頬鋏貑犌婽郟毠椵抸猳梜扴鵊玾檟蛺鴶麚")
    ("jian" "见间建件剑键兼减贱健捡剪简箭检肩尖渐坚煎监舰拣奸碱鉴溅荐涧歼茧俭谏践笺見|柬艰牋睑戋翦蹇間腱僭劍菅缄熸槛簡硷饯幵锏鑳賤繝犍囝戬谫蒹湔剣鍵漸姦枧堅缣撿鞯裥踺減鑑謇笕搛儉牮殱偂檢瞼艦濺毽趼殲倹楗洊鹣薦俴鑒剱劒挸検揀彅瑊澗賎監箋鲣浅墹踐湕繭艱鹼樫磵惤鞬劗戔戩緘鋻瞷劔縑瀸諓籛餞礛譾熞珔菺襉椷蕑櫼鰹藆襺螹瑐鵳糋釼鹸鬋虃鰎韉轞猏寋擶葌麉")
    ("jiang" "将讲江奖降姜蒋酱浆將僵疆匠绛桨講|犟獎缰丬蔣洚殭耩豇弶茳醬礓薑絳傋漿糨槳畺櫤奨虹强謽奬醤橿膙螿韁顜袶嵹杢翞")
    ("jiao" "叫交教较脚角胶焦娇觉浇搅缴嚼矫绞椒郊轿骄窖礁蕉姣蛟饺皎铰剿狡跤校|滘較酵鲛腳侥鐎醮徼佼攪敎茭悎繳湫笅儌鹪挢噍峤敫膠憍嬌僬撹艽澆驕灚筊絞皦僥獥矯劋斠勦嘂簥挍轎爝珓膲憿摷鵁皭撟鉸鮫餃曒釂煍蟭樔譥嶕敿鷮穚嬓趭嘄纐鷦鵤鱎")
    ("jie" "接借解节姐街界结杰皆届戒洁介截捷揭劫阶婕嗟藉湝竭尐孑|喈桀诫芥睫颉羯诘卩桔結蚧讦傑節秸劼玠疖偈疥碣紒屆拮堺唶潔階崨家掲曁誡骱岕倢檞詰鲒訐滐褯耤楬岊狤癤妎袺楷蝍衱阂痎犗迼砎刧桝趌楶价頡昅嵥跲幯鉣蛶鞊踕畍蝔鍻鞂蠽巀榤鶛媎")
    ("jin" "进金近仅尽紧今劲斤锦禁晋津筋浸谨靳瑾巾噤襟矜進堇槿|盡缙衿烬觐瑨緊僅妗荩勁錦晉殣煡謹枃馑卺賮溍寖赆菫廑祲僸儘笒紟侭巹搢嚍璶燼嬧璡蓳觔藎縉覲贐壗珒惍堻饉濜榗")
    ("jing" "经静竟精景净京井惊镜敬晶警颈境竞靖径劲茎荆菁婧鲸睛|泾旌璟殑經胫兢靜迳粳阱肼腈痉憬驚儆鏡淨刭靓弪競瀞経頸蟼獍亰丼徑凈倞荊弳莖暻鯨浄劤汫橸逕鶄旍鼱穽憼涇痙婛幜獷桱竸麠竫頚璥剄鵛鶁")
    ("jiong" "囧迥炯窘|冂冏煚扃炅熲臦浻泂烱褧坰駉絅臩燛逈昋")
    ("jiu" "就酒久旧九救揪玖究舅纠鸠灸咎臼鹫韭|僦啾厩舊疚赳桕柩阄鳩鬏糾鷲殧勼韮糺萛廄氿慦杦揫柾廐廏鬮朻麔鯦")
    ("ju" "据局距句居具巨剧聚举菊俱拒矩锯鞠惧橘桔驹拘炬狙钜掬|據焗讵踞遽沮裾劇姖苴椐莒琚疽雎榘咀舉锔倨苣閰屦倶袓榉拠椈飓趄柜鞫洰龃窭秬崌枸醵踽且筥懼鉅粔詎挶俥鋸泃埧岠侷駒挙輂罝车踘虡擧椇匊懅鵙岨蚷犋娵屨湨壉駏犑櫸淗蒟鶪駶澽豦襷涺颶狊蜛痀梮欅耟躆陱焣鶋腒驧蘜郹鋦鵴")
    ("juan" "卷捐娟倦绢涓鹃|眷圈隽劵镌狷鄄蠲捲桊鐫絹锩罥雋羂鵑朘呟睊帣睠鋑淃臇菤裐絭錈")
    ("jue" "觉绝决角掘诀爵珏倔厥|撅孓嚼亅廴噘蕨攫崛谲覺蹶絕抉玦傕橛噱矍決镢桷覚獗訣劂脚赽鷢絶憰钁觖駃蕝趉鐍芵爝譎玨鴃殌玃虳觼屩臄刔瘚貜镼鱖彏趹嶡鈌蟨戄")
    ("jun" "均军君俊菌郡钧骏峻筠隽|珺竣浚軍捃鈞鍕寯駿龟箟畯麇儁皲埈莙皹晙鮶皸餕焌燇蔨鵔鵘桾袀蚐呁蜠碅")
    ("ka" "卡喀|咖咔佧咯垰胩鉲擖裃")
    ("kai" "开凯楷恺開铠揩慨|锴剀蒈凱忾垲暟锎欬鍇闓愷鎧剴颽烗輆勓塏鎎")
    ("kan" "看砍坎侃刊堪勘|阚槛龛瞰磡丬戡嵌竷矙顑莰崁墈檻衎栞轗")
    ("kang" "抗康扛炕亢糠慷|鈧伉钪闶摃囥犺鏮邟漮鱇嫝匟閌")
    ("kao" "靠考烤拷尻铐|栲犒洘攷銬薧稾")
    ("ke" "可课克科客刻壳颗柯棵渴磕咳珂苛恪嗑坷髁轲颏|缂蝌錒窠氪課峇敤岢瞌顆疴稞溘骒钶蚵鈳剋牁锞榼砢匼痾軻悈渇龕頦鉿濭堁搕磆毼騍薖萪嵙趷樖犐緙嵑翗嶱")
    ("kei" "|尅剋勀")
    ("ken" "肯啃垦恳|裉懇龈墾掯錹")
    ("keng" "坑吭|铿脛鍞鏗阬誙牼銵硻")
    ("kong" "空孔控恐|倥箜崆悾鞚硿錓")
    ("kou" "口扣抠寇叩|蔻眍筘芤彄冦釦摳瞉滱怐鷇簆")
    ("ku" "哭库苦酷裤枯窟|堀刳绔庫骷褲喾楛矻袴朏搰瘔嚳跍捁桍胐狜")
    ("kua" "跨夸垮挎胯|侉誇姱骻錁銙絓舿")
    ("kuai" "快块筷侩|蒯会脍哙塊浍郐儈狯鱠澮鄶璯膾獪圦廥旝")
    ("kuan" "款宽髋|寛寬窾梡髖")
    ("kuang" "狂矿框况匡筐旷圹邝眶诳哐诓|曠夼劻贶況纊誑纩狅鵟壙洭礦鄺丱鑛矌爌誆絖恇穬鉱懭貺軦軠絋昿筺砿")
    ("kui" "亏奎葵魁窥盔溃愧馈|逵夔揆匮勹喹樻岿戣蒉虧潰蝰馗聩篑傀愦喟媿睽悝櫆匱窺隗暌煃刲跬饋蕢聧騤卼憒聵蹞頍嘳楏躨闚顝餽簣頄鐀嬇欳鍷蘬楑鄈藈頯")
    ("kun" "困坤昆捆|琨鲲锟醌褌閫焜崑睏悃髡阃晜綑壼梱鰥鶤臗稛騉菎鯤豤裍錕涃猑硱")
    ("kuo" "扩阔括廓闊|擴蛞萿拡濶适懖筈鞹葀霩韕鬠")
    ("la" "啦拉喇辣蜡腊剌落垃邋|砬菈瘌旯蠟臘溂鬎鞡臈楋柆翋藞蝋鑞揧")
    ("lai" "来赖莱來濑睐癞|徕赉籁涞賴唻瀬铼瀨萊崃棶騋癩頼崍徠籟錸淶睞娕藾箂誺庲鯠賚鶆")
    ("lan" "蓝烂兰懒栏岚拦揽篮滥览澜阑缆榄|谰藍蘭斓镧爛繿懶嵐婪攬褴諫灆籃漤欄儖覧濫攔壈瀾罱覽嬾欖灠闌籣纜暕躝嚂灡襴欗譋爁襤浨斕擥醂糷燗讕爦鑭")
    ("lang" "狼浪郎朗廊琅啷榔郞螂鎯|阆莨埌崀閬锒烺塱蒗稂瑯誏羮硠鋃桹筤欴朖")
    ("lao" "老捞劳牢佬烙涝唠姥痨酪铑落醪嫪崂|勞咾鐒栳撈耢簩僗潦荖労蛯络铹恅銠橑澇癆嘮鮱浶軂橯狫顟嶗")
    ("le" "了乐勒叻仂肋|樂楽泐牞鳓鰳竻氻砳阞")
    ("lei" "类累雷泪磊蕾嘞垒勒镭肋擂|類羸淚耒酹銇诔涙纍鑸缧儡罍嫘壘畾藟檑郲灅磥礌纇蔂絫縲塁礧鐳誄樏癗蘱蘲瓃讄虆轠鸓櫐礨蠝瘣壨禷頛")
    ("leng" "冷楞愣|棱塄稜崚堎睖薐踜")
    ("li" "里李离力理立利丽例黎礼哩粒莉梨历厉沥栗厘吏励犁俐裡荔裏笠锂骊隶狸傈璃|鲤篱俪喱郦痢戾砺砾漓藜澧離莅琍俚溧禮罹蠡刂麗呖唳鹂醴曞唎栎枥蛎娌詈疬逦蓠鬲褵缡坜欐豊苈雳鳢疠悧暦猁勵歷黧厤歴粝儷隸釐浬厲嫠悷曆蜊劙籬涖篥轹瀝慄磿儮瓅苙蒞瑮剺栵鯉瓥嚦栃鲡醨濿孋扐犂謧灕礪樆鋰檪砅蘺蠣縭驪朸粴轢櫪癘讈跞癧岦廲蠫搮茘盭娳赲屴菞刕隷秝蔾鱧鴗邐鑗蜧壢欚靋礰峛蚸漦禲鬁犡轣藶蠇鱺糲筣鵹糎靂孷麜鯏竰鱱鷅塛鸝鯬蒚")
    ("lia" "俩|倆")
    ("lian" "连练脸联恋莲链炼帘怜廉敛連|濂涟琏鏈殮镰殓臉戀潋鍊楝鲢蓮奁練聯蠊堜煉斂湅臁鐮簾憐槤裢鎌裣縺蔹僆漣聨璉歛薕錬嗹謰翴鬑磏鰊奩浰襝匳瀲覝鰱摙褳澰鄻蹥萰羷嬚")
    ("liang" "两量亮梁良凉辆靓粮俩晾谅粱|兩椋靚樑魉涼悢踉両諒糧喨俍倞輛墚湸裲駺緉輌簗鍄綡啢蜋魎輬")
    ("liao" "了聊料廖辽疗撩寮撂僚燎暸寥|蓼嘹缭潦獠憭镣鐐钌瞭尥鹩繚敹療遼釕樛嫽憀摎窷尞鄝窌膫蟧鷯膋蟟嵺豂炓轑簝镽飉屪嶚飂")
    ("lie" "列咧烈裂猎劣冽洌|鬣捩趔埒睙姴躐獵儠鴷埓颲櫑迾綟毟蛚茢猟擸鮤犣")
    ("lin" "林临琳淋霖邻磷麟拎鳞凛蔺|吝啉璘膦廪赁粼臨閵檩遴懔嶙辚疄箖鄰驎亃躏燐瞵潾鱗凜繗廩菻僯賃躪悋鏻惏躙懍轔隣藺橉顲翷蹸壣暽檁碄焛甐")
    ("ling" "另令领灵零凌玲岭陵铃龄菱〇翎伶绫泠苓羚聆呤靈棱|棂領瓴鈴蛉夌綾囹酃舲柃嶺齡淩霊鲮澪倰崚彾炩岺蕶霝笭姈軨齢皊琌詅爧醽鴒鯪欞蔆錂輘櫺裬砱婈昤蘦坽駖朎狑")
    ("liu" "刘留六流柳溜瘤硫陆遛琉榴浏|碌劉绺馏鎏熘骝旒蓅镏瑠蹓锍媹珋鹨嵧瀏鏐栁罶霤澑廇鰡懰餾騮鶹鎦畄嚠裗藰塯鷚綹飀璢蟉磟嬼飂雡麍")
    ("lo" "|咯")
    ("long" "龙隆弄笼拢聋陇垄珑龍|胧泷垅窿栊槞咙茏竜砻曨籠儱癃攏蠪瀧聾壟鑨哢巃瓏隴嚨櫳襱矓篢蠬鸗朧躘礱谾徿梇蘢豅靇鏧霳嶐篭")
    ("lou" "楼喽漏露搂娄瘘陋篓镂|樓蒌耧蝼嘍婁偻摟髅嵝廔僂瘺鏤瞜塿耬嶁螻艛窶熡鞻髏")
    ("lu" "路陆录鲁露卢炉鹿禄璐芦卤麓庐鹭噜颅虏潞掳戮撸泸橹碌漉绿赂渌逯鲈|錄鏀鸬陸嚧盧垆鐪魯甪氇舻辂簬祿爐胪辘蕗六栌嚕镥廬稑鈩擄簏虜枦轳蘆櫓彔菉騄籙僇濾摝琭醁盝鹵穋鷺滷睩擼廘賂顱臚淥挔鱸坴纑翏觻鑪鏕瀘氌磠艫蔍艪璷踛轆錴熝壚轤硉螰漊蓾勠淕罏玈籚塶蹗舮蠦鸕魲艣鯥膟鵱")
    ("luan" "乱卵栾鸾峦銮|亂滦挛孪娈欒鸞鑾脔攣巒灤羉臠孌孿圞奱曫癵")
    ("lue" "略掠|锊畧鋝")
    ("lun" "论轮伦纶仑抡沦|論綸倫輪崘囵崙惀侖淪稐棆掄圇睔錀蜦菕溣碖踚陯")
    ("luo" "罗落洛咯裸骆络萝螺囉摞锣珞箩骡|雒椤羅逻倮烙鏍欏镙蠃猡捋泺瘰荦漯蘿儸鑼猓欙脶絡茖駱纙峈籮犖皪礫儽邏攭臝詻鸁覶跞鮥蓏鱳腡騾攎剆玀鵅硌")
    ("lv" "率绿吕铝驴旅律屡氯履滤虑侣缕捋|闾綠褛呂垏寠榈屢慮繂閭驢絽偻縷膂嵂稆録侶鋁儢緑櫨梠褸葎勴簍謱藘膢慺櫚哷蔞瘻郘祣鑢鷜穭")
    ("m" "|呒嘸呣")
    ("ma" "吗嘛马妈骂码麻玛嗎抹馬么媽麽罵杩蟆蚂|碼瑪孖鎷犸傌嘜嬤痲犘摩禡螞痳鬕蟇鷌溤榪礣")
    ("mai" "买卖麦埋迈脉|劢唛霾買賣麥売脈荬邁勱霢嘪鷶")
    ("man" "慢满蛮曼漫瞒蔓螨熳幔鳗|滿蠻谩馒嫚缦鬘颟顢鏝姏墁镘埋僈縵瞞睌謾慲獌蘰矕鰻樠蟃屘饅鬗鞔")
    ("mang" "忙盲芒莽茫蟒|氓厖漭笀邙硭鋩牻硥汒駹蠎哤杗龒蘉娏痝蛖壾")
    ("mao" "毛猫冇冒茂帽茅矛貌贸卯锚|懋铆貓昴旄茆瑁峁髦耄牦袤泖蟊瞀氂秏蝥楙芼鄚眊鄮貿媢犛冐皃錨酕蓩鉚軞枆毷渵蝐鶜")
    ("me" "么|麽麼嚜")
    ("mei" "没每美梅妹煤眉酶枚媚霉媒玫镁沒魅昧寐|湄莓袂楣浼沬嵋脢媺毎鎂媄渼糜鹛煝郿眛镅苺楳猸禖黴瑂痗徾挴燘蘪躾栂腜蝞塺堳攗")
    ("men" "们门闷焖|們門扪満悗悶懑亹鞔暪钔菛鍆燜殙捫璊懣椚虋")
    ("meng" "梦猛蒙孟盟萌锰懵檬夢朦|勐濛虻蠓甍瞢礞艋蜢曚氓儚鼆矇艨懞幪萠鋂甿鄳罞庬錳饛蕄鄸氋鸏霥瓾")
    ("mi" "米迷密咪蜜秘谜弥觅眯靡糜醚|尓糸祢幂宓泌蘼谧弭芈汨嘧麋脒汩櫁冪尒謎彌縻覓敉瞇猕祕幎羋瀰謐穈冞蓂灖渳爢蔤蔝鼏覛榓麛幦漞峚銤滵醾樒羃葞獼蝆熐塓麊鸍")
    ("mian" "面免棉眠绵缅勉冕眄|婂沔腼麵娩俛緬綿湎丏喕偭媔鮸渑櫋麺矊愐緜矏蝒靦葂麪")
    ("miao" "秒苗妙庙喵瞄描淼渺缪邈藐缈|鹋眇杪廟嫹緲訬媌竗篎鱙")
    ("mie" "咩灭|乜蔑滅篾搣蠛懱衊幭薎鱴")
    ("min" "民敏闵闽珉抿|旻泯皿岷悯憫敃愍缗玟黾笢湣旼崏苠閔潣敯緡閩鳘僶暋黽罠鈱蠠錉琝怋刡痻簢")
    ("ming" "名明命鸣铭冥|茗溟螟暝瞑洺酩銘鳴姳掵詺眳蓂覭榠嫇鄍慏")
    ("miu" "缪谬|繆謬")
    ("mo" "莫摸魔末膜磨模墨抹摩默没沫陌漠馍茉摹麽谟銆蘑殁寞脉|蓦么嫫耱嬷鏌妺貘貊莈秣镆黙靺冒攠歿万謨麿絔眽粖瘼劘枺藦嗼驀纆袹糢暯狢瀎饃瞙蟔蛨塻絈爅髍嘿")
    ("mou" "某谋眸牟哞侔|謀鍪蛑缪洠鉾麰鴾")
    ("mu" "木母目亩穆墓姆慕牧幕暮沐募钼睦牡牟拇模|苜呒畝仫坶霂莯牳毪幙縸踇鉬茻獏毣凩萺鉧炑楘砪峔氁蚞鞪艒姥畆慔")
    ("n" "嗯唔|")
    ("na" "那拿哪纳娜呐钠捺衲|納拏肭雫镎靹鈉笝秅魶貀軜豽")
    ("nai" "乃奶耐奈|萘氖鼐柰倷艿迺褦佴廼渿孻釢耏錼")
    ("nan" "男难南喃楠|囡難腩囝柟赧蝻莮娚湳枏嫨諵暔妠戁婻遖萳抩揇")
    ("nang" "囊|囔馕曩涳攮擃嚢齉灢鬞")
    ("nao" "闹脑挠恼孬|瑙呶淖鬧铙腦脳垴猱悩婥嫐閙蛲硇惱臑夒撓蟯碙嶩碯鐃峱獿")
    ("ne" "呢哪呐|讷吶訥眲")
    ("nei" "内那內馁|哪餒氝腇")
    ("nen" "嫩|恁")
    ("neng" "能|螚")
    ("ng" "|嗯唔")
    ("ni" "你拟尼呢泥妳妮腻逆倪昵匿霓溺|袮睨铌旎坭児鲵怩伲嬭猊膩擬灄齯貎隬暱迡嫟苨柅晲惄檷麑縌薿誽婗馜抳郳鯢狔蜺眤鈮堄跜秜觬臡屔濔籾淣")
    ("nian" "年念粘廿捻黏碾蔫撵|拈唸卄辇辗鲇鲶埝姩撚哖鮎蹍輦跈鯰攆簐秊躎")
    ("niang" "娘酿|孃嬢釀醸")
    ("niao" "鸟尿嬲脲袅溺|鳥茑褭蔦嫋裊嬝樢")
    ("nie" "捏聂涅镍孽|乜颞啮嗫蘖蹑镊臬鑷鎳摰聶摄敜陧讘苶囓嚙齧躡櫱巕臲嵲峊踂孼蠥糱隉踙踗篞鑈嶭闑顳")
    ("nin" "您|拰")
    ("ning" "宁凝拧柠甯佞|咛寧狞苧泞寗侫儜擰聍檸寍嚀聹嬣薴獰濘鑏鸋")
    ("niu" "牛妞扭纽钮拗忸|狃鈕紐怓杻炄")
    ("nong" "弄农侬浓脓哝|濃農儂膿襛穠噥醲繷齈")
    ("nou" "|耨譨鎒羺")
    ("nu" "怒奴努弩驽胬|孥帑砮笯駑")
    ("nuan" "暖|奻渜餪")
    ("nue" "虐疟|瘧")
    ("nuo" "诺挪喏糯傩懦|諾锘搦娜儺梛懧糑袲逽橠")
    ("nv" "女|钕籹衄釹恧朒衂聏")
    ("o" "哦噢喔|嚄筽")
    ("ou" "偶欧藕呕鸥殴耦瓯|沤鏂区歐怄讴藲櫙嘔毆蕅鷗鴎甌漚熰吘慪腢")
    ("pa" "怕爬帕趴啪扒耙琶葩|掱杷帊筢钯袙鈀舥跁汃")
    ("pai" "拍派排牌哌湃徘|俳迫蒎棑簰犤鎃箄")
    ("pan" "盘潘判盼攀畔叛磐番|泮蟠胖爿丬盤袢牉媻槃幋襻籓拚蹒磻牓鞶跘溿頖褩詊眅沜蹣碆蒰縏坢瀊")
    ("pang" "胖旁庞滂逄乓彷嗙膀磅螃|尨雱耪龐汸徬夆舽")
    ("pao" "跑泡抛炮袍刨疱庖咆拋|脟狍匏褜炰嚗砲脬瓟萢麃垉鉋袌鞄皰奅蚫麭穮颮")
    ("pei" "陪配赔培佩裴呸|沛胚珮辔霈醅旆姵帔伂賠衃锫俖浿轡蓜柸茷琣裵陫毰怌")
    ("pen" "喷盆|噴湓衯呠翉歕葐翸")
    ("peng" "碰彭鹏捧朋棚蓬烹硼澎砰膨篷|嘭芃椪踫堋怦抨鵬弸蟛傰剻磞摓絣輣錋熢漰韸匉痭鬅搒軯篣髼憉恲閛鑝掽駍樥皏")
    ("pi" "皮批屁披脾劈匹癖坯辟疲痞丕啤毗僻|譬噼圮铍邳陂霹琵蜱嚭罴伾媲崥鼙鈹仳淠甓枇裨庀砒郫纰伓笓毘陴埤蚍貔紕疋睥澼闢毞鎞諀羆鈚憵蚾阰膍鴄錍蚽岯鈲駓粃猈稫狉鵧秠豼箆揊蠯銔礔鷿螷否髬魾銢")
    ("pian" "片篇骗偏便翩骈|谝騙扁胼楄蹁犏楩諞諚緶璸媥跰猵骿貵駢騈鶣")
    ("piao" "票飘漂朴嫖瞟瓢剽缥殍|飄嘌螵骠薸謤僄飃莩縹髟慓顠彯翲魒醥皫驫篻蔈旚犥")
    ("pie" "撇瞥|丿苤氕嫳潎暼覕")
    ("pin" "品拼频贫聘|嫔颦姘拚牝嬪蘋榀頻貧嚬玭矉顰砏驞礗")
    ("ping" "平凭评瓶屏萍坪苹娉乒|枰呯鲆憑評倗帡俜甁洴泙屛岼砯玶蓱頩軿鉼荓淜輧鮃缾蛢甹郱艵塀竮涄")
    ("po" "破坡颇婆泼迫魄巿泊珀|攴粕皤叵鄱陂钋頗泺搫潑櫇朴笸昢钷哱桲尃髆謈岥醱濼繁溌翍蒪岶猼馞釙鏺烞")
    ("pou" "剖|抔婄掊棓裒垺襃捊")
    ("pu" "普铺扑谱浦蒲朴噗瀑仆葡璞圃濮埔|溥曝莆菩脯堡蹼撲氆镨匍譜纀鋪樸舖僕鐠暴酺墣潽镤襆蒱抪舗鵏鯆痡駇烳獛鏷瞨")
    ("qi" "其起期气器七齐奇骑妻启旗企棋漆弃琪琦岂戚祁汽绮欺契泣祈砌祺淇柒崎栖乞岐麒脐|歧鳍凄畦亓骐杞沏耆氣迄圻嘁讫颀憩欹芪綦齊葺掑萁忔祇蛴桤汔蕲碛旂碁蹊啟棄騎槭気荠蟿蜞屺綺萋豈跂埼芑湇攲済啓倛悽玘騏俟斉棲棨唭騹亟稽碕湆娸鬐噐淒憇敧訖迉僛懠鰭盵臍棊郪婍禨慽蚚璂觭諆竒芞缉愒蚑扢毄呇慼鏚鼜躩榿鄿鬿藄纃栔疧褄朞緕咠肵桼鬾磎肐魌蟣捿邔焏緀磧釮濝籏鯕岓隑頎玂魕踑軝鵸罊稘蠐甈霋鶀艩麡鶈")
    ("qia" "掐恰洽卡|髂葜袷冾帢鞐鮚愘硈殎酠")
    ("qian" "钱前千签欠浅牵迁潜倩铅谦乾茜遣黔嵌纤钳仟歉骞|芊虔芡錢谴钎堑阡悭褰佥灊钤搴扦簽墘箝荨遷牽嗛缱淺愆慊靬謙掮蒨仱潛箞鉛銭槧傔肷汧刋椠揵岍鉗僉拑犍奷籤輤挳騫鈐唊棈鰜檶媊縴譴葥櫏歁繾岒韆鑯軡揃朁欿塹濳篏婜蕁騝篟顅雃馯籖鐱竏粁黚鑓騚攓蜸鶼攐鰬榩")
    ("qiang" "强抢枪墙腔呛|羌蔷羟強炝锵樯嫱搶唴戗牆镪戕槍嶈跄蜣彊嗆墻襁繈锖牄鎗矼瑲墏繦嬙漒鏹鏘斨檣薔鶬戧謒羥蹌蹡艢羻椌錆熗蘠")
    ("qiao" "桥敲巧乔瞧翘俏窍侨撬鞘樵悄跷谯峭愀锹|橇壳荞峤橋喬憔殼诮翹蟜墝噭礉墽劁硗僑鞒繑譙磽蹻燋潐竅趫蹺帩荍誚摮蕎鍬磝缲譑犞嫶嶠雀嘺鄡礄躈釥幧趬髜踍頝郻")
    ("qie" "且切妾窃茄怯|緁鍥惬锲箧挈郄鐑趄竊洯厒倢椄朅慊篋癿疌踥蛣蛪愜藒鯜伽")
    ("qin" "亲秦琴勤钦沁侵寝禽覃芹擒嗪衾噙|親芩溱揿笉撳寢寑瘽儭吣欽慬檎廑螓锓靲懃墐矜忴駸瀙唚蘄頜庈昑扲梫嶔澿櫬菳藽斳埁顉耹鋟蚙埐螼菣鈙鳹嶜坅雂肣")
    ("qing" "请清情轻青庆晴倾卿氢擎請氰顷|苘磬箐漀輕罄氫慶黥傾亲謦檠凊勍圊靑蜻淸鲭綮頃鑋靘渹碃掅郬樈廎硜葝擏")
    ("qiong" "穷琼穹|邛茕蛩窮跫瓊銎筇煢藭璚舼蛬惸藑憌瞏橩笻桏赹")
    ("qiu" "球求秋邱丘裘囚仇糗|泅酋虬遒楸逑鳅萩湫毬俅巯犰赇蚯銶龟蝤捄絿鼽璆崷坵殏莍逎訄賕緧鰍觩虯巰鰽煪朹蟗鞦觓趥媝紌恘梂唒釓蛷蠤穐蝵鰌釚鯄龝盚鶖鮂")
    ("qu" "去区取曲佢娶屈渠趋趣驱祛瞿蛆躯龋|衢區觑黢麴迲阒闃蘧璩嶇袪佉诎脥灈呿氍蕖紶朐劬蛐趨彡鼩詘岖鸲麹敺驅蠼軀癯磲臞覷鮈跼苣駆浀麮鐻趜欋趍胠翵螶鼁籧郥躣匷抾刞蟝軥匤絇鴝髷蠷竘焌鶌鱋菃駈阹淭葋齲坥斪")
    ("quan" "全权圈劝泉犬拳券荃|醛蜷铨犭诠佺绻颧權筌勸痊悛鬈巻棬圏権惓牷弮詮牶辁烇埢畎銓踡湶婘顴腃絟汱矔勧綣觠姾瑔輇蠸酄鐉椦犈齤虇縓楾巏駩韏")
    ("que" "却缺确雀卻阙瘸鹊|阕炔榷悫皵確埆闕闋礐愨塙殻鵲蒛毃硞碻礭躤蚗慤搉")
    ("qun" "群裙|夋囷逡麇羣箘麕宭峮")
    ("ran" "然染燃|冉髯苒蚺姌熯呥袡髥珃")
    ("rang" "让讓嚷壤瓤|攘穰禳譲瀼蘘勷壌懹獽穣躟爙鬤")
    ("rao" "绕饶扰桡娆|繞荛饒擾遶橈嬈犪襓隢")
    ("re" "热惹|熱喏")
    ("ren" "人任忍认仁刃韧壬|刄仞紝妊稔亻荏纫轫衽認葚仭饪姙韌屻芢腍牣涊軔栠扨袵紉綛銋荵訒靭肕飪靱鵀")
    ("reng" "仍扔|礽陾芿")
    ("ri" "日|鈤馹")
    ("rong" "荣容融蓉溶绒榕熔戎茸嵘冗榮蝾|肜瑢栄狨嫆傇鎔媶絨瀜毧褣軵嶸爃穃茙峵榵髶氄蠑羢烿駥")
    ("rou" "肉柔揉厹|鍒糅蹂鞣粈禸葇宍煣媃輮蝚楺騥鰇髳鶔莥韖")
    ("ru" "如入乳汝儒茹辱濡孺褥蠕嚅襦嬬|洳溽铷缛蓐侞嗕曘媷込薷銣筎帤袽擩挐鄏颥獳縟蕠醹鴽杁蒘鳰")
    ("ruan" "软|阮朊軟堧檽耎緛壖瓀蝡燸礝")
    ("rui" "瑞锐睿蕊芮|蕤緌叡蚋汭枘銳兊桵蕋橤蘂繠")
    ("run" "润闰|潤閏閠橍")
    ("ruo" "若弱|偌箬爇婼渃蒻鄀篛楉撋鶸鰯嵶")
    ("sa" "撒萨洒仨|卅飒薩灑摋颯脎靸挲馺攃隡")
    ("sai" "赛塞噻腮鳃|賽僿毢揌顋")
    ("san" "三散伞叁|彡氵傘糁繖馓毵帴鬖鏒毿糂糝閐")
    ("sang" "桑丧嗓|搡喪颡褬磉顙鎟桒")
    ("sao" "扫骚嫂搔臊瘙掃|騷缫埽鳋溞懆矂騒缲髞掻鐰鄵慅氉鱢")
    ("se" "色瑟涩塞|啬拺铯濇穑澀銫渋粣鉍譅嗇璱澁穡濏栜廧鏼轖飋")
    ("sen" "森|")
    ("seng" "僧|鬙")
    ("sha" "啥杀傻沙砂纱煞莎刹厦鲨|痧殺唦猀霎裟濈紗剎铩箑鯊唼歃乷杉繌翣喢硰挲菨萐蔱翜樧嗄")
    ("shai" "晒筛曬色|酾簁篩攦閷繺骰")
    ("shan" "山删闪善衫扇珊杉陕擅栅姗疝膳煽汕鳝缮跚单膻掸赡|苫骟搧讪蟮睒閃刪嬗樿剡芟彡钐墠鄯鐥潸笘禅僤敾纔単繕掞晱舢墡煔姍羶埏柵剼陝攙贍猭痁穇赸襂譱訕鱔灗閊圸蔪謆杣騸髟覢饍狦")
    ("shang" "上商伤尚赏殇裳熵|觞墒傷晌绱賞仩垧尙殤汤塲慯觴謪蠰鬺螪蔏恦")
    ("shao" "少烧稍邵绍勺哨梢韶捎芍劭|苕燒杓召蛸紹潲艄卲筲焼鞘弰旓髾玿輎蕱袑鮹")
    ("she" "设社射蛇舍摄舌涉佘奢赦赊慑|畲折麝歙攝設厍闍滠厙捨涻揲蠂舎渉賒懾韘猞蔎檨輋挕慴騇")
    ("shei" "谁|")
    ("shen" "神深沈身甚申肾伸审什慎渗谂婶砷参|珅绅燊哂屾莘呻蜃柛諗鰰審兟诜矧糁腎侁脤胂榊妽娠蔘幓椹嫀甡伔渖葚嬸淰綝棯侺槮滲堔訷紳瀋鯓愼抌詵葠氠讅瞫罧駪邥眒鰺覾峷曋祳鯵鋠籸")
    ("sheng" "生省声升胜盛圣剩绳晟笙聖牲|聲昇勝甥乘枡嵊眚泩偗剰陞繩湦賸渻憴鉎渑乗貹呏焺譝澠橳鼪曻鵿")
    ("shi" "是时事使市式试石十室师诗食史世实施视氏士湿失识饰始屎势适尸仕拾示時释似逝狮誓侍嗜驶蚀矢什拭虱噬匙恃柿礻弑|丗饣谥詩師實湜轼峙飾舐試豕視適莳識铈筮蓍釋寔殖褷忕実勢屍埘奭濕辻諟溡弒栻崼塒蝕炻鲺駛螫獅鲥諡贳簭祏酾咶溼遰鍉蒔湤飭釈恀榯蝨鉽鰣澨笶忯鰤葹鈰觢鼭絁鼫邿襫貰枾遾釃鮖溮篒鎩軾鳲榁竍襹餝揓鶳嘘烒")
    ("shou" "收手受首瘦守售兽寿授熟|収扌狩绶痩壽艏獸綬獣")
    ("shu" "书数树输属熟术舒鼠叔淑束疏署述竖俞蜀梳孰殊姝恕赎暑漱薯墅枢庶抒曙戍書|數澍蔬氀塾黍樹丨倏纾屬菽沭輸沐殳術秫紓鼡疋豎腧摅毹潻綀樞朮贖糬疎鉥婌杸橾癙陎璹鄃竪襡軗鏣攄虪踈襩裋怷跾焂鮛鵨鶐")
    ("shua" "刷耍|唰")
    ("shuai" "帅甩摔衰率蟀|帥")
    ("shuan" "栓拴涮|闩閂")
    ("shuang" "爽双霜|雙孀泷滝塽孇樉驦漺礵慡艭灀縔鷞")
    ("shui" "谁水睡税说|誰氵稅涗帨脽閖裞")
    ("shun" "顺舜瞬吮|巛順楯蕣橓輴瞚鬊")
    ("shuo" "说說硕朔烁数|铄槊搠妁蒴碩爍鎙")
    ("si" "死四思斯似司丝寺私撕肆巳嗣饲祀食|泗厮厶嘶纟俟伺锶驷姒汜涘絲耜笥兕俬価偲咝澌缌鸶洍蛳虒儩颸廝飼柶竢駟泀鼶緦凘媤楒貄蟴蕬梩禠覗蕼鉰肂禗榹罳螄鷥")
    ("song" "送宋松颂诵耸嵩怂讼|淞崧菘悚竦凇誦忪鎹鬆頌愯娀訟聳傱倯枩濍鍶漎硹慫駷棇憁蜙蘴嵷")
    ("sou" "搜艘叟馊嗖嗽|薮廋擞溲螋飕瞍嗾捜蒐锼醙藪籔櫢擻餿欶鄋鎪獀颾颼騪")
    ("su" "素苏速俗诉宿酥塑粟肃溯夙|蘇窣愫愬稣谡僳涑簌甦嗉蔌訴缩肅傃觫粛棴摵憟嫊遡餗樕蹜縤囌穌鋉驌玊洬膆謖泝蘓櫯藗鷫榡鱐")
    ("suan" "算酸蒜|狻匴筭痠")
    ("sui" "岁随虽遂碎穗隋髓绥夊|睢雖隧祟隨歲邃燧眭鐩挼穂濉鏸尿谇誶荽綏歳脺繐倠繀砕粋賥瀡埣髄襚縗娞穟璲浽禭陏荾滖繸哸檖旞毸鐆")
    ("sun" "孙损笋|隼荪榫孫飧損狲筍蓀潠喰蕵鎨搎槂猻薞")
    ("suo" "所锁索缩嗦唆莎梭琐娑蓑羧|鎖惢嗍傞挲桫縮睃葰唢鮻嗩摍瑣鎍靃簑溹趖魦鎈縒莏逤簔")
    ("ta" "他她它塔踏塌祂沓|牠榻蹋铊挞獭闼褟溻遢遝趿鳎撻拓漯咜撘荅逹搨鉈誻鞳禢嚃嗒濌闥獺鰨澾鞈毾涾榙鎉鞜闒錔")
    ("tai" "太台泰抬胎态钛苔肽|汰邰骀酞薹呔跆臺態鲐檯儓炱鈦擡咍鈶颱斄溙嬯坮燤箈籉鮐")
    ("tan" "谈弹探谭贪坛叹摊坦碳痰潭滩炭檀瘫毯昙钽|談澹坍覃郯袒湠彈傝貪弾攤倓嘆譚壇惔潬憳怹忐歎醓僋锬灘癱菼曇儃壜癉醰罈譠撣嘾埮餤嗿繵賧藫裧貚黮憛鉭舕婒顃榃暺罎")
    ("tang" "汤唐堂糖趟躺烫塘棠淌倘膛溏|镗湯搪樘瑭欓傥耥螳铴蹚醣帑燙鎲羰爣螗儻钂蝪惝煻摥踼鏜簜愓榶赯鎕漟矘蘯漡攩逿橖戃蓎嵣閶磄闛鐋薚鶶曭闣鼞")
    ("tao" "套逃陶涛讨桃淘掏韬滔夲|绦焘洮丶萄饕弢討祹啕濤鼗綯匋韜慆嫍檮梼迯幍搯槄燾絛騊醄縚叨鋾鞀駣蜪錭")
    ("te" "特忒忑|慝铽貣蟘鋱")
    ("tei" "忒|")
    ("teng" "疼腾藤滕|誊痋騰螣縢籐謄籘熥邆霯")
    ("ti" "提体题踢替梯剃蹄啼剔缇涕锑鍗屉體惕悌|倜題扌鹈俶醍嚏厗逖绨崹偍洟薙褆殢軆荑稊渧惿躰詆緹珶徥悐啑綈裼迖籊鶗騠鯷徲姼趧蝭揥楴戻嵜鶙屜鵜鷤瓋鬄磃謕蕛褅銻鷈")
    ("tian" "天田填添甜舔恬钿|忝阗畑殄腆掭倎畋畠湉佃搷屇悿晪甛緂沺舑婖菾琠窴鈿酟闐碵淟賟餂捵鴫磌痶顚靦鷆睼鷏")
    ("tiao" "条跳调挑眺苕|條調庣迢蜩佻窕粜龆儵朓祧笤髫鲦脁宨岧蓨誂糶鞗鯈覜蓚嬥咷絩趒鰷鎥朷芀窱祒齠")
    ("tie" "贴帖铁|貼萜鐵餮鐡僣呫鋨怗鉆揲惵蛈鴩驖")
    ("ting" "听挺停厅庭亭婷廷汀|艇霆烃聽梃葶蜓町閮铤脡廳莛侹珽綎聴渟庁筳諪廰珵聤娗艼桯榳烴濎楟頲鋌嵉烶蝏鼮圢")
    ("tong" "同通痛铜童桶统筒捅桐瞳彤|佟酮砼潼仝恸侗嗵僮偅統炵峒茼垌銅曈粡樋烔囲浵橦哃痌湩朣詷慟爞絧犝衕膧氃鮦狪鉖蓪餇")
    ("tou" "头投偷透|頭骰钭偸妵鍮蘣黈敨紏斢埱")
    ("tu" "图土吐涂兔突徒凸途屠秃荼|圖菟钍鍎塗堍図兎酴湥瑹莵禿捈瘏鋀腯葖稌蒤唋汢跿廜捸嵞駼涋梌峹鵚筡嶀鵌鼵鷵釷鶟鵵鷋")
    ("tuan" "团湍|鏄團疃抟彖団槫褖煓慱墥糰貒猯鷒鷻")
    ("tui" "退推腿褪忒颓蜕煺|俀騩頹魋蓷穨隤僓弚頽藬橔蹪怢駾")
    ("tun" "吞屯臀囤豚氽暾饨呑|褪焞魨庉坉畽軘蜳芚錪飩")
    ("tuo" "托拖脱拓陀妥坨驼驮砣沱唾|佗庹乇铊脫橐椭箨鸵柁柝侂鼍魄跎酡蟺馱託鮀侻駝飥駄騨嘽嫷紽跅橢驒莌楕鼉沰鴕毤碢袉籜毻岮堶魠")
    ("wa" "哇挖瓦娃蛙袜洼娲|佤唲腽襪漥窪嗢窊窐媧韎韈瓲膃溛")
    ("wai" "外歪崴|喎咼瀤")
    ("wan" "玩万完晚碗湾弯丸婉腕挽宛皖蔓绾顽烷|夘椀剜琬萬菀卍脘纨蜿婠鍐惋莞畹晼笂潫彎灣晩掔綄豌芄関頑倇鄤汍翫琓槾刓澫綰紈薍捥輓綩岏杤鋄睕忨抏捖")
    ("wang" "网王往忘望汪旺亡妄枉|罔網惘暀莣魍徃仼朢尪辋迋盳抂菵輞瀇")
    ("wei" "为未位喂味微伟维威魏胃卫委唯围韦薇伪尾谓惟為危炜玮蔚纬慰畏苇违巍尉渭萎|爲煨偎囗帷圩葳鍏痿桅帏潍猥娓謂隗偉洧闈寪圍嵬隈維逶衛暐鍡闱溦偽沩韪浘噲猬濊韋煟艉涠遗緯幃瑋梶诿崴違餵菋韡僞崣儰廆葦鲔撱蒍煒洈鮠頠湋壝痏軎蓶溈瞶霨蝟碨諉衞趡濰蘶蔿癓鮇徫鮪餧霺峗媦藯喡縅磑芛詴犚椲鄬鏏蝛蜲渨峞蜼踓讆磈覹愄覣褽瀢癐犩巋潿躗椳鰄韙罻骫烓濻瓗揋斖隇饖腲葨")
    ("wen" "问文温稳闻吻纹雯蚊搵汶瘟|問刎亠玟閺芠蕴炆聞紊溫閿紋穩璺脕阌闅妏顐瑥穏鰛呡絻馼忞呅塭魰殟豱抆歾桽鰮饂榲鳼鼤")
    ("weng" "翁瓮嗡|滃蓊甕蕹聬奣螉齆暡罋鶲瞈塕")
    ("wo" "我喔窝握卧沃硪涡倭渥蜗|肟斡偓幄臥挝龌堝窩濄莴仴涴瓁渦雘擭踠齷踒腛蝸萵猧焥撾婑濣捼瞃婐捰薶")
    ("wu" "无五唔吴物吾舞武屋误乌雾勿伍务午悟捂巫污呜毋戊邬無钨兀坞晤梧|芜吳诬摀侮忤妩婺鹜蜈仵骛屼庑寤焐於怃洖圬誤堥浯痦烏鼯芴霧務憮鋈嗚阢洿倵蕪橆汙誣潕譕珷杌禑沕亡鹉俉迕靰嫵呉粅躌牾鄔塢啎廡旿墲剭嵨郚騖膴莁玝霿扤碔幠蘁窏鎢鷡杇瞴趶鯃岉雺恶甒逜鵡茣錻螐珸鵐鶩矹鋘釫鴮齀")
    ("xi" "系西洗戏喜係细吸希溪锡息兮熙席惜稀习夕袭曦昔悉膝析奚玺硒隙熄腊嘻禧烯|汐栖犀嬉徙羲熹茜晰匸铣浠戲媳鎴矽細皙僖晞郗莃醯蜥窸觋莔淅唏檄翕牺舄豨橀繫熺屣悕蹊錫粞隰呬葸襲欷戯饩習郤螅蟋煕舾傒槢晳阋禊穸鑴樨菥歙瓕谿扱裼蓰卌瘜憙璽巂鸂鼷俙礂犠氥愾忥纚嶲盻碏潟枲惁諰蠵觿狶戱肸徯潝犧憘赩燨縰巇謵蓆虩睎郋覡嶍霫綌鬩銑鱚鈒覤蟢鄎咥摡焟恓暿凞酅徆譆渓鯑熂雟獡蹝餼貕釳鰓琋爔豯鰼恄飁黖驨蔇蒠廗蝷騱怬螇釸鵗葈闟榽衋蕮蜤騽桸緆欯屖鼰鼳橲漇")
    ("xia" "下夏吓瞎虾霞侠峡厦辖匣狭暇呷遐|瑕狎昰芐梺蝦鍜嚇黠罅俠祫硖柙唬珨狹峽徦圷轄廈煆舺諕烚鰕謑笚蕸浹欱陜硤螛谺赮縖魻鶷舝鏬閜碬颬騢")
    ("xian" "先线县现咁闲仙显嫌贤限鲜险咸弦献陷宪馅掀腺衔娴见纤羡冼酰涎舷祆線現藓痫霰蚬籼岘賢苋|癎铣縣閒暹锨憪顯険憲粯県鍌嫻跣跹閑獻蚿氙險鮮彡鹹鹇睍佡獮纖憸莶綫顕伭洗筅僩綅俔絃仚尠禒晛羨燹銜諴堿娊餡僊慳灦玁僴幰秈啣銛忺繊禰姺孅誸猃鏾溓蜆尟姭譀珗涀廯嫺筧韱豏峴壏蘚鶱盷赻譣撊陥獫鰔襳奾釤澖槏褼胘錎杴纎莧蘞埳攕顈羬癇蛝瀗躚馦屳鋧闞嘕毨櫶韅贒娹糮攇搟鷴烍鷳鼸")
    ("xiang" "想向像象相香项乡箱响祥湘翔巷享详镶厢襄橡|飨饷缃骧降芗庠鄉葙響項儴鲞瓨闀欀詳鑲蟓嚮姠珦郷瓖緗餉蠁饗啌廂萫襐纕驤曏鐌薌銗閧衖鄕膷饟忀鬨鱌晑鱶缿鯗")
    ("xiao" "小笑晓肖校萧消孝销效啸筱削箫霄潇宵硝枭逍骁嚣绡哮|哓傚咲曉蕭庨魈淆篠笹虓簫崤嘯蛸暁箾銷猇潚皛枵効洨啋呺毊橚睄綃譊瀟憢嘐鴞囂梟骹詨灱翛漻謼斅嘵縿窙謏恷恔嗃穘膮莦萷謞獢轇歊涍痟燆藃髇蟂郩虈蠨熽髐驍踃薂揱痚鷍")
    ("xie" "写些谢鞋邪斜携协蟹歇泻血卸泄屑挟蝎胁谐械偕燮懈榭寫|楔褉撷謝亵冩缬契解邂勰绁拹纈鮭躞獬廨薤瀉攜偰協瀣挾絜渫伳緳劦蠍脅澥愶滊瑎叶諧榍颉媟屧脇繲卨嶰揳僁灺褻屭觧躠擷襭熁觟垥恊蠏猲祄魼奊薢屓裌齛燲慀吤嗋蝢孈韰齥龤搚焎齘齂")
    ("xin" "新心信欣馨鑫辛芯锌薪|昕歆忻莘忄衅鈊鐔伈囟炘潃噺杺镡枔鋅撢焮舋寻馫廞惞庍盺釁妡橝鬵愖礥阠")
    ("xing" "行性型星姓醒兴形幸刑邢杏腥荇惺猩|煋硎擤興侀省饧倖洐悻陉荥垶婞狌陘涬哘瑆騂巠鈃鉶坙鋞娙裄莕箵餳觲蛵")
    ("xiong" "熊兄雄胸凶匈夐|芎汹兇敻洶詗赨恟忷哅")
    ("xiu" "修秀休绣袖羞嗅锈溴宿朽|岫咻琇脩脙貅綉庥馐繡髹珛繍鸺茠鏽嚊臭滫烋銝櫹鏥鎀樇苬臹螑鵂饈鮴糔")
    ("xu" "需须徐许虚续旭序恤嘘叙蓄绪絮胥墟煦戌婿吁圩栩|須許畜勖诩顼盱虛呴續緒酗繻歔浒蓿敘訏続垿溆敍銊醑侐噓姁勗湑糈鬚砉洫慉掝諝欻謳卹魆嬃冔詡昫旴聟珝緰暊壻諿喣鑐蕦幁魖楈縃稰漵頊訹殈蚼胊鄦欨蓲藚窢驉緖烅蝑晇揟沀烼瞁")
    ("xuan" "选玄轩宣悬旋炫萱璇喧眩癣绚铉暄煊漩瑄選渲|泫烜煖儇楦谖軒鏇券玹禤懸县妶镟翾揎碹璿絢狟袨痃縼衒鉉蠉鞙諼鋗晅鐶癬嫙昡諠懁琄琁媗獧昍咺讂蜁揈蓒蝖贙轋愋駽鍹矎萲蔙愃")
    ("xue" "学血雪薛穴靴削|彐學谑鳕踅噱趐泶壆吷泬謔轌鱈膤樰觷怴泧岤澩鷽梋嶨袕艝斈燢疶蒆瞲狘")
    ("xun" "寻讯训熏薰勋巡逊循迅旬询荀巽驯汛洵浚殉浔徇埙蕈|鲟珣恂尋訓醺曛訊勳濬窨峋遜獯潯詢勲侚燂薫郇纁荨噀蟳葷噚眴勛馴鄩灥塤焄璕攳紃壎栒撏矄揗鱘燻襑咰愻蔒燖燅迿臐")
    ("ya" "呀丫压亚牙雅押鸭芽娅崖哑涯吖鸦圧|劜伢衙轧蚜亞垭氩桠讶崕氬亜壓掗琊痖啞鴨玡睚砑厓鐚迓岈猰犽揠埡呾椏婭疋鴉蕥訝姶齾堐輅唖庌錏厊襾圔輵穵磍圠孲聐齖")
    ("yan" "眼烟演言严燕盐岩沿颜炎艳研延妍彦雁验焉阎咽宴闫掩厌焰晏嫣淹衍砚焱堰檐阉|琰鄢円筵腌偃煙恹谚蜒滟閻奄魇俨閹湮谳酽郾胭阏晻顏芫厣兖鹽赝嬿挻饜顔嬮彥嚴験硏崦偐唁剡餍豔縯菸讠偣厭驗兗弇鼹艷罨龑菴綖巖艶塩褗喦硯铅洝嚥椼甗醃諺姸儼巘灩椻巌嵃顩揜醼埏簷厴讞厳沇鷃讌棪臙殷鴳娮鴈碞唌豜燄郔匽魘黶媕渰扊喭溎嵒嶮挩閆贗蝘釅淊裺漹鰋湺焔嵓壛牪鷰珚揅黭烻阽錟薟橪贋觾抁猒莚爓噞篶敥嬐酀齴驠虤礹壧曮隒鳱軅黫樮鶠黤楌騴萒孍躽齞狿鼴姲愝麙鳫鬳")
    ("yang" "样杨养阳羊洋扬痒氧央仰漾秧佯殃|恙楊炀鞅樣泱鍚養陽様疡徉垟鸯炴揚烊蛘暘怏卬佒癢崵潒昜敭羕瑒姎鍈崸坱颺瀁瘍煬眻婸鴦珜鸉抰歍軮雵岟禓懩紻鐊胦攁鉠")
    ("yao" "要药咬腰姚妖摇耀邀尧遥瑶窑幺曜爻谣舀夭钥吆杳肴|垚鹞侥藥傜鳐窈葽鑰喓徭繇偠愮猺崾搖媱薬珧遙窅瑤殽堯岆鴢疟謠祅么葯燿窯铫颻轺揺獟騕訞尭抭榣窔謡约嶢詏窰殀榚撽蕘靿曣顤摿噛銚嗂艞陶恌穾覞玅溔鰩軺驁鷂鷕苭眑袎烑筄宎餚柼")
    ("ye" "也页叶业夜野耶液爷冶椰烨晔噎曳|掖咽谒葉腋邺靥揶業頁爺铘邪熀鄴暍倻堨枒謁緤埜瓛拽燁殗靨澲殕窫痷嶪鍱楪曄鎑擫鵺瞱蠮擛漜鐷饁抴歋擨")
    ("yi" "一以已亿易亦伊意依衣义宜仪乙益医矣逸异艺翼译移怡尾壹疑毅忆倚议姨咦遗夷奕溢抑颐椅裔役邑蚁懿驿谊弋轶贻翊漪疫彝胰弈沂乂佚揖辷弌屹|羿咿诣潩翌熠翳義绎刈诒苡镱噫挹臆薏晹埸誒嶷迤槸猗圯铱艾悒缢儀譯怿饴镒旖呓燚億異钇峄瘗憶殪熼佾藝蟻醫荑遺鎰劓侇痍寲洩浥顗舣議褘黟癔肄拸墿蜴訳斁扆瀷衪俋駅誃儗詣钀偯貽彛泆勩誼頤崺繄枻眙佁簃錡齮彜廙埶裛昳鉯曵亄仡匜伿栘垼銥枍敼驛苅帟袘酏靉踦曀謚洢訑觺詒壱繹鶂嫕釔帠暆軼杙輗釶蓺歖扡劮禕宧畩懌鷁詑箷柂黓繶椸螘豷瑿殔寱毉浂紲珆絏飴迻靾嫛譺縊詍跇醷囈圛瘞熈峓謻掜貤狋熤鮨槷蘙戺澺沶蛜阣銕檹燱螔羛恞嗌瘱檍藙檥賹冝鏔搤欥蛦襼迆衵醳蛇桋膉郼匇轙唈羠嶧隿釴鐿艗萓霬鸃肊鯣鷾鷖贀焲芅跠艤饐耴媐鳦礒玴瓵耛黳陭顊嶬鷊稦熪齸燡")
    ("yin" "因引银音印阴饮尹隐淫殷吟瘾胤茵荫寅廴垠铟龈姻洇蚓|銀湚陰飲喑霪夂鄞訢愔隱氤茚垔窨伒噾吲堙崟狺蔭禋湮犾絪夤闉廕癮裀諲垽瘖粌誾釿婬傿靷隠嚚殥堷憖飮檃凐鈏韾銦蟫圁梀荶讔駰蘟硍鷣螾檭霒苂酳朄歅霠酓蔩趛猌輑濦慇欭齗蒑烎齦")
    ("ying" "应赢英硬影营迎鹰盈颖映莹樱瑛婴蝇莺瀛夃滢缨萦嬴萤郢颍應荧|楹璎膺茔瘿贏瑩蓥罂鹦潆穎櫻嘤營撄媵桜鷹渶柍嬰荥応灐俓蠅偀営瀯螢纓縈鶯煐暎瓔縄霙潁瀅嫈滎摬韺熒罃譻褮攖塋蛍覮謍籯濴瀴蝿頴鎣礯瀠蝧碤甖旲廮濚癭珱蠳攍鴬嚶韹蘡賏朠藀罌鱦巆甇梬鸚軈矨鶧")
    ("yo" "哟唷|喲")
    ("yong" "用永勇拥涌咏泳雍庸蛹佣甬俑|慵镛壅痈邕噰墉灉詠踊傛鳙埇饔槦湧臃恿擁傭怺鏞喁澭筩鄘踴雝嗈癰揘廱禜愑嫞鷛醟慂滽悀塎嵱鰫郺鯒")
    ("you" "有又由油游友右优幽尤忧幼犹邮佑悠呦诱铀釉酉疣柚|冘攸囿鼬尢侑祐猷宥瀀莜蚴铕遊優卣牖黝鱿猶莠斿憂莸蚰繇誘偤褎羑姷櫌纋懮狖銪峟蝤楢郵沋輶戭蝣泑槱苃迶訧麀庮銹怮蚘耰莤牰逌嚘怞浟秞鄾貁肬獶魷蕕蒏揂聈")
    ("yu" "与于鱼雨玉欲余语宇遇羽域愈预浴予於與御育逾渝喻郁裕瑜俞虞愚禹渔豫淤娱钰誉狱毓寓煜峪|馀榆昱瘀屿隅亐舆妤芋吁谕愉聿驭魚彧盂熨鹆迂欤庾腴語阈禺瑀萸谀顒鬻楀嵛牏觎鹬竽湡餘纡圉妪閾俣雩箊鈺娛踰畬悆棜狳燠嵎慾繘閼龉圄堣矞堉揄遹饫噳窳臾瘐褕舁尉偊譽預漁悇唹貐鬱伃諭輿窬蜮燏俁獄蝓潏棫伛淯敔祤禦瘉崳僪嶼儥邘傴堬蔚癒貍馭魊薁萭寙丿喁紆谷娯歟杅兪蓣媮籲玗栯諛謣釪旟灪醧扜喩楡礇陓袬衧歈挧嫗爩隩隃齵戫鴥錥麌砡峿澦鱮汚藇穻鱊璵覦鸆鋙蝺鸒轝罭荢緎翑淢盓睮蕍鋊獝蕷欝稢蟈艅鷸鵒菸羭蘛澞鄅燰硢蓹噊蒮蘌歶貗齬鰅篽礜斞螸頨籅飫輍畭鯲鳿驈楰鴪鮽桙斔饇雓礖軉稶")
    ("yuan" "元远原源员园院愿圆袁缘苑怨媛冤渊援猿垣沅鸢鸳塬|遠辕緣願瑗爰垸鼋圓園芫掾員圜橼棩淵嫄噮螈褑妴箢妧鎱眢薳惌縁媴湲悁蒝蚖杬蜎鵷灁轅渕駌寃謜鳶笎櫞輐夗薗鴛裷禐羱楥蝯騵葾獂鋺蝝肙嬽邍鼘黿榞蒬溒裫榬鶢邧")
    ("yue" "月越约曰岳悦粤跃阅乐说|玥栎钺約瀹説樾哕閲龠刖閱悅钥箹粵籥躍鈅噦嶽趯軏鉞櫟爚蛻戉扚擽鸑臒鋭鑠蚎矱礿躒蘥禴焆鸙黦抈髺龥")
    ("yun" "晕云运韵芸孕允匀蕴昀雲耘|筠陨熨韫愠恽殒酝枟運郧媼氲鋆賱韻暈郓伝纭氳贇煇勻沄蘊褞澐狁涒緷醞殞餫頵紜妘蕓慍隕繧薀篔玧韞轀縕熅奫鄆馻畇惲荺抎橒鄖熉馧蜵溳眃蝹鈗霣縜阭员齫韗")
    ("za" "咋砸杂匝扎咂|雜拶雑噈磼鉔雥襍")
    ("zai" "在再载仔宰哉栽灾崽|甾載災賳渽")
    ("zan" "咱赞暂攒|讚簪瓒昝錾趱偺贊暫瓚儹拶灒喒鐕糌讃賛鏨蹔囋臢噆寁禶饡酇")
    ("zang" "脏藏葬臧赃髒|蔵驵奘牂臟臓賍贓弉")
    ("zao" "早造遭澡糟燥灶枣藻噪皂凿躁棗|蚤唣慥皁璪璅繅傮煰梍譟竈簉繰蹧喿趮竃")
    ("ze" "则泽责择則|仄啧沢澤咋赜帻崱昃幘厠擇責舴箦迮伬侧択蘀謮嘖賾樍稄庂捑襗滜鸅蠌")
    ("zei" "贼|賊蠈鯽")
    ("zen" "怎|谮譖譛囎")
    ("zeng" "曾增赠憎综|甑増缯贈罾锃繒曽鄫磳縡璔矰橧")
    ("zha" "炸扎渣闸乍眨札诈榨咋轧喳吒铡|揸鍘醡查柞咤搾栅楂砟紮痄蚱偞哳齄囃霅劄剳軋詐喥皻挓喋箚蜡奓煠閘潳揷扠鮓觰鰈溠譗苲挿鞢抯蚻蔖譇樝齟齇齰")
    ("zhai" "摘宅窄债斋寨翟砦|齋哜择債斎瘵侧嚌駘檡捚骴厏粂簀鉙")
    ("zhan" "站占战展斩沾詹粘蘸盏湛栈瞻毡绽颤|戦辗戰佔旃崭霑邅谵斬惉栴嵁嶄偡棧鳽搌盞氈詀綻跕輾欃鱣颭饘嫸桟薝襢譫蛅譧橏輚魙轏黵琖虥驏醆驙餰鸇")
    ("zhang" "张涨长章帐掌账杖仗胀丈障彰璋樟|漳張嶂瘴蟑幛獐鄣漲帳仉粻暲脹賬嫜傽扙鞝粀慞墇鱆騿弡瞕遧")
    ("zhao" "找照赵招着兆朝昭罩召诏肇钊沼棹爪趙|櫂曌炤鍣垗箌詔啁笊皽妱旐釗鉊盄嘲瑵鮡釽狣菬駋鳭")
    ("zhe" "这着者折哲遮浙這喆辙褶蔗|辄乇蛰锗蜇谪赭柘摺棏磔摂螫晢悊輒粍夂嫬鹧淛鍺謫轍蟄囁蟅輙謺鷓虴砓讋鮿聑馲矺")
    ("zhei" "这|")
    ("zhen" "真镇针阵震振珍枕帧朕贞甄臻诊祯桢疹禛斟侦圳榛赈箴鍖眞砧|鎮轸陣鸩缜潧蓁胗樼浈針姫貞稹偵鎭瑧畛診椹禎獉瑱紾楨袗侲沴縝謓槇挋眕軫溱紖誫枮眹碪塡桭鍼賑絼揕鴆敶籈鬒葴珎轃寊遉栚鱵澵榐薽辴竧鈂裖駗抮靕朾縥蜄黰")
    ("zheng" "正整证郑挣争症征政蒸睁铮筝怔峥凧拯|诤鄭湞證爭氶钲証狰晸綪烝倀崝癥掙姃崢幀睜箏丁鮏媜埥鉦諍鯖炡撜錚篜眐糽脀浧聇猙埩塣掟")
    ("zhi" "之只至值指知直制纸治志支致智质置止枝汁职芝执植脂织痣滞芷掷酯址旨肢趾痔稚隻炙吱侄徵挚秩栀殖雉|祗郅峙帋跖窒祉戠枳帜彘潪庢豸媞陟紙咫桎栉卮帙蛭贽挃忮摭誌執質織製厔亊胝骘職鉄値柣蜘鸷庤轵絷觯剬畤薙凪黹衹沚乿摯膣姪滯埴寘夛踯徴擲樀阯禔迣踬扺傂瘈紩偫謢稙臸軽滍歭氏觝擿椥鋕秷秖臷廌蚔軹緻轾貭礩幟栺恉銍櫍櫛淽鳷酈慹犆摨泜穉袟跱捗蹛瓡觶晊躓胵楖贄疻縶騺巵嚔鴙鑕识洷秪梔汥胑阤擳杝猘懥樲墆搘鷙螲懫隲狾樴扻瓆騭蘵鶨藢榰坁蟙嬂輊翐瀄躑衼汦蹢膱銴駤覟祑馽釞疐")
    ("zhong" "中种重钟仲众忠终肿冢衷盅|锺種踵終眾塚夂鐘鍾柊伀煄衆螽腫狆尰舯緟蔠穜祌螤彸迚衶籦鈆妐忪蝩堹炂鼨")
    ("zhou" "周州粥洲轴舟咒皱肘昼骤宙洀|绉纣胄诌帚週酎妯晝籀軸皺繇碡呪紬侜冑甃啁僽盩喌鈾驟紂箒薵縐詶荮淍胕椆咮謅譸睭翢輈賙婤珘輖鯞銂菷騆徟鵃駲駎")
    ("zhu" "住猪主朱祝著煮注竹驻珠助诸柱逐株筑铸烛诛贮渚竺洙嘱蛛|拄豬蛀箸伫諸铢潴茱侏瞩苎炷邾翥杼褚註瘃駐躅硃麈紸佇紵丶笁燭瀦槠术钃疰橥舳築囑誅矚鑄蠋櫧殶属柷貯銖鉒欘窋劯軴灟櫫袾芧砫藸斸墸祩跓鸀篴鋳跙陼尌莇蠾蓫藷磩茿孎蠩跦竚罜嵀馵鴸羜眝蝫泏樦篫鱁絑鮢壴麆")
    ("zhua" "抓爪|挝簻檛膼髽")
    ("zhuai" "拽|跩捙")
    ("zhuan" "转赚专砖传撰篆|轉馔賺啭專颛顓簨専転磚耑僝漙摶囀瑑剸饌譔塼縳嫥諯膞鱄恮甎篿瑼鄟腞蟤")
    ("zhuang" "装状庄撞壮妆桩幢|裝狀莊妝僮荘壯奘湷粧樁戇獞焋梉戆")
    ("zhui" "追坠缀锥椎赘|骓墜隹畷甀倕埀惴缒箠綴縋錐硾贅娷騅諈醊餟錣醀腏鵻膇轛鑆")
    ("zhun" "准肫準谆|凖迍埻啍窀屯忳諄甽稕訰旽宒綧")
    ("zhuo" "着卓桌捉浊拙灼啄酌濯焯镯斫|擢倬茁琢著涿晫剢彴濁浞诼禚斲鷟穱噣缴圴矠啅蹠斀灂椓謶蝃趠諑篧琸汋捔蠗櫡鐲蠿棳梲斮穛罬藋籗硺蓔鵫")
    ("zi" "子字自紫资仔兹姿梓籽滋渍孜姊缁咨呲恣趑吱|訾眦淄鲻滓笫孖谘龇呰資髭茲赀耔倳孳菑崰秭辎牸茈嵫粢剚锱沝釨姉胔芓秶諮栥玆漬澬緇鈭訿鎡貲胾薋眥觜鼒璾錙杍胏椔鄑矷穧輜齍紎蓻鶅齜鯔")
    ("zong" "总宗纵踪棕粽综|鬃總腙縱偬枞総蹤倧綜傯惣嵕摠豵瘲蓯縦錝鬷昮艐椶愡潀蝬蓗騣惾鑁翪稯猣朡熧")
    ("zou" "走邹揍奏|诹驺赱陬鄒鄹偢諏鲰楱掫搊棸齺緅郰菆棷媰騶鯫齱黀")
    ("zu" "组租足族祖阻卒卆組俎|鏃崒诅镞菹伜鉏倅爼伹柤綷箤傶哫砠詛珇謯踿鉐怚靻蒩駔趲葅踤")
    ("zuan" "钻赚攥纂|鑽欑缵躜纘篹鑚籫躦揝纉")
    ("zui" "最嘴罪醉咀|蕞觜枠嶉脧厜晬嫢檇樶睟酔酨噿濢檌嶵嗺鋷璻祽嶊絊欈纗")
    ("zun" "尊遵|樽栫鐏鳟拵僔墫撙僎譐罇瀳繜嶟噂袸踆跧鱒銌鷷捘")
    ("zuo" "做作坐左座佐昨唑琢|祚嘬凿酢怍鑿柞阼莋笮胙捽蓙鈼稓侳葃筰撮葄繓岝椊"))
  "拼音汉字对照表

第一个元素为拼音，第二个元素为拼音对应的汉字组成的字符串，字符串
中汉字按照使用频率排序， 字符串用 “|” 隔开，“|” 之前的汉字为常用汉字。")

;; * Footer
(provide 'pyim-pymap)

;;; pyim-pymap.el ends here
