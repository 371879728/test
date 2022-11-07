[_tb_system_call storage=system/_sys_seting.ks]

*start

[tb_start_tyrano_code]
; ◆変数初期設定
[iscript]

sf.windowW = 1024;
sf.windowH = 576;
sf.setMessageX = 80;
sf.setMessageY = 400;
sf.setNameX = 140;
sf.setNameY = 370;

// レイヤ割り振り
sf.layMessage = '0';
sf.layHeroine = 1;
sf.layChara = 2;
sf.layFree = 3; // ここから自由に使っていいよー
sf.layerMax = TYRANO.kag.config.numCharacterLayers;

sf.zindexMessage = 100;
sf.zindexName = 110;
sf.zindexHeroine = 120;

// -------------------------------------------
// music
if(sf.musicView == null) sf.musicView = {};
sf.musicView['none'] = true;

if(f.musicNow == null) f.musicNow = 'none';
if(sf.musicLike == null) sf.musicLike = [];
if(sf.musicData == null) sf.musicData = [];
if(sf.musicDataNum == null) sf.musicDataNum = {};

sf.musicMax = 16;
musicDataSet(0, 'none', '-', '-', '-', '-');
musicDataSet(1, 'title',      'Heavy Slap',     'DOVA-SYNDROME', 'タイトル画面', 'Tagord');
musicDataSet(2, 'opening',    'ノクターン第2番 <span>変ホ長調 Op.9-2</span>', 'ポケットサウンド', 'プロローグ', 'Fryderyk Franciszek Chopin');
musicDataSet(3, 'nichijou_a', 'Triple Time',    'DOVA-SYNDROME', '日常Ａ', 'もっぴーさうんど');
musicDataSet(4, 'nichijou_b', '風のワルツ',       'DOVA-SYNDROME', '日常Ｂ', 'ハヤシユウ');
musicDataSet(5, 'nichijou_d', 'まねごと師',       'DOVA-SYNDROME', '日常Ｃ', '稿屋 隆');
musicDataSet(6, 'nichijou_c', '小さなエチュード',       'DOVA-SYNDROME', '日常Ｄ', 'すもち');
musicDataSet(7, 'battle',     'Dream train',    'DOVA-SYNDROME', 'ヒーローごっこ', '伊藤貴章');
musicDataSet(8, 'night',      'まったり作業中',    'DOVA-SYNDROME', '夜', 'sakunoken');
musicDataSet(9, 'class_a',    'メヌエット（ト長調） – バッハ', 'ポケットサウンド', '上位棟', 'Christian Petzold');
musicDataSet(10, 'ayashii',    'Uneasiness',     'DOVA-SYNDROME', '下位棟', 'Amege');
musicDataSet(11, 'huonn',     "Thief's time",   'DOVA-SYNDROME', '不穏', 'Ryo Lion');
musicDataSet(12, 'sizuka',    '3月の澄んだ空',    '甘茶の音楽工房', '静かに', '甘茶');
musicDataSet(13, 'memory',    '瞑想のピアノ',      'DOVA-SYNDROME', '昔話', 'lei');
musicDataSet(14, 'rain',    '雨だれの街',    'DOVA-SYNDROME', '雨の中で', 'MATSU');
musicDataSet(15, 'odayaka',   '甘酸っぱい思い出',  'ポケットサウンド', '青春', 'Azell');
musicDataSet(16, 'ending',    'Cappuccino',     'DOVA-SYNDROME', 'スタッフロール', 'Cloria Sound Labs');

function musicDataSet(num, id, title, site, name, comp){
sf.musicData[num] = [];
sf.musicData[num]["id"] = id;
sf.musicData[num]["title"] = title;
sf.musicData[num]["site"] = site;
sf.musicData[num]["name"] = name;
sf.musicData[num]["comp"] = comp;

if(sf.musicView[id] == null) sf.musicView[id] = sf.view_debug;

id = id + '';
sf.musicDataNum[id] = num;
}

