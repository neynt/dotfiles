layouts =
{
    awful.layout.suit.tile,
}

--local greeks = { 'α', 'β', 'γ', 'δ', 'ε', 'ζ', 'η', 'θ', 'ι', 'κ', 'λ', 'μ', 'ν', 'ξ', 'ο', 'π', 'ρ', 'σ', 'τ', 'υ', 'φ', 'χ', 'ψ', 'ω' }
local heisig = {"五/five", "六/six", "七/seven", "八/eight", "九/nine", "十/ten", "口/mouth", "日/day", "月/month", "田/rice field", "目/eye", "古/old", "吾/I", "冒/risk", "朋/companion", "明/bright", "唱/chant", "晶/sparkle", "品/goods", "呂/spine", "昌/prosperous", "早/early", "旭/rising sun", "世/generation", "胃/stomach", "旦/nightbreak", "胆/gall bladder", "亘/span", "凹/concave", "凸/convex", "旧/olden times", "自/oneself", "白/white", "百/hundred", "中/in", "千/thousand", "舌/tongue", "升/measuring box", "昇/rise up", "丸/round", "寸/measurement", "専/specialty", "博/Dr.", "占/fortune-telling", "上/above", "下/below", "卓/eminent", "朝/morning", "只/only", "貝/shellfish", "貞/upright", "員/employee", "見/see", "児/newborn babe", "元/beginning", "頁/page", "頑/stubborn", "凡/mediocre", "負/defeat", "万/ten thousand", "句/phrase", "肌/texture", "旬/decameron", "勺/ladle", "的/bull's eye", "首/neck", "乙/fishguts", "乱/riot", "直/straightaway", "具/tool", "真/true", "工/craft", "左/left", "右/right", "有/possess", "賄/bribe", "貢/tribute", "項/paragraph", "刀/sword", "刃/blade", "切/cut", "召/seduce", "昭/shining", "則/rule", "副/vice-", "別/separate", "丁/street", "町/village", "可/can", "頂/place on the head", "子/child", "孔/cavity", "了/complete", "女/woman", "好/fond", "如/likeness", "母/mama", "貫/pierce", "兄/elder brother", "克/overcome", "小/little", "少/few", "大/large", "多/many", "夕/evening", "汐/eventide", "外/outside", "名/name", "石/stone", "肖/resemblance", "硝/nitrate", "砕/smash", "砂/sand", "削/plane", "光/ray", "太/plump", "器/utensil", "臭/stinking", "妙/exquisite", "省/focus", "厚/thick", "奇/strange", "川/stream", "州/state", "順/obey", "水/water", "氷/icicle", "永/eternity", "泉/spring", "原/meadow", "願/petition", "泳/swim", "沼/marsh", "沖/open sea", "江/creek", "汁/soup", "潮/tide", "源/source", "活/lively", "消/extinguish", "況/but of course", "河/river", "泊/overnight", "湖/lake", "測/fathom", "土/soil", "吐/spit", "圧/pressure", "埼/cape", "垣/hedge", "圭/square jewel", "封/seal", "涯/horizon", "寺/Buddhist temple", "時/time", "均/level", "火/fire", "炎/inflammation", "煩/anxiety", "淡/thin", "灯/lamp", "畑/farm", "災/disaster", "灰/ashes", "点/spot", "照/illuminate", "魚/fish", "漁/fishing", "里/ri", "黒/black", "墨/black ink", "鯉/carp", "量/quantity", "厘/rin", "埋/bury", "同/same", "洞/den", "胴/trunk", "向/yonder", "尚/esteem", "字/character", "守/guard", "完/perfect", "宣/proclaim", "宵/wee hours", "安/relax", "宴/banquet", "寄/draw near", "富/wealth", "貯/savings", "木/tree", "林/grove", "森/forest", "桂/Japanese Judas-tree", "柏/oak", "枠/frame", "梢/treetops", "棚/shelf", "杏/apricot", "桐/paulownia", "植/plant", "枯/wither", "朴/crude", "村/town", "相/inter-", "机/desk", "本/book", "札/tag", "暦/calendar", "案/plan", "燥/parch", "未/not yet", "末/extremity", "沫/splash", "味/flavor", "妹/younger sister", "朱/vermilion", "株/stocks", "若/young", "草/grass", "苦/suffering", "寛/tolerant", "薄/dilute", "葉/leaf", "模/imitation", "漠/vague", "墓/grave", "暮/livelihood", "膜/membrane", "苗/seedling", "兆/portent", "桃/peach tree", "眺/stare", "犬/dog", "状/status quo", "黙/silence", "然/sort of thing", "荻/reed", "狩/hunt", "猫/cat", "牛/cow", "特/special", "告/revelation", "先/before", "洗/wash", "介/jammed in", "界/world", "茶/tea", "合/fit", "塔/pagoda", "王/king", "玉/jewel", "宝/treasure", "珠/pearl", "現/present", "狂/lunatic", "皇/emperor", "呈/display", "全/whole", "栓/plug", "理/logic", "主/lord", "注/pour", "柱/pillar", "金/gold", "銑/pig-iron", "鉢/bowl", "銅/copper", "釣/angling", "針/needle", "銘/inscription", "鎮/tranquillize", "道/road-way", "導/guidance", "辻/crossing", "迅/swift", "造/create", "迫/urge", "逃/escape", "辺/environs", "巡/patrol", "車/car", "連/take along", "軌/rut", "輸/transport", "前/in front", "各/each", "格/status", "略/abbreviation", "客/guest", "額/forehead", "夏/summer", "処/dispose", "条/twig", "落/fall", "冗/superfluous", "軍/army", "輝/radiance", "運/carry", "冠/crown", "夢/dream", "坑/pit", "高/tall", "享/receive", "塾/cram school", "熟/mellow", "亭/pavilion", "京/capital", "涼/refreshing", "景/scenery", "鯨/whale", "舎/cottage", "周/circumference", "週/week", "士/gentleman", "吉/good luck", "壮/robust", "荘/villa", "売/sell", "学/study", "覚/memorize", "栄/flourish", "書/write", "津/haven", "牧/breed", "攻/aggression", "敗/failure", "枚/sheet of...", "故/happenstance", "敬/awe", "言/say", "警/admonish", "計/plot", "獄/prison", "訂/revise", "討/chastise", "訓/instruction", "詔/imperial edict", "詰/packed", "話/tale", "詠/recitation", "詩/poem", "語/word", "読/read", "調/tune", "談/discuss", "諾/consent", "諭/rebuke", "式/style", "試/test", "弐/II", "域/range", "賊/burglar", "栽/plantation", "載/load", "茂/overgrown", "成/turn into", "城/castle", "誠/sincerity", "威/intimidate", "滅/destroy", "減/dwindle", "桟/scaffold", "銭/coin", "浅/shallow", "止/stop", "歩/walk", "渉/ford", "頻/repeatedly", "肯/agreement", "企/undertake", "歴/curriculum", "武/warrior", "賦/levy", "正/correct", "証/evidence", "政/politics", "定/determine", "錠/lock", "走/run", "超/transcend", "赴/proceed", "越/surpass", "是/just so", "題/topic", "堤/dike", "建/build", "延/prolong", "誕/nativity", "礎/cornerstone", "婿/bridegroom", "衣/garment", "裁/tailor", "装/attire", "裏/back", "壊/demolition", "哀/pathetic", "遠/distant", "猿/monkey", "初/first time", "布/linen", "帆/sail", "幅/hanging scroll", "帽/cap", "幕/curtain", "幌/canopy", "錦/brocade", "市/market", "姉/elder sister", "肺/lungs", "帯/sash", "滞/stagnate", "刺/thorn", "制/system", "製/made in...", "転/revolve", "芸/technique", "雨/rain", "雲/cloud", "曇/cloudy weather", "雷/thunder", "霜/frost", "冬/winter", "天/heavens", "橋/bridge", "嬌/attractive", "立/stand up", "泣/cry", "章/badge", "競/vie", "帝/sovereign", "童/juvenile", "瞳/pupil", "鐘/bell", "商/make a deal", "嫡/legitimate wife", "適/suitable", "滴/drip", "敵/enemy", "匕/spoon", "北/north", "背/stature", "比/compare", "昆/descendants", "皆/all", "混/mix", "渇/thirst", "謁/audience", "褐/brown", "喝/hoarse", "旨/delicious", "脂/fat", "壱/I (one)", "毎/every", "敏/cleverness", "梅/plum", "海/sea", "乞/beg", "乾/drought", "腹/abdomen", "複/duplicate", "欠/lack", "吹/blow", "炊/cook", "歌/song", "軟/soft", "次/next", "茨/briar", "資/assets", "姿/figure", "諮/consult with", "賠/compensation", "培/cultivate", "剖/divide", "音/sound", "暗/darkness", "韻/rhyme", "識/discriminating", "鏡/mirror", "境/boundary", "亡/deceased", "盲/blind", "妄/delusion", "荒/laid waste", "望/ambition", "方/direction", "妨/disturb", "坊/boy", "芳/perfume", "肪/obese", "訪/call on", "放/set free", "激/violent", "脱/undress", "説/rumor", "鋭/pointed", "曽/formerly", "増/increase", "贈/presents", "東/east", "棟/ridgepole", "凍/frozen", "妊/pregnancy", "廷/courts", "染/dye", "燃/burn", "賓/V.I.P.", "歳/year-end", "県/prefecture", "栃/horse chestnut", "地/ground", "池/pond", "虫/insect", "蛍/lightning-bug", "蛇/snake", "虹/rainbow", "蝶/butterfly", "独/single", "蚕/silkworm", "風/wind", "己/self", "起/rouse", "妃/queen", "改/reformation", "記/scribe", "包/wrap", "胞/placenta", "砲/cannon", "泡/bubbles", "亀/tortoise", "電/electricity", "竜/dragon", "滝/waterfall", "豚/pork", "逐/pursue", "遂/consummate", "家/house", "嫁/marry into", "豪/overpowering", "腸/intestines", "場/location", "湯/hot water", "羊/sheep", "美/beauty", "洋/ocean", "詳/detailed", "鮮/fresh", "達/accomplished", "羨/envious", "差/distinction", "着/don", "唯/solely", "焦/char", "礁/reef", "集/gather", "准/quasi-", "進/advance", "雑/miscellaneous", "雌/feminine", "準/semi-", "奮/stirred up", "奪/rob", "確/assurance", "午/noon", "許/permit", "歓/delight", "権/authority", "観/outlook", "羽/feathers", "習/learn", "翌/the following", "曜/weekday", "濯/laundry", "曰/sayeth", "困/quandary", "固/harden", "国/country", "団/group", "因/cause", "姻/matrimony", "園/park", "回/-times", "壇/podium", "店/store", "庫/warehouse", "庭/courtyard", "庁/government office", "床/bed", "麻/hemp", "磨/grind", "心/heart", "忘/forget", "忍/endure", "認/acknowledge", "忌/mourning", "志/intention", "誌/document", "忠/loyalty", "串/shish kebab", "患/afflicted", "思/think", "恩/grace", "応/apply", "意/idea", "想/concept", "息/breath", "憩/recess", "恵/favor", "恐/fear", "惑/beguile", "感/emotion", "憂/melancholy", "寡/widow", "忙/busy", "悦/ecstasy", "恒/constancy", "悼/lament", "悟/enlightenment", "怖/dreadful", "慌/disconcerted", "悔/repent", "憎/hate", "慣/accustomed", "愉/pleasure", "惰/lazy", "慎/humility", "憾/remorse", "憶/recollection", "慕/pining", "添/annexed", "必/invariably", "泌/ooze", "手/hand", "看/watch over", "摩/chafe", "我/ego", "義/righteousness", "議/deliberation", "犠/sacrifice", "抹/rub", "抱/embrace", "搭/board", "抄/extract", "抗/confront", "批/criticism", "招/beckon", "拓/clear the land", "拍/clap", "打/strike", "拘/arrest", "捨/discard", "拐/kidnap", "摘/pinch", "挑/challenge", "指/finger", "持/hold", "括/fasten", "揮/brandish", "推/conjecture", "揚/hoist", "提/propose", "損/damage", "拾/pick up", "担/shouldering", "拠/foothold", "描/sketch", "操/maneuver", "接/touch", "掲/put up a notice", "掛/hang", "研/polish", "戒/commandment", "械/contraption", "鼻/nose", "刑/punish", "型/mould", "才/genius", "財/property", "材/lumber", "存/suppose", "在/exist", "乃/from", "携/portable", "及/reach out", "吸/suck", "扱/handle", "丈/length", "史/history", "吏/officer", "更/grow late", "硬/stiff", "又/or again", "双/pair", "桑/mulberry", "隻/vessels", "護/safeguard", "獲/seize", "奴/guy", "怒/angry", "友/friend", "抜/slip out", "投/throw", "没/drown", "設/establishment", "撃/beat", "殻/husk", "支/branch", "技/skill", "枝/bough", "肢/limb", "茎/stalk", "怪/suspicious", "軽/lightly", "叔/uncle", "督/coach", "寂/loneliness", "淑/graceful", "反/anti-", "坂/slope", "板/plank", "返/return", "販/marketing", "爪/claw", "妥/gentle", "乳/milk", "浮/floating", "将/leader", "奨/exhort", "採/pick", "菜/vegetable", "受/accept", "授/impart", "愛/love", "払/pay", "広/wide", "拡/broaden", "鉱/mineral", "弁/valve", "雄/masculine", "台/pedestal", "怠/neglect", "治/reign", "始/commence", "胎/womb", "窓/window", "去/gone", "法/method", "会/meeting", "至/climax", "室/room", "到/arrival", "致/doth", "互/mutually", "棄/abandon", "育/bring up", "撤/remove", "充/allot", "銃/gun", "硫/sulphur", "流/current", "允/license", "唆/tempt", "出/exit", "山/mountain", "拙/bungling", "岩/boulder", "炭/charcoal", "岐/branch off", "峠/mountain peak", "崩/crumble", "密/secrecy", "蜜/honey", "嵐/storm", "崎/promontory", "入/enter", "込/crowded", "分/part", "貧/poverty", "頒/partition", "公/public", "松/pine tree", "翁/venerable old man", "訟/sue", "谷/valley", "浴/bathe", "容/contain", "溶/melt", "欲/longing", "裕/abundant", "鉛/lead (metal)", "沿/run alongside", "賞/prize", "党/party", "堂/public chamber", "常/usual", "裳/skirt", "掌/manipulate", "皮/pelt", "波/waves", "婆/old woman", "披/expose", "破/rend", "被/incur", "残/remainder", "殉/martyrdom", "殊/particularly", "殖/augment", "列/file", "裂/split", "烈/ardent", "死/death", "葬/interment", "瞬/wink", "耳/ear", "取/take", "趣/gist", "最/utmost", "撮/snapshot", "恥/shame", "職/post", "聖/holy", "敢/daring", "聴/listen", "懐/pocket", "慢/ridicule", "漫/loose", "買/buy", "置/placement", "罰/penalty", "寧/rather", "濁/voiced", "環/ring", "還/send back", "夫/husband", "扶/aid", "渓/mountain stream", "規/standard", "替/exchange", "賛/approve", "潜/submerge", "失/lose", "鉄/iron", "迭/transfer", "臣/retainer", "姫/princess", "蔵/storehouse", "臓/entrails", "賢/intelligent", "堅/strict", "臨/look to", "覧/perusal", "巨/gigantic", "拒/repel", "力/power", "男/male", "労/labor", "募/recruit", "劣/inferiority", "功/achievement", "勧/persuade", "努/toil", "励/encourage", "加/add", "賀/congratulations", "架/erect", "脇/armpit", "脅/threaten", "協/co-", "行/going", "律/rhythm", "復/restore", "得/gain", "従/accompany", "徒/junior", "待/wait", "往/journey", "征/subjugate", "径/diameter", "彼/he", "役/duty", "徳/benevolence", "徹/penetrate", "徴/indications", "懲/penal", "微/delicate", "街/boulevard", "衡/equilibrium", "稿/draft", "稼/earnings", "程/extent", "税/tax", "稚/immature", "和/harmony", "移/shift", "秒/second", "秋/autumn", "愁/distress", "私/private", "秩/regularity", "秘/secret", "称/appellation", "利/profit", "梨/pear tree", "穫/harvest", "穂/ear (of a plant)", "稲/rice plant", "香/incense", "季/seasons", "委/committee", "秀/excel", "透/transparent", "誘/entice", "穀/cereals", "菌/germ", "米/rice", "粉/flour", "粘/sticky", "粒/grains", "粧/cosmetics", "迷/astray", "粋/chic", "糧/provisions", "菊/chrysanthemum", "奥/core", "数/number", "楼/watchtower", "類/sort", "漆/lacquer", "様/Esq.", "求/request", "球/ball", "救/salvation", "竹/bamboo", "笑/laugh", "笠/bamboo hat", "笹/bamboo grass", "筋/muscle", "箱/box", "筆/writing brush", "筒/cylinder", "等/etc.", "算/calculate", "答/solution", "策/scheme", "簿/register", "築/fabricate", "人/person", "佐/assistant", "但/however", "住/dwell", "位/rank", "仲/go-between", "体/body", "悠/permanence", "件/affair", "仕/attend", "他/other", "伏/prostrated", "伝/transmit", "仏/Buddha", "休/rest", "仮/sham", "伯/chief", "俗/vulgar", "信/faith", "佳/excellent", "依/reliant", "例/example", "個/individual", "健/healthy", "側/side", "侍/waiter", "停/halt", "値/price", "倣/emulate", "倒/overthrow", "偵/spy", "僧/Buddhist priest", "億/hundred million", "儀/ceremony", "償/reparation", "仙/hermit", "催/sponsor", "仁/humanity", "侮/scorn", "使/use", "便/convenience", "倍/double", "優/tenderness", "伐/fell", "宿/inn", "傷/wound", "保/protect", "褒/praise", "傑/greatness", "付/adhere", "符/token", "府/borough", "任/responsibility", "賃/fare", "代/substitute", "袋/sack", "貸/lend", "化/change", "花/flower", "貨/freight", "傾/lean", "何/what", "荷/baggage", "俊/sagacious", "傍/bystander", "久/long time", "畝/furrow", "囚/captured", "内/inside", "丙/third class", "柄/design", "肉/meat", "腐/rot", "座/sit", "卒/graduate", "傘/umbrella", "匁/monme", "以/by means of", "似/similar", "併/join", "瓦/tile", "瓶/flower pot", "宮/Shinto shrine", "営/occupation", "善/virtuous", "年/year", "夜/night", "液/fluid", "塚/hillock", "幣/cash", "弊/abuse", "喚/yell", "換/interchange", "融/dissolve", "施/alms", "旋/rotation", "遊/play", "旅/trip", "勿/not", "物/thing", "易/easy", "賜/grant", "尿/urine", "尼/nun", "泥/mud", "塀/fence", "履/footgear", "屋/roof", "握/grip", "屈/yield", "掘/dig", "堀/ditch", "居/reside", "据/set", "層/stratum", "局/bureau", "遅/slow", "漏/leak", "刷/printing", "尺/shaku", "尽/exhaust", "沢/swamp", "訳/translate", "択/choose", "昼/daytime", "戸/door", "肩/shoulder", "房/tassel", "扇/fan", "炉/hearth", "戻/re-", "涙/tears", "雇/employ", "顧/look back", "啓/disclose", "示/show", "礼/salutation", "祥/auspicious", "祝/celebrate", "福/blessing", "祉/welfare", "社/company", "視/inspection", "奈/Nara", "尉/military officer", "慰/consolation", "款/goodwill", "禁/prohibition", "襟/collar", "宗/religion", "崇/adore", "祭/ritual", "察/guess", "擦/grate", "由/wherefore", "抽/pluck", "油/oil", "袖/sleeve", "宙/mid-air", "届/deliver", "笛/flute", "軸/axis", "甲/armor", "押/push", "岬/headland", "挿/insert", "申/speaketh", "伸/expand", "神/gods", "捜/search", "果/fruit", "菓/candy", "課/chapter", "裸/naked", "斤/axe", "析/chop", "所/place", "祈/pray", "近/near", "折/fold", "哲/philosophy", "逝/departed", "誓/vow", "暫/temporarily", "漸/steadily", "断/severance", "質/substance", "斥/reject", "訴/accusation", "昨/yesterday", "詐/lie", "作/make", "雪/snow", "録/record", "尋/inquire", "急/hurry", "穏/calm", "侵/encroach", "浸/immersed", "寝/lie down", "婦/lady", "掃/sweep", "当/hit", "争/contend", "浄/clean", "事/matter", "唐/T'ang", "糖/sugar", "康/ease", "逮/apprehend", "伊/Italy", "君/old boy", "群/flock", "耐/-proof", "需/demand", "儒/Confucian", "端/edge", "両/both", "満/full", "画/brush-stroke", "歯/tooth", "曲/bend", "曹/cadet", "遭/encounter", "漕/rowing", "槽/vat", "斗/Ursa Major", "料/fee", "科/department", "図/map", "用/utilize", "庸/commonplace", "備/equip", "昔/once upon a time", "錯/confused", "借/borrow", "惜/pity", "措/set aside", "散/scatter", "廿/twenty", "庶/commoner", "遮/intercept", "席/seat", "度/degrees", "渡/transit", "奔/bustle", "噴/erupt", "墳/tomb", "憤/aroused", "焼/bake", "暁/daybreak", "半/half", "伴/consort", "畔/paddy-ridge", "判/judgment", "券/ticket", "巻/scroll", "圏/sphere", "勝/victory", "藤/wistaria", "謄/mimeograph", "片/one-sided", "版/printing block", "之/of", "乏/destitution", "芝/turf", "不/negative", "否/negate", "杯/cupfuls", "矢/dart", "矯/rectify", "族/tribe", "知/know", "智/wisdom", "矛/halberd", "柔/tender", "務/task", "霧/fog", "班/squad", "帰/homecoming", "弓/bow", "引/pull", "弔/condolences", "弘/vast", "強/strong", "弱/weak", "沸/seethe", "費/expense", "第/No.", "弟/younger brother", "巧/adroit", "号/nickname", "朽/decay", "誇/boast", "汚/dirty", "与/bestow", "写/copy", "身/somebody", "射/shoot", "謝/apologize", "老/old man", "考/consider", "孝/filial piety", "教/teach", "拷/torture", "者/someone", "煮/boil", "著/renowned", "署/signature", "暑/sultry", "諸/various", "猪/boar", "渚/strand", "賭/gamble", "峡/gorge", "狭/cramped", "挟/sandwiched", "追/chase", "師/expert", "帥/commander", "官/bureaucrat", "棺/coffin", "管/pipe", "父/father", "交/mingle", "効/merit", "較/contrast", "校/exam", "足/leg", "促/stimulate", "距/long-distance", "路/path", "露/dew", "跳/hop", "躍/leap", "践/tread", "踏/step", "骨/skeleton", "滑/slippery", "髄/marrow", "禍/calamity", "渦/whirlpool", "過/overdo", "阪/Heights", "阿/Africa", "際/occasion", "障/hinder", "随/follow", "陪/obeisance", "陽/sunshine", "陳/exhibit", "防/ward off", "附/affixed", "院/Inst.", "陣/camp", "隊/regiment", "墜/crash", "降/descend", "階/storey", "陛/highness", "隣/neighboring", "隔/isolate", "隠/conceal", "堕/degenerate", "陥/collapse", "穴/hole", "空/empty", "控/withdraw", "突/stab", "究/research", "窒/plug up", "窃/stealth", "窪/depression", "搾/squeeze", "窯/kiln", "窮/hard up", "探/grope", "深/deep", "丘/hill", "岳/Point", "兵/soldier", "浜/seacoast", "糸/thread", "織/weave", "繕/darning", "縮/shrink", "繁/luxuriant", "縦/vertical", "線/line", "締/tighten", "維/fiber", "羅/gauze", "練/practice", "緒/thong", "続/continue", "絵/picture", "統/overall", "絞/strangle", "給/salary", "絡/entwine", "結/tie", "終/end", "級/class", "紀/chronicle", "紅/crimson", "納/settlement", "紡/spinning", "紛/distract", "紹/introduce", "経/sutra", "紳/sire", "約/promise", "細/dainty", "累/accumulate", "索/cord", "総/general", "綿/cotton", "絹/silk", "繰/winding", "継/inherit", "緑/green", "縁/affinity", "網/netting", "緊/tense", "紫/purple", "縛/truss", "縄/straw rope", "幼/infancy", "後/behind", "幽/seclude", "幾/how many", "機/mechanism", "玄/mysterious", "畜/livestock", "蓄/amass", "弦/bowstring", "擁/hug", "滋/nourishing", "慈/mercy", "磁/magnet", "系/lineage", "係/person in charge", "孫/grandchild", "懸/suspend", "却/instead", "脚/skids", "卸/wholesale", "御/honorable", "服/clothing", "命/fate", "令/orders", "零/zero", "齢/age", "冷/cool", "領/jurisdiction", "鈴/small bell", "勇/courage", "通/traffic", "踊/jump", "疑/doubt", "擬/mimic", "凝/congeal", "範/pattern", "犯/crime", "厄/unlucky", "危/dangerous", "宛/address", "腕/arm", "苑/garden", "怨/grudge", "柳/willow", "卵/egg", "留/detain", "貿/trade", "印/stamp", "興/entertain", "酉/sign of the bird", "酒/sake", "酌/bartending", "酵/fermentation", "酷/cruel", "酬/repay", "酪/dairy products", "酢/vinegar", "酔/drunk", "配/distribute", "酸/acid", "猶/furthermore", "尊/revered", "豆/beans", "頭/head", "短/short", "豊/bountiful", "鼓/drum", "喜/rejoice", "樹/timber-trees", "皿/dish", "血/blood", "盆/basin", "盟/alliance", "盗/steal", "温/warm", "監/oversee", "濫/overflow", "鑑/specimen", "猛/fierce", "盛/boom", "塩/salt", "銀/silver", "恨/regret", "根/root", "即/instant", "爵/baron", "節/node", "退/retreat", "限/limit", "眼/eyeball", "良/good", "朗/melodious", "浪/wandering", "娘/daughter", "食/eat", "飯/meal", "飲/drink", "飢/hungry", "餓/starve", "飾/decorate", "館/Bldg.", "養/foster", "飽/sated", "既/previously", "概/outline", "慨/rue", "平/even", "呼/call", "坪/two-mat area", "評/evaluate", "刈/reap", "希/hope", "凶/villain", "胸/bosom", "離/detach", "殺/kill", "純/genuine", "鈍/dull", "辛/spicy", "辞/resign", "梓/catalpa", "宰/superintend", "壁/wall", "避/evade", "新/new", "薪/fuel", "親/parent", "幸/happiness", "執/tenacious", "報/report", "叫/shout", "糾/twist", "収/income", "卑/lowly", "碑/tombstone", "陸/land", "睦/intimate", "勢/forces", "熱/heat", "菱/diamond", "陵/mausoleum", "亥/sign of the hog", "核/nucleus", "刻/engrave", "該/above-stated", "劾/censure", "述/mention", "術/art", "寒/cold", "醸/brew", "譲/defer", "壌/lot", "嬢/lass", "毒/poison", "素/elementary", "麦/barley", "青/blue", "精/refined", "請/solicit", "情/feelings", "晴/clear up", "清/pure", "静/quiet", "責/blame", "績/exploits", "積/volume", "債/bond", "漬/pickling", "表/surface", "俵/bag", "潔/undefiled", "契/pledge", "喫/consume", "害/harm", "轄/control", "割/proportion", "憲/constitution", "生/life", "星/star", "姓/surname", "性/sex", "牲/animal sacrifice", "産/products", "隆/hump", "峰/summit", "縫/sew", "拝/worship", "寿/longevity", "鋳/casting", "籍/enroll", "春/springtime", "椿/camellia", "泰/peaceful", "奏/play music", "実/reality", "奉/observance", "俸/stipend", "棒/rod", "謹/discreet", "勤/diligence", "漢/Sino-", "嘆/sigh", "難/difficult", "華/splendor", "垂/droop", "睡/drowsy", "錘/spindle", "乗/ride", "剰/surplus", "今/now", "含/include", "吟/versify", "念/wish", "琴/harp", "陰/shade", "予/beforehand", "序/preface", "預/deposit", "野/plains", "兼/concurrently", "嫌/dislike", "鎌/sickle", "謙/self-effacing", "廉/bargain", "西/west", "価/value", "要/need", "腰/loins", "票/ballot", "漂/drift", "標/signpost", "栗/chestnut", "遷/transition", "覆/capsize", "煙/smoke", "南/south", "楠/camphor tree", "献/offering", "門/gates", "問/question", "閲/review", "閥/clique", "間/interval", "簡/simplicity", "開/open", "閉/closed", "閣/tower", "閑/leisure", "聞/hear", "潤/wet", "欄/column", "闘/fight", "倉/godown", "創/genesis", "非/un-", "俳/haiku", "排/repudiate", "悲/sad", "罪/guilt", "輩/comrade", "扉/front door", "侯/marquis", "候/climate", "決/decide", "快/cheerful", "偉/admirable", "違/difference", "緯/horizontal", "衛/defense", "韓/Korea", "干/dry", "肝/liver", "刊/publish", "汗/sweat", "軒/flats", "岸/beach", "幹/tree-trunk", "芋/potato", "宇/eaves", "余/too much", "除/exclude", "徐/gradually", "叙/confer", "途/route", "斜/diagonal", "塗/paint", "束/bundle", "頼/trust", "瀬/rapids", "勅/imperial order", "疎/alienate", "速/quick", "整/organize", "剣/saber", "険/precipitous", "検/examination", "倹/frugal", "重/heavy", "動/move", "勲/meritorious deed", "働/work", "種/species", "衝/collide", "薫/fragrant", "病/ill", "痴/stupid", "痘/pox", "症/symptoms", "疾/rapidly", "痢/diarrhea", "疲/tired", "疫/epidemic", "痛/pain", "癖/mannerism", "匿/hide", "匠/artisan", "医/doctor", "匹/equal", "区/ward", "枢/hinge", "殴/assault", "欧/Europe", "抑/repress", "仰/face-up", "迎/welcome", "登/ascend", "澄/lucidity", "発/discharge", "廃/abolish", "僚/colleague", "寮/dormitory", "療/heal", "彫/carve", "形/shape", "影/shadow", "杉/cedar", "彩/coloring", "彰/patent", "彦/lad", "顔/face", "須/ought", "膨/swell", "参/visit", "惨/wretched", "修/discipline", "珍/rare", "診/check-up", "文/sentence", "対/vis-a-vis", "紋/family crest", "蚊/mosquito", "斉/adjusted", "剤/dose", "済/finish", "斎/purification", "粛/solemn", "塁/bases", "楽/music", "薬/medicine", "率/ratio", "渋/astringent", "摂/vicarious", "央/center", "英/England", "映/reflect", "赤/red", "赦/pardon", "変/unusual", "跡/tracks", "蛮/barbarian", "恋/romance", "湾/gulf", "黄/yellow", "横/sideways", "把/grasp", "色/color", "絶/discontinue", "艶/glossy", "肥/fertilizer", "甘/sweet", "紺/navy blue", "某/so-and-so", "謀/conspire", "媒/mediator", "欺/deceit", "棋/chess piece", "旗/national flag", "期/period", "碁/Go", "基/fundamentals", "甚/tremendously", "勘/intuition", "堪/withstand", "貴/precious", "遺/bequeath", "遣/dispatch", "舞/dance", "無/nothingness", "組/association", "粗/coarse", "租/tariff", "祖/ancestor", "阻/thwart", "査/investigate", "助/help", "宜/best regards", "畳/tatami mat", "並/row", "普/universal", "譜/musical score", "湿/damp", "顕/appear", "繊/slender", "霊/spirits", "業/profession", "撲/slap", "僕/me", "共/together", "供/submit", "異/uncommon", "翼/wing", "洪/deluge", "港/harbor", "暴/outburst", "爆/bomb", "恭/respect", "選/elect", "殿/Mr.", "井/well", "囲/surround", "耕/till", "亜/Asia", "悪/bad", "円/circle", "角/angle", "触/contact", "解/unravel", "再/again", "講/lecture", "購/subscription", "構/posture", "溝/gutter", "論/argument", "倫/ethics", "輪/wheel", "偏/partial", "遍/everywhere", "編/compilation", "冊/tome", "典/code", "氏/family name", "紙/paper", "婚/marriage", "低/lower", "抵/resist", "底/bottom", "民/people", "眠/sleep", "捕/catch", "浦/bay", "蒲/bulrush", "舗/shop", "補/supplement", "邸/residence", "郭/enclosure", "郡/county", "郊/outskirts", "部/section", "都/metropolis", "郵/mail", "邦/home country", "郷/home town", "響/echo", "郎/son", "廊/corridor", "盾/shield", "循/sequential", "派/faction", "脈/vein", "衆/masses", "逓/parcel post", "段/grade", "鍛/forge", "后/empress", "幻/phantasm", "司/director", "伺/pay respects", "詞/part of speech", "飼/domesticate", "嗣/heir", "舟/boat", "舶/liner", "航/navigate", "般/carrier", "盤/tray", "搬/conveyor", "船/ship", "艦/warship", "艇/rowboat", "瓜/melon", "弧/arc", "孤/orphan", "繭/cocoon", "益/benefit", "暇/spare time", "敷/spread", "来/come", "気/spirit", "汽/vapor", "飛/fly", "沈/sink", "妻/wife", "衰/decline", "衷/inmost", "面/mask", "革/leather", "靴/shoes", "覇/hegemony", "声/voice", "呉/give", "娯/recreation", "誤/mistake", "蒸/steam", "承/acquiesce", "函/bin", "極/poles", "牙/tusk", "芽/bud", "邪/wicked", "雅/gracious", "釈/explanation", "番/turn", "審/hearing", "翻/flip", "藩/clan", "毛/fur", "耗/decrease", "尾/tail", "宅/home", "託/consign", "為/do", "偽/falsehood", "長/long", "張/lengthen", "帳/notebook", "脹/dilate", "髪/hair of the head", "展/unfold", "喪/miss", "巣/nest", "単/simple", "戦/war", "禅/Zen", "弾/bullet", "桜/cherry tree", "獣/animal", "脳/brain", "悩/trouble", "厳/stern", "鎖/chain", "挙/raise", "誉/reputation", "猟/game-hunting", "鳥/bird", "鳴/chirp", "鶴/crane", "烏/crow", "蔦/vine", "鳩/pigeon", "鶏/chicken", "島/island", "暖/warmth", "媛/beautiful woman", "援/abet", "緩/slacken", "属/belong", "嘱/entrust", "偶/accidentally", "遇/interview", "愚/foolish", "隅/corner", "逆/inverted", "塑/model", "岡/Mount", "鋼/steel", "綱/hawser", "剛/sturdy", "缶/tin can", "陶/pottery", "揺/swing", "謡/Noh chanting", "就/concerning", "懇/sociable", "墾/groundbreaking", "免/excuse", "逸/elude", "晩/nightfall", "勉/exertion", "象/elephant", "像/statue", "馬/horse", "駒/pony", "験/verification", "騎/equestrian", "駐/parking", "駆/drive", "駅/station", "騒/boisterous", "駄/burdensome", "驚/wonder", "篤/fervent", "騰/inflation", "虎/tiger", "虜/captive", "膚/skin", "虚/void", "戯/frolic", "虞/uneasiness", "慮/prudence", "劇/drama", "虐/tyrannize", "鹿/deer", "薦/recommend", "慶/jubilation", "麗/lovely", "熊/bear", "能/ability", "態/attitude", "寅/sign of the tiger", "演/performance", "辰/sign of the dragon", "辱/embarrass", "震/quake", "振/shake", "娠/with child", "唇/lips", "農/agriculture", "濃/concentrated", "送/send off", "関/connection", "咲/blossom", "鬼/ghost", "醜/ugly", "魂/soul", "魔/witch", "魅/fascination", "塊/clod", "襲/attack", "嚇/menacing", "朕/majestic plural", "雰/atmosphere", "箇/item", "錬/tempering", "遵/abide by", "罷/quit", "屯/barracks", "且/moreover", "藻/seaweed", "隷/slave", "癒/healing", "丹/rust-colored", "潟/lagoon", "丑/sign of the cow", "卯/sign of the hare", "巳/sign of the snake"}