if(sf.myozi == null) sf.myozi = '浅利';
if(sf.name == null) sf.name = 'ほのか';

// config
if(sf.volBgm == null) sf.volBgm = 50;
if(sf.volSe == null) sf.volSe = 50;
if(sf.textSpeed == null) sf.textSpeed = 80;
if(sf.autoSpeed == null) sf.autoSpeed = 400;
if(sf.textOnce == null) sf.textOnce = false;
if(sf.unreadSkip == null) sf.unreadSkip = false;
if(sf.selectSkipKeep == null) sf.selectSkipKeep = false;
if(sf.selectAutoKeep == null) sf.selectAutoKeep = false;
if(sf.textColorUn == null) sf.textColorUn = '0x000000';

// extra
if(sf.chapter == null)sf.chapter = {};
if(sf.chapter_ttl == null) sf.chapter_ttl = {};
if(sf.chapter_end == null) sf.chapter_end = {};

if(sf.eventcg_max == null) sf.eventcg_max = 18;
if(sf.eventcg_view == null){
sf.eventcg_view = {};

for(var i = 1; i<=sf.eventcg_max; i++){
tf.num = i + '';
sf.eventcg_view[tf.num] = sf.view_debug;
}

sf.eventcg_view['3a'] = sf.view_debug;
sf.eventcg_view['3b'] = sf.view_debug;
}

// -------------------------------------------
[endscript]

[config_record_label color="&sf.textColorUn"]

[bgmopt volume="&sf.volBgm"]
[seopt volume="&sf.volSe"]

[eval exp="tf.speed = 100 - sf.textSpeed"]
[eval cond="tf.speed == 0" exp="tf.speed = '0'"]
[configdelay speed="&tf.speed"]

[autoconfig speed="&sf.autoSpeed"]
[_tb_end_tyrano_code]

*indent

[tb_start_tyrano_code]
[iscript]
f.indent_rate = 1;

var text = TYRANO.kag.ftag.master_tag.text;
text.setIndent = function (bool) {
if (bool) {
var indent = f.indent_rate * parseInt(this.kag.stat.font.size);
$(".current_span").parent().css({
"text-indent" : (- indent) + "px",
"padding-left": (  indent) + "px"
});
}
};
text.showMessage_old = text.showMessage;
text.showMessage = function (message_str, pm) {
text.showMessage_old(message_str, pm);
text.setIndent($(".chara_name_area").html() !== "");
};
[endscript]
[_tb_end_tyrano_code]

*chara

[tb_start_tyrano_code]


; ◆キャラ定義
[chara_config time="300" pos_mode="false" effect="easeInOutCubic"]
[plugin name="frameanimation" blank_image="./data/image/blank.png"]


; -----------------------------------


; ◆キャラ登録準備
[iscript]
if(sf.charaData == null) sf.charaData = {};
if(sf.ex_chara_view == null) sf.ex_chara_view = {};
if(sf.ex_chara_view_p == null) sf.ex_chara_view_p = {};

sf.charaY = {};
sf.charaW = {};
[endscript]


; ◆EX用変数準備
[iscript]
// sf.ex_chara_num[0] = 'honoka';
// sf.ex_chara_name["honoka"] = 0;
// sf.ex_chara_parts["honoka"]["cos"][0] = normal;

sf.ex_chara_num = [];
sf.ex_chara_name = {};
sf.ex_chara_parts = {};
sf.ex_chara_label = {};

tf.ex_parts_old = '';
tf.ex_parts_now = '';
tf.ex_parts_count = 0;
[endscript]


; ◆キャラ登録関数
[macro name="charaSet"]
[wait time="1"]

[iscript]
if(mp.id != null){
sf.ex_chara_num[mp.id] = mp.name;
sf.ex_chara_name[mp.name] = mp.id;
}

tf.name = mp.name + '';
sf.charaY[tf.name] = mp.y;
sf.charaW[tf.name] = mp.w;
[endscript]

[chara_new name="%name" storage="&'chara/' + mp.name + '_base.png'"]
[endmacro]


; ◆表情登録関数
[macro name="faceSet"]
; [wait time="1"]

[iscript]

// ----------------------------------------------------------------
var chara = mp.chara,
	parts = mp.parts,
	id    = mp.id,
	label = mp.label,
	img   = mp.img;


// 初期化が必要であれば初期化
if(sf.charaData[chara] == null) sf.charaData[chara] = {};
if(sf.charaData[chara][parts] == null) sf.charaData[chara][parts] = {};
if(sf.charaData[chara][parts][id] == null) sf.charaData[chara][parts][id] = {};

// 画像
var img2;
if(img == '' || img == null) img2 = 'chara/' + chara + '_' + parts + '_' + id + '.png';
else img2 = 'chara/' + chara + '_' + parts + '_' + img + '.png';
img = img2;

// パーツ登録
sf.charaData[chara][parts][id] = {
	"label" : label,
	"img" : img,
};

// ----------------------------------------------------------------
// extra用
var num = sf.ex_chara_name[chara];
tf.ex_parts_now = parts;

if(tf.ex_parts_now != tf.ex_parts_old){
tf.ex_parts_old = tf.ex_parts_now;
tf.ex_parts_count = 0;
}

// id
if(sf.ex_chara_parts[chara] == null) sf.ex_chara_parts[chara] = {};
if(sf.ex_chara_parts[chara][parts] == null) sf.ex_chara_parts[chara][parts] = [];
sf.ex_chara_parts[chara][parts][tf.ex_parts_count] = id;

// label
if(sf.ex_chara_label[chara] == null) sf.ex_chara_label[chara] = {};
if(sf.ex_chara_label[chara][parts] == null) sf.ex_chara_label[chara][parts] = [];
sf.ex_chara_label[chara][parts][tf.ex_parts_count] = label;

tf.ex_parts_count ++;

// view記録用
if(sf.ex_chara_view[chara] == null) sf.ex_chara_view[chara] = sf.view_debug;

var view = sf.view_debug;
if(tf.ex_parts_count == 1 && parts != 'op') view = true;

if(sf.ex_chara_view_p[chara] == null) sf.ex_chara_view_p[chara] = {};
if(sf.ex_chara_view_p[chara][parts] == null) sf.ex_chara_view_p[chara][parts] = {};
if(sf.ex_chara_view_p[chara][parts][id] == null) sf.ex_chara_view_p[chara][parts][id] = {};
if(sf.ex_chara_view_p[chara][parts][id]["view"] == null) sf.ex_chara_view_p[chara][parts][id]["view"] = view;

// ----------------------------------------------------------------

// 一次変数に記録
tf.chara = chara;
tf.parts = parts;
tf.id    = id;
tf.label = label;
tf.img   = img;
[endscript]

[if exp="tf.parts == 'op'"]
[chara_layer name="&tf.chara" part="&tf.id" id="false" storage="../image/blank.png"]
[chara_layer name="&tf.chara" part="&tf.id" id="true" storage="&tf.img"]
[else]

[chara_layer name="&tf.chara" part="&tf.parts" id="&tf.id" storage="&tf.img"]
[endif]
[endmacro]