tags = {}
for s = 1, screen.count() do
	if s == 1 then
		--tags[s] = awful.tag({'一', '二', '三', '四', '五', '六', '七', '八', '九'}, s, layouts[1])
		--tags[s] = awful.tag({'一', '二', '三', '四'}, s, layouts[1])
		--tags[s] = awful.tag({'!', '@', '#', '$'}, s, layouts[1])
		--tags[s] = awful.tag({'ク', 'ラ', 'ナ', 'ド'}, s, layouts[1])
		--tags[s] = awful.tag({'狼', '香', '辛', '料'}, s, layouts[1])
		--tags[s] = awful.tag({'k', 'a', 'w', 'a', 'i', 'i'}, s, layouts[1])
		--tags[s] = awful.tag({'1', '2', '3', '4', '5', '6', '7', '8', '9'}, s, layouts[1])
		--tags[s] = awful.tag({'1', '2', '3', '4', '5/miru', '6/book', '7/know', '8/hack', '9/lang'}, s, layouts[1])
		--tags[s] = awful.tag({'一', '二', '三', '四', '五/miru', '六/book', '七/know', '八/hack', '九/lang'}, s, layouts[1])
        tags[s] = awful.tag({'一', '二', '三', '四', heisig[math.random(1, #heisig-4)], heisig[math.random(1, #heisig-4)], heisig[math.random(1, #heisig-4)], heisig[math.random(1, #heisig-4)], heisig[math.random(1, #heisig-4)]}, s, layouts[1])
		--tags[s] = awful.tag({'私', 'は', 'あ', 'な', 'た', 'が', '好', 'き', 'だ'}, s, layouts[1])
		--tags[s] = awful.tag({'i', 'ii', 'iii', 'iv', 'v', 'vi', 'vii', 'viii', 'ix'}, s, layouts[1])
	else
		tags[s] = awful.tag({'1', '2', '3'}, s, layouts[1])
	end
end

awful.layout.set(awful.layout.suit.fair, awful.tag.gettags(1)[1])