; ▽ほのか
[charaSet id="1" name="honoka" w="259" y="120"]
[faceSet chara="honoka" parts="cos" id="normal" label="制服"]
[faceSet chara="honoka" parts="cos" id="shihuku" label="私服"]
[faceSet chara="honoka" parts="cos" id="pajama" label="パジャマ"]
[faceSet chara="honoka" parts="cos" id="jersey" label="ジャージ"]
[faceSet chara="honoka" parts="cos" id="karita" label="借りた服"]
[faceSet chara="honoka" parts="me" id="normal" label="普通"]
[faceSet chara="honoka" parts="me" id="hannme" label="半目"]
[faceSet chara="honoka" parts="me" id="sorashi" label="逸らし"]
[faceSet chara="honoka" parts="me" id="sorashi_h" label="逸らし半目"]
[faceSet chara="honoka" parts="me" id="odoroki" label="驚き"]
[faceSet chara="honoka" parts="me" id="hart" label="ハート"]
[faceSet chara="honoka" parts="me" id="toziru" label="閉じる"]
[faceSet chara="honoka" parts="me" id="warau" label="笑う"]
[faceSet chara="honoka" parts="kuti" id="normal" label="普通"]
[faceSet chara="honoka" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="honoka" parts="kuti" id="hohoemu" label="微笑む"]
[faceSet chara="honoka" parts="kuti" id="warau" label="笑う"]
[faceSet chara="honoka" parts="mayu" id="normal" label="普通"]
[faceSet chara="honoka" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="honoka" parts="mayu" id="komaru" label="困る"]
[faceSet chara="honoka" parts="mayu" id="syunn" label="しゅん"]
[faceSet chara="honoka" parts="op" id="badge" label="善バッジ"]
[faceSet chara="honoka" parts="op" id="lost" label="×バッジ"]
[faceSet chara="honoka" parts="op" id="ase" label="汗"]
[faceSet chara="honoka" parts="op" id="tere" label="照れ"]
[faceSet chara="honoka" parts="op" id="naku" label="泣く"]

[iscript]
var name = 'honoka';
sf.charaData[name]["pose"] = {};
sf.charaData[name]["pose"]["normal"] = {
	"label" : "通常",
	"view" : sf.view_debug
};
sf.charaData[name]["pose"]["detana"] = {
	"label" : "出たな！",
	"view" : sf.view_debug
};

sf.ex_chara_label[name]["pose"] = [];
sf.ex_chara_label[name]["pose"][0] = '通常';
sf.ex_chara_label[name]["pose"][1] = '出たな！';

tf.me = [
["10%", 1],
["12%", 2],
["14%", 3],
["16%", 2],
["18%", 1],
["50%", 1],
["52%", 2],
["54%", 3],
["56%", 2],
["58%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['honoka']" name="honoka" part="me" s="7" id="normal"]
[fa_animation anime="&tf.me" w="&sf.charaW['honoka']" name="honoka" part="me" s="7" id="sorashi"]
[fa_animation anime="&tf.me" w="&sf.charaW['honoka']" name="honoka" part="me" s="7" id="hart"]
[fa_animation anime="&tf.me" w="&sf.charaW['honoka']" name="honoka" part="me" s="7" id="odoroki"]

; ほのか戦闘態勢
[charaSet name="honoka_battle" w="340" y="115"]
[faceSet chara="honoka_battle" parts="cos" id="normal" label="制服"]
[faceSet chara="honoka_battle" parts="me" id="normal" label="通常"]
[faceSet chara="honoka_battle" parts="kuti" id="normal" label="笑う"]
[faceSet chara="honoka_battle" parts="mayu" id="normal" label="きりっ"]


; ヤマト
[charaSet id="2" name="yamato" w="300" y="30"]
[faceSet chara="yamato" parts="cos" id="normal" label="ジャージ"]
[faceSet chara="yamato" parts="cos" id="oroshi" label="髪おろし"]
[faceSet chara="yamato" parts="cos" id="shihuku" label="私服"]
[faceSet chara="yamato" parts="cos" id="seihuku" label="制服"]
[faceSet chara="yamato" parts="me" id="normal" label="普通"]
[faceSet chara="yamato" parts="me" id="hannme" label="半目"]
[faceSet chara="yamato" parts="me" id="sorashi" label="逸らし"]
[faceSet chara="yamato" parts="me" id="sorashi_h" label="逸らし半目"]
[faceSet chara="yamato" parts="me" id="odoroki" label="驚き"]
[faceSet chara="yamato" parts="me" id="toziru" label="閉じる"]
[faceSet chara="yamato" parts="me" id="warau" label="笑う"]
[faceSet chara="yamato" parts="kuti" id="normal" label="普通"]
[faceSet chara="yamato" parts="kuti" id="warau" label="笑う"]
[faceSet chara="yamato" parts="kuti" id="toziru" label="閉じる"]
[faceSet chara="yamato" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="yamato" parts="kuti" id="okoru" label="怒る"]
[faceSet chara="yamato" parts="mayu" id="normal" label="普通"]
[faceSet chara="yamato" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="yamato" parts="mayu" id="odoroki" label="驚き"]
[faceSet chara="yamato" parts="mayu" id="komaru" label="困る"]
[faceSet chara="yamato" parts="mayu" id="syunn" label="しゅん"]
[faceSet chara="yamato" parts="op" id="badge" label="善バッジ"]
[faceSet chara="yamato" parts="op" id="lost" label="×バッジ"]
[faceSet chara="yamato" parts="op" id="ase" label="汗"]
[faceSet chara="yamato" parts="op" id="tere" label="照れ"]
[faceSet chara="yamato" parts="op" id="kega" label="ケガ"]

[iscript]
var name = 'yamato';
sf.charaData[name]["pose"] = {};
sf.charaData[name]["pose"]["normal"] = {
	"label" : "通常",
	"view" : true
};
sf.charaData[name]["pose"]["detana"] = {
	"label" : "出たな！",
	"view" : sf.view_debug
};
sf.charaData[name]["pose"]["dog"] = {
	"label" : "通常(犬)",
	"view" : sf.view_debug
};

sf.ex_chara_parts[name]["pose"] = [];
sf.ex_chara_parts[name]["pose"][0] = 'yamato';
sf.ex_chara_parts[name]["pose"][1] = 'yamato_dog';
sf.ex_chara_label[name]["pose"] = [];
sf.ex_chara_label[name]["pose"][0] = '通常';
sf.ex_chara_label[name]["pose"][1] = '獣化';

tf.me = [
["20%", 1],
["22%", 2],
["24%", 3],
["26%", 2],
["28%", 1],
["60%", 1],
["62%", 2],
["64%", 3],
["66%", 2],
["68%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['yamato']" name="yamato" part="me" s="6" id="normal"]
[fa_animation anime="&tf.me" w="&sf.charaW['yamato']" name="yamato" part="me" s="6" id="sorashi"]
[fa_animation anime="&tf.me" w="&sf.charaW['yamato']" name="yamato" part="me" s="6" id="odoroki"]

; ヤマト戦闘態勢
[charaSet name="yamato_battle" w="420" y="40"]
[faceSet chara="yamato_battle" parts="cos" id="normal" label="ジャージ"]
[faceSet chara="yamato_battle" parts="me" id="normal" label="通常"]
[faceSet chara="yamato_battle" parts="kuti" id="normal" label="笑う"]
[faceSet chara="yamato_battle" parts="mayu" id="normal" label="きりっ"]


; 犬ヤマト
[charaSet name="yamato_dog" w="360" y="15"]
[faceSet chara="yamato_dog" parts="cos" id="normal" label="ジャージ" img="jersey"]
[faceSet chara="yamato_dog" parts="kuti" id="normal" label="通常"]
[faceSet chara="yamato_dog" parts="kuti" id="warau" label="笑う"]
[faceSet chara="yamato_dog" parts="kuti" id="toziru" label="閉じる"]
[faceSet chara="yamato_dog" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="yamato_dog" parts="me" id="normal" label="通常"]
[faceSet chara="yamato_dog" parts="me" id="hannme" label="半目"]
[faceSet chara="yamato_dog" parts="me" id="toziru" label="閉じる"]
[faceSet chara="yamato_dog" parts="mayu" id="normal" label="通常"]
[faceSet chara="yamato_dog" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="yamato_dog" parts="mayu" id="syunn" label="しゅん"]
[faceSet chara="yamato_dog" parts="op" id="badge" label="善バッジ"]
[faceSet chara="yamato_dog" parts="op" id="lost" label="×バッジ"]
[faceSet chara="yamato_dog" parts="op" id="ase" label="汗"]
[faceSet chara="yamato_dog" parts="op" id="tere" label="照れ"]
[faceSet chara="yamato_dog" parts="op" id="kega" label="ケガ"]

[iscript]
if(sf.ex_chara_view_p['yamato']["pose"] == null){
sf.ex_chara_view_p['yamato']["pose"] = {};
sf.ex_chara_view_p['yamato']["pose"]["yamato"] = {};
sf.ex_chara_view_p['yamato']["pose"]["yamato"]["view"] = sf.view_debug;
sf.ex_chara_view_p['yamato']["pose"]["yamato_dog"] = {};
sf.ex_chara_view_p['yamato']["pose"]["yamato_dog"]["view"] = sf.view_debug;
}

if(sf.ex_chara_view_p['yamato_dog']["pose"] == null){
sf.ex_chara_view_p['yamato_dog']["pose"] = {};
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato"] = {};
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato"]["view"] = sf.view_debug;
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato_dog"] = {};
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato_dog"]["view"] = sf.view_debug;
}
[endscript]


; はるお
[charaSet id="3" name="haruo" w="310" y="5"]
[faceSet chara="haruo" parts="cos" id="normal" label="通常"]
[faceSet chara="haruo" parts="cos" id="apron" label="エプロンなし"]
[faceSet chara="haruo" parts="cos" id="jacket" label="ジャケット"]
[faceSet chara="haruo" parts="me" id="normal" label="普通"]
[faceSet chara="haruo" parts="me" id="hannme" label="半目"]
[faceSet chara="haruo" parts="me" id="toziru" label="閉じる"]
[faceSet chara="haruo" parts="me" id="warau" label="笑う"]
[faceSet chara="haruo" parts="kuti" id="normal" label="普通"]
[faceSet chara="haruo" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="haruo" parts="kuti" id="hohoemu" label="微笑む"]
[faceSet chara="haruo" parts="kuti" id="warau" label="笑う"]
[faceSet chara="haruo" parts="mayu" id="normal" label="普通"]
[faceSet chara="haruo" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="haruo" parts="op" id="ase" label="汗"]
; [faceSet chara="haruo" parts="op" id="tere" label="照れ"]
[iscript]
tf.me = [
["20%", 1],
["22%", 2],
["24%", 3],
["26%", 2],
["28%", 1],
["60%", 1],
["62%", 2],
["64%", 3],
["66%", 2],
["68%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['haruo']" name="haruo" part="me" s="7" id="normal"]

; 中学生
[charaSet id="4" name="boy" w="280" y="100"]
[faceSet chara="boy" parts="cos" id="normal" label="通常"]
[faceSet chara="boy" parts="me" id="normal" label="普通"]
[faceSet chara="boy" parts="me" id="hannme" label="半目"]
[faceSet chara="boy" parts="me" id="toziru" label="閉じる"]
[faceSet chara="boy" parts="kuti" id="normal" label="普通"]
[faceSet chara="boy" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="boy" parts="mayu" id="normal" label="普通"]
[faceSet chara="boy" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="boy" parts="op" id="badge" label="悪バッジ"]
[faceSet chara="boy" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["10%", 1],
["12%", 2],
["14%", 3],
["16%", 2],
["18%", 1],
["50%", 1],
["52%", 2],
["54%", 3],
["56%", 2],
["58%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['boy']" name="boy" part="me" s="6" id="normal"]

; リーマン
[charaSet id="5" name="ryman" w="380" y="10"]
[faceSet chara="ryman" parts="cos" id="normal" label="通常"]
[faceSet chara="ryman" parts="me" id="normal" label="普通"]
[faceSet chara="ryman" parts="me" id="hannme" label="半目"]
[faceSet chara="ryman" parts="me" id="toziru" label="閉じる"]
[faceSet chara="ryman" parts="me" id="ka" label="カッ"]
[faceSet chara="ryman" parts="kuti" id="normal" label="普通"]
[faceSet chara="ryman" parts="kuti" id="henya" label="へにゃ"]
[faceSet chara="ryman" parts="kuti" id="warau" label="笑う"]
[faceSet chara="ryman" parts="mayu" id="normal" label="普通"]
[faceSet chara="ryman" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="ryman" parts="op" id="badge" label="悪バッジ"]
[faceSet chara="ryman" parts="op" id="lost" label="×バッジ"]
[faceSet chara="ryman" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["20%", 1],
["22%", 2],
["24%", 3],
["26%", 2],
["28%", 1],
["80%", 1],
["82%", 2],
["84%", 3],
["86%", 2],
["88%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['ryman']" name="ryman" part="me" s="7" id="normal"]


; りりな
[charaSet id="6" name="ririna" w="380" y="60"]
[faceSet chara="ririna" parts="cos" id="normal" label="通常"]
[faceSet chara="ririna" parts="me" id="normal" label="普通"]
[faceSet chara="ririna" parts="me" id="hannme" label="半目"]
[faceSet chara="ririna" parts="me" id="toziru" label="閉じる"]
[faceSet chara="ririna" parts="me" id="warau" label="笑う"]
[faceSet chara="ririna" parts="kuti" id="normal" label="普通"]
[faceSet chara="ririna" parts="kuti" id="warau" label="笑う"]
[faceSet chara="ririna" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="ririna" parts="mayu" id="normal" label="普通"]
[faceSet chara="ririna" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="ririna" parts="mayu" id="komaru" label="困る"]
[faceSet chara="ririna" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["10%", 1],
["12%", 2],
["14%", 3],
["16%", 2],
["18%", 1],
["50%", 1],
["52%", 2],
["54%", 3],
["56%", 2],
["58%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['ririna']" name="ririna" part="me" s="6" id="normal"]

; 須賀
[charaSet id="7" name="tatsumi" w="330" y="20"]
[faceSet chara="tatsumi" parts="cos" id="normal" label="通常"]
[faceSet chara="tatsumi" parts="me" id="normal" label="普通"]
[faceSet chara="tatsumi" parts="me" id="hannme" label="半目"]
[faceSet chara="tatsumi" parts="me" id="toziru" label="閉じる"]
[faceSet chara="tatsumi" parts="me" id="warau" label="笑う"]
[faceSet chara="tatsumi" parts="kuti" id="normal" label="普通"]
[faceSet chara="tatsumi" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="tatsumi" parts="kuti" id="warau" label="笑う"]
[faceSet chara="tatsumi" parts="kuti" id="odoroki" label="驚き"]
[faceSet chara="tatsumi" parts="mayu" id="normal" label="普通"]
[faceSet chara="tatsumi" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="tatsumi" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["20%", 1],
["22%", 2],
["24%", 3],
["26%", 2],
["28%", 1],
["80%", 1],
["82%", 2],
["84%", 3],
["86%", 2],
["88%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['tatsumi']" name="tatsumi" part="me" s="6" id="normal"]


; アスカ
[charaSet id="8" name="asuka" w="230" y="50"]
[faceSet chara="asuka" parts="cos" id="normal" label="通常"]
[faceSet chara="asuka" parts="me" id="normal" label="普通"]
[faceSet chara="asuka" parts="me" id="hannme" label="半目"]
[faceSet chara="asuka" parts="me" id="toziru" label="閉じる"]
[faceSet chara="asuka" parts="me" id="warau" label="笑う"]
[faceSet chara="asuka" parts="kuti" id="normal" label="普通"]
[faceSet chara="asuka" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="asuka" parts="kuti" id="warau" label="笑う"]
[faceSet chara="asuka" parts="mayu" id="normal" label="普通"]
[faceSet chara="asuka" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["10%", 1],
["12%", 2],
["14%", 3],
["16%", 2],
["18%", 1],
["50%", 1],
["52%", 2],
["54%", 3],
["56%", 2],
["58%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['asuka']" name="asuka" part="me" s="6" id="normal"]

; ナナミ
[charaSet id="9" name="nanami" w="290" y="120"]
[faceSet chara="nanami" parts="cos" id="normal" label="通常"]
[faceSet chara="nanami" parts="me" id="normal" label="普通"]
[faceSet chara="nanami" parts="me" id="hannme" label="半目"]
[faceSet chara="nanami" parts="me" id="toziru" label="閉じる"]
[faceSet chara="nanami" parts="me" id="odoroki" label="驚き"]
[faceSet chara="nanami" parts="kuti" id="normal" label="普通"]
[faceSet chara="nanami" parts="kuti" id="hiraku" label="開く"]
[faceSet chara="nanami" parts="kuti" id="warau" label="笑う"]
[faceSet chara="nanami" parts="mayu" id="normal" label="普通"]
[faceSet chara="nanami" parts="mayu" id="kiri" label="きりっ"]
[faceSet chara="nanami" parts="op" id="ase" label="汗"]
[iscript]
tf.me = [
["20%", 1],
["22%", 2],
["24%", 3],
["26%", 2],
["28%", 1],
["70%", 1],
["72%", 2],
["74%", 3],
["76%", 2],
["78%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['nanami']" name="nanami" part="me" s="6" id="normal"]
[fa_animation anime="&tf.me" w="&sf.charaW['nanami']" name="nanami" part="me" s="6" id="odoroki"]


; ココノノ
[charaSet id="10" name="coconono" w="455" y="170"]
[faceSet chara="coconono" parts="cos" id="normal" label="通常"]
[faceSet chara="coconono" parts="me" id="normal" label="普通"]
; [faceSet chara="coconono" parts="me" id="hannme" label="半目"]
[faceSet chara="coconono" parts="me" id="toziru" label="閉じる
[faceSet chara="coconono" parts="me" id="warau" label="笑う"]
[faceSet chara="coconono" parts="kuti" id="normal" label="普通"]
[faceSet chara="coconono" parts="kuti" id="hiraku" label="開く"]
; [faceSet chara="coconono" parts="kuti" id="toziru" label="閉じる"]
[faceSet chara="coconono" parts="kuti" id="coco_hiraku" label="ココ・開く"]
[faceSet chara="coconono" parts="kuti" id="nono_hiraku" label="ノノ・開く"]
[faceSet chara="coconono" parts="kuti" id="warau" label="笑う"]
[faceSet chara="coconono" parts="kuti" id="coco_warau" label="ココ・笑う"]
[faceSet chara="coconono" parts="kuti" id="nono_warau" label="ノノ・笑う"]
[faceSet chara="coconono" parts="mayu" id="normal" label="普通"]
[faceSet chara="coconono" parts="mayu" id="warau" label="笑う"]
[faceSet chara="coconono" parts="mayu" id="komaru" label="困る"]
[faceSet chara="coconono" parts="op" id="ase" label="汗"]
; [faceSet chara="coconono" parts="op" id="naku" label="泣く"]
[iscript]
tf.me = [
["10%", 1],
["12%", 2],
["14%", 3],
["16%", 2],
["18%", 1],
["60%", 1],
["62%", 2],
["64%", 3],
["66%", 2],
["68%", 1],
];
[endscript]
[fa_animation anime="&tf.me" w="&sf.charaW['coconono']" name="coconono" part="me" s="7" id="normal"]


; モブ
[charaSet id="11" name="mob" w="564" y="20"]
[faceSet chara="mob" parts="cos" id="women" label="女性"]
[faceSet chara="mob" parts="cos" id="men" label="男性"]
[faceSet chara="mob" parts="cos" id="men2" label="男子生徒"]
[faceSet chara="mob" parts="cos" id="bad1" label="不良３人"]
[faceSet chara="mob" parts="cos" id="bad2" label="不良２人"]
[faceSet chara="mob" parts="cos" id="girl" label="女の子"]

; モブ2（モブ並べて表示させること想定してなかった…）
[charaSet id="12" name="mob2" w="564" y="20"]
[faceSet chara="mob2" parts="cos" id="boy" label="男の子"]


[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]
[return]
[_tb_end_tyrano_code]
