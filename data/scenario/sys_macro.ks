[_tb_system_call storage=system/_sys_macro.ks]

*start

[tb_start_tyrano_code]
; ◆タグ省略形マクロ
[macro name="posi"]
[position * frame="none" opacity="0" width="&sf.windowW" height="&sf.windowH"]
[endmacro]

; --------------------------------------

; ◆メッセージレイヤを表示しつつカレントレイヤにする
[macro name="message_current"]
[position layer="%layer" frame="none" width="%width| +sf.windowW" height="%height| +sf.windowH" margint="%margint|0" left="%left|0" top="%top|0" opacity="0" visible="true"]
[layopt layer="&mp.layer" opacity="255" left="0" top="0" visible="true"]
[current layer="&mp.layer"][er]
[endmacro]

; --------------------------------------

; ◆タイトル設定マクロ
[macro name="sceneTitle"]
[eval exp="f.sceneTitle = mp.text"]
[endmacro]

; --------------------------------------

; 効果音
[macro name="playseEx"]
; スキップ中は鳴らさない
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[playse *]
[endif]
[endmacro]

; 効果音停止
[macro name="stopseEx"]
[if exp="mp.mode == 'fadeout'"]
[fadeoutse time="500"]
[wait_skip time="500"]
[endif]

[stopse]
[endmacro]

[_tb_end_tyrano_code]


; =========================================================================

*message

[tb_start_tyrano_code]
; ◆メッセージウィンドウ各種

; ▼曜日表示
[macro name="message_day"]
[eval exp="tf.day = mp.day"]
[eval exp="tf.text = mp.text"]

[eval cond="tf.text == '浅利家・ほのかの部屋'" exp="tf.text = sf.myozi + '家・' + sf.name + 'の部屋'"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.messageDayFadeTime = 0"]

[else]
[eval exp="tf.messageDayFadeTime = 400"]
[if exp="mp.time != null"]
[eval cond="mp.time > 0" exp="tf.messageDayFadeTime = mp.time"]
[eval cond="mp.time <= 0" exp="tf.messageDayFadeTime = 0"]
[endif]
[endif]

; ---------------------------------------------

; 表示
[if exp="mp.mode == 'show'"]
[layopt layer="&sf.layMessage" visible="true"]

; スキップ中の処理
[if exp="tf.messageDayFadeTime == 0"]
[image layer="&sf.layMessage" storage="../image/frame_day.png" name="message_day" top="0" left="0"]
[message_current layer="message2" top="-15" left="10"]

;通常時の処理
[else]
[image layer="&sf.layMessage" storage="../image/frame_day.png" name="message_day" top="-40" left="0"]
[message_current layer="message2" top="-55" left="10"]

[iscript]
$('.message_day').css({"opacity": 0});
$('.message2_fore .message_inner').css({"opacity": 0});
[endscript]
[endif]

; 文字表示
[iscript]
tf.system.backlog.push('<p class="h2">' + tf.day + '曜日　' + tf.text + '</p>');
[endscript]

[current layer="message2"][er]
[nolog]
[nowait]
[font_color size="20" color="0xffffff"] [emb exp="tf.day"]
[font_color size="20"]曜日
[font_color size="14"]　　　[font_color size="18" color="0x553034"][emb exp="tf.text"][r]
[resetfont]
[font_color_reset]
[endnowait]
[endnolog]

[iscript]
$('.message_outer').css('background-color', 'rgba(0, 0, 0, 0)');
[endscript]

[if exp="tf.messageDayFadeTime > 0"]
[anim name="message_day" opacity="255" top="+=40" time="&tf.messageDayFadeTime"]
[anim layer="message2" opacity="255" top="+=40" time="&tf.messageDayFadeTime"]

[wait time="&tf.messageDayFadeTime"][wa]
[endif]

[current layer="message0"][er]

; ---------------------------------------------

; 更新
[elsif exp="mp.mode == 'set'"]

[current layer="message2"][er]
[nolog]
[nowait]
[font_color size="20" color="0xffffff"] [emb exp="tf.day"]
[font_color size="20"]曜日
[font_color size="14"]　　　[font_color size="18" color="0x553034"][emb exp="tf.text"][r]
[resetfont]
[font_color_reset]
[endnowait]
[endnolog]

[current layer="message0"][er]

; ---------------------------------------------

; 非表示
[else]

; スキップ時
[if exp="tf.messageDayFadeTime == 0"]
[current layer="message2"][er]
[free layer="&sf.layMessage" name="message_day"]
[layopt layer="message2" visible="false"]

; 通常時
[else]
[anim opacity="0" name="message_day" top="-=40" time="&tf.messageDayFadeTime / 2"]
[anim opacity="0" layer="message2" top="-=40" time="&tf.messageDayFadeTime / 2"]
[wait time="&tf.messageDayFadeTime / 2"][wa]

[layopt layer="message2" visible="false"]
[endif]

[current layer="message0"][er]
[endif]

[iscript]
$('.message_day').css({"opacity": 1});
$('.message2_fore .message_inner').css({"opacity": 1});
[endscript]
[endmacro]

; -------------------------------------------------------------------------

; ▼メッセージウィンドウ
[macro name="message"]
[eval exp="tf.wait = mp.wait"]
[eval exp="tf.mode = mp.mode"]
[eval exp="tf.sysbtn = mp.sysbtn"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.messageFadeTime = 0"]

[else]

[eval exp="tf.messageFadeTime = 500"]
[if exp="mp.time != null"]
[eval cond="mp.time > 0" exp="tf.messageFadeTime = mp.time"]
[eval cond="mp.time <= 0" exp="tf.messageFadeTime = 0"]
[endif]
[endif]


; 表示
[if exp="tf.mode == 'show'"]

[free layer="&sf.layMessage" name="message_window"]
[layopt layer="&sf.layMessage" visible="true"]

[if exp="tf.messageFadeTime == 0"]
[image layer="&sf.layMessage" storage="../image/frame.png" name="message_window" top="&sf.setMessageY" left="&sf.setMessageX"]

[else]
[image layer="&sf.layMessage" storage="../image/frame.png" name="message_window" top="&sf.setMessageY + 30" left="&sf.setMessageX"]
[iscript]
$('.message_window').css({"opacity": 0});
[endscript]
[endif]

[iscript]
$('.message0_fore').css('z-index', 3000);
$('.' + sf.layMessage + '_fore').css('z-index', sf.zindexMessage);
[endscript]

[if exp="tf.messageFadeTime > 0"]
[anim opacity="255" name="message_window" top="-=30" time="&tf.messageFadeTime"]
[wait cond="tf.wait != 'false'" time="&tf.messageFadeTime"]
[endif]

[message_current layer="message0" width="&sf.windowW - 370" top="&sf.setMessageY" left="&sf.setMessageX + 90"]
[current layer="message0"][er]

[glyph line="nextpage.gif" fix="true" left="900" top="520"]

; ウィンドウ非表示ボタン
[if exp="tf.sysbtn != 'false'"]
[showsystembutton]
[endif]

; ---------------------------------------------


; ノーフェード表示
[elsif exp="tf.mode == 'set'"]
[layopt layer="&sf.layMessage" visible="true"]

[iscript]
$('.message0_fore').css('z-index', 3000);
[endscript]

[message_current layer="message0" width="&sf.windowW - 370" top="&sf.setMessageY" left="&sf.setMessageX + 90"]
[current laery="message0"][er]

[glyph line="nextpage.gif" fix="true" left="900" top="520"]

; ウィンドウ非表示ボタン
[if exp="tf.sysbtn != 'false'"]
[showsystembutton]
[endif]

; ---------------------------------------------

; 非表示
[else]

; ウィンドウ非表示ボタン
[hidesystembutton]

[if exp="tf.messageFadeTime > 0"]
[anim name="message_window" opacity="0" top="+=30" time="&tf.messageFadeTime"]
[anim name="message_name" opacity="0" left="-=30" time="&tf.messageFadeTime"]
[anim layer="message1" opacity="0" left="-=30" time="&tf.messageFadeTime"]
[wait time="&tf.messageFadeTime"][wa]
[endif]

[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]

[free layer="&sf.layMessage" name="message_window"]
[free layer="&sf.layMessage" name="message_name"]
[freeimage layer="&sf.layMessage"]

; 次のためにopacityを戻しておく
[if exp="tf.messageFadeTime > 0"]
[anim name="message_window" opacity="255" time="10"]
[anim name="message_name" opacity="255" time="10"]
[anim layer="message1" opacity="255" time="10"]
[wait time="10"][wa]
[endif]
[endif]

[endmacro]


[macro name="showsystembutton"]
[iscript]
$('.message_close_btn').css({"display": "block"});
[endscript]
[endmacro]

[macro name="hidesystembutton"]
[iscript]
$('.message_close_btn').css({"display": "none"});
[endscript]
[endmacro]


; --------------------------------------

; ▼ネームウィンドウ
[macro name="message_name"]

[eval exp="tf.wait = mp.wait"]

[eval exp="tf.name = mp.name"]

[eval exp="tf.icon = 'normal'"]
[eval cond="tf.name == '主人公'" exp="tf.icon = 'honoka'"]
[eval cond="tf.name == '桐生ヤマト'" exp="tf.icon = 'yamato'"]
[eval cond="tf.name == '里井りり奈'" exp="tf.icon = 'ririna'"]
[eval cond="tf.name == '須賀たつみ'" exp="tf.icon = 'tatsumi'"]
[eval cond="tf.name == 'サラリーマン'" exp="tf.icon = 'ryman'"]
[eval cond="tf.name == 'はるお'" exp="tf.icon = 'haruo'"]

[eval cond="tf.name == '桐生アスカ'" exp="tf.icon = 'asuka'"]
[eval cond="tf.name == '桐生ナナミ'" exp="tf.icon = 'nanami'"]
[eval cond="tf.name == '桐生ココ・ノノ'" exp="tf.icon = 'coconono'"]
[eval cond="tf.name == '桐生ココ'" exp="tf.icon = 'coco'"]
[eval cond="tf.name == '桐生ノノ'" exp="tf.icon = 'nono'"]

[eval cond="tf.name == '主人公'" exp="tf.name = sf.myozi + ' ' + sf.name"]
[eval cond="tf.name == 'はるお'" exp="tf.name = sf.myozi + ' ' + mp.name"]

[if exp="mp.mode == 'show'"]
[image layer="&sf.layMessage" storage="../image/frame_name.png" name="message_name" top="&sf.setNameY" left="&sf.setNameX"]

[image layer="&sf.layMessage" storage="&'../image/name_icon_' + tf.icon + '.png'" name="name_icon" top="&sf.setNameY + 15" left="&sf.setNameX + 62"]

; 名前セット
[layopt layer="&sf.layMessage" visible="true"]
[message_current layer="message1" top="&sf.setNameY - 10" left="&sf.setNameX + 76"]
[current layer="message1"][er]
[nowait]
[font_color size="20" color="0xffffff"]

[nolog]
[emb exp="tf.name"][r]
[endnolog]

[resetfont][font_color_reset]
[endnowait]

[iscript]
tf.system.backlog.push("【" + tf.name + "】");

$('.message_outer').css('background-color', 'rgba(0, 0, 0, 0)');
[endscript]

[current layer="message0"][er]

; 非表示
[elsif exp="mp.mode == 'hide'"]

[current layer="message1"][er]
[free layer="&sf.layMessage" name="message_name"]
[free layer="&sf.layMessage" name="name_icon"]
[wait time="10"]
[current layer="message0"][er]

; 更新
[else]
[free layer="&sf.layMessage" name="name_icon"]
[image layer="&sf.layMessage" storage="&'../image/name_icon_' + tf.icon + '.png'" name="name_icon" top="&sf.setNameY + 15" left="&sf.setNameX + 62"]

[current layer="message1"][er]
[nowait]
[font_color size="20" color="0xffffff"]

[nolog]
[emb exp="tf.name"][r]
[endnolog]

[iscript]
tf.system.backlog.push("【" + tf.name + "】");
[endscript]

[resetfont][font_color_reset]
[endnowait]
[current layer="message0"][er]

[endif]

[endmacro]


[_tb_end_tyrano_code]


; =========================================================================

*text

[tb_start_tyrano_code]
; ◆テキスト補助
[macro name="浅利"]
[emb exp="sf.myozi"]
[endmacro]

[macro name="ほのか"]
[emb exp="sf.name"]
[endmacro]

[macro name="pr"]
[eval exp="tf.auto = TG.stat. is_auto"]
[if exp="tf.auto == false"][wait_skip time="100"][endif]
[p][er]
[iscript]
tf.system.backlog.push("<hr>");
[endscript]
[endmacro]

[macro name="ls"]
[l cond="sf.textOnce == false"]
[endmacro]

[macro name="font_color"]
[font size="%size|24" color="%color|0xffffff" edge="%edge|none" bold="%bold|false"]

; 既読色の変更。これを記述すると直後のmaskのアニメーションが飛ぶ…？waitで回避する。
[config_record_label color="%color|0xffffff"]
[wait cond="mp.wait > 0" time="%wait"]
[endmacro]

[macro name="font_color_reset"]
[config_record_label color="&sf.textColorUn"]
[wait cond="mp.wait > 0" time="%wait"]
[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*music

[tb_start_tyrano_code]
[macro name="bgm"]
[eval exp="tf.bgmFadeTime = 1500"]
[eval cond="mp.time >= 0" exp="tf.bgmFadeTime = mp.time"]

[if exp="mp.mode == 'change' || mp.mode == 'end'"]
[fadeoutbgm time="&tf.bgmFadeTime"]
[eval exp="f.musicNow = 'none'"]
[endif]

[if exp="mp.mode == 'play' || mp.mode == 'change'"]
[eval exp="sf.musicView[mp.id] = true"]
[eval exp="f.musicNow = mp.id"]
[playbgm storage="&mp.id + '.ogg'" click="true"]
[endif]
[endmacro]
[_tb_end_tyrano_code]



; =========================================================================

*weekCutIn

[tb_start_tyrano_code]
; ◆曜日カットイン開始マクロ
[macro name="weekCutIn"]
[eval exp="tf.title = mp.title"]
[eval exp="tf.text = mp.text"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.dayCutinFadeTime = 10"]
[else]
[eval exp="tf.dayCutinFadeTime = 800"]
[endif]

; ---------------------------------------------

[if exp="tf.is_skip == true"]
[message_current layer="message2" left="0" top="190"]
[layopt layer="message2" visible="false"]
[else]

[mask effect="slideInDown" time="&tf.dayCutinFadeTime" folder="bgimage" graphic="sys_back_nobar.jpg"]
[message_current layer="message2" left="30" top="190"]
; [anim layer="message2" opacity="0" time="0"][wa]
[iscript]
$('.message2_fore .message_inner').css({"opacity": 0});
[endscript]
[endif]

; 文字表示
[nolog]
[nowait]
[font_color size="50" color="0xffffff"]
[emb exp="tf.title"][r]
[graph storage="line.png"][r]
[font_color size="25" color="0xff2970"]
[emb exp="tf.text"][r]
[endnowait]
[endnolog]
[font_color_reset]

[iscript]
$('.message_outer').css('background-color', 'rgba(0, 0, 0, 0)');
$(".message2_fore").css({ "z-index":10000000000, "text-align":"center", "line-height":0 });
$('.message2_fore span').css({ "display":"block", "margin-top":20 });
$('.message2_fore img').css({ "margin-top":30 });

tf.system.backlog.push('<p class="h1">' + tf.title + '</p>');
[endscript]

; スキップ中はフェードなし
[if exp="tf.is_skip == true"]
[mask time="&tf.dayCutinFadeTime" folder="bgimage" graphic="sys_back_nobar.jpg"]
[layopt layer="message2" visible="true"]
[wait time="100"]
[else]

; 通常時
[anim layer="message2" opacity="255" left="-= 30" time="&tf.dayCutinFadeTime"][wa]
[wait time="1200"]
[endif]

[endmacro]

; --------------------------------------

; ◆曜日カットイン終了マクロ
[macro name="weekCutOut"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.dayCutinFadeTime = 10"]
[else]
[eval exp="tf.dayCutinFadeTime = 600"]
[endif]

; スキップ時
[if exp="tf.is_skip == true"]
[mask_off effect="fadeOut" time="&tf.dayCutinFadeTime"]

; 通常時
[else]
[anim layer="message2" opacity="0" time="&tf.dayCutinFadeTime"][wa]
[mask_off effect="fadeOut" time="&tf.dayCutinFadeTime"]
[wait time="300"]
[endif]

; 元の状態に戻す
[position layer="message2" visible="false"]
[iscript]
$(".message2_fore").removeAttr('style');
$(".message2_fore").css({"width": sf.windowW, "height":sf.windowH, "position":"absolute","display":"none"});
$('.message2_fore span').removeAttr('style');
$('.message2_fore img').removeAttr('style');
[endscript]

[current layer="message0"][er]
[endmacro]


[_tb_end_tyrano_code]



; =========================================================================

*eyecatch

[tb_start_tyrano_code]

; ◆アイキャッチ
[macro name="eyecatch"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.eyecatchFadeTime = 10"]
[mask effect="fadeIn" graphic="%graphic|sys_eyecatch.jpg" time="&tf.eyecatchFadeTime"]
[else]

[eval exp="tf.eyecatchFadeTime = 1000"]
[mask effect="%effect|slideInRight" graphic="%graphic|sys_eyecatch.jpg" time="&tf.eyecatchFadeTime"]
[endif]

[endmacro]

; --------------------------------------

; ◆アイキャッチオフ
[macro name="eyecatch_off"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[mask_off effect="%effect|fadeOut" time="10"]
[else]

[wait time="200"]
[mask_off effect="%effect|slideOutLeft" time="800"]
[endif]

[wait time="10"]
[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*battle

[tb_start_tyrano_code]
; ◆対戦演出
; [battle_set mode="left" id="honoka" name="浅利ほのか" text="改行したいときは<br>でいい"]
; [battle_set mode="right" id="honoka2" name="浅利ほのか" text="戦闘開始時の台詞"]
; [battle_cutin]
; 戻った時の画面をセット
; [battle_cutin_off]

[eval exp="f.battleImg = []"]
[eval exp="f.battleImgText = []"]
[eval exp="f.battleName = []"]
[eval exp="f.battleText = []"]

; --------------------------------------

; ▼セット
[macro name="battle_set"]
[eval exp="tf.id = mp.id"]
[eval exp="tf.name = mp.name"]
[eval cond="tf.name == '主人公'" exp="tf.name = sf.myozi + ' ' + sf.name"]
[eval exp="tf.text = mp.text"]

[eval exp="f.battleImg[mp.mode] = '../image/battle_' + tf.id + '.png'"]
[eval exp="f.battleImgText[mp.mode] = '../image/battle_' + tf.id + '_text.png'"]
[eval exp="f.battleName[mp.mode] = tf.name"]
[eval exp="f.battleText[mp.mode] = tf.text"]

[hidemenubutton]
[hidesystembutton]

; バックログ記録停止
[nolog]
[endmacro]

; --------------------------------------


; ▼カットイン
[macro name="battle_cutin"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.battleFadeTime = 10"]
[else]
[eval exp="tf.battleFadeTime = 1000"]
[endif]

[layopt layer="&sf.layFree" visible="true"]

; 〇背景～立ち絵
[if exp="tf.is_skip == true"]
[eval exp="tf.charaLeft = 0"]
[eval exp="tf.charaTextLeft = 0"]
[eval exp="tf.charaRight = 500"]
[eval exp="tf.charaTextRight = 540"]
[else]
[eval exp="tf.charaLeft = -100"]
[eval exp="tf.charaTextLeft = -100"]
[eval exp="tf.charaRight = 600"]
[eval exp="tf.charaTextRight = 640"]
[endif]

[image layer="&sf.layFree" name="battle_overlay" storage="../bgimage/black.jpg" top="0"]

[image layer="&sf.layFree" name="battle_chara_left" storage="&f.battleImg['left']" left="&tf.charaLeft"]
[image layer="&sf.layFree" name="battle_chara_right" storage="&f.battleImg['right']" left="&tf.charaRight"]

[image layer="&sf.layFree" name="battle_line" storage="../image/battle_line.png" left="432"]

[image layer="&sf.layFree" name="battle_chara_text_left" storage="&f.battleImgText['left']" left="&tf.charaTextLeft"]
[image layer="&sf.layFree" name="battle_chara_text_right" storage="&f.battleImgText['right']" top="440" left="&tf.charaTextRight"]

[iscript]
$('.battle_line').css({"z-index": 8});
$('.battle_chara_text_left').css({"z-index": 10});
$('.battle_chara_text_right').css({"z-index": 10});
[endscript]

; 通常時のみアニメーション表示
[if exp="tf.is_skip == true"]
[image layer="&sf.layFree" name="battle_bar_top" storage="../image/battle_bar.png" top="0"]
[image layer="&sf.layFree" name="battle_bar_bottom" storage="../image/battle_bar.png" top="536"]

[iscript]
$('.battle_overlay').css({"opacity": 0.4});
[endscript]

[else]
[image layer="&sf.layFree" name="battle_bar_top" storage="../image/battle_bar.png" top="-40"]
[image layer="&sf.layFree" name="battle_bar_bottom" storage="../image/battle_bar.png" top="576"]

[iscript]
$('.battle_overlay').css({"opacity": 0});
$('.battle_line').css({"opacity": 0});
$('.battle_chara_left').css({"opacity": 0});
$('.battle_chara_text_left').css({"opacity": 0});
$('.battle_chara_right').css({"opacity": 0});
$('.battle_chara_text_right').css({"opacity": 0});
[endscript]

[anim name="battle_overlay" opacity="100" time="500"]
[anim name="battle_bar_top" top="+=40" time="500"]
[anim name="battle_bar_bottom" top="-=40" time="500"]
[wait time="300"]

[anim name="battle_line" opacity="255" time="500"]
[wait time="300"]

[anim name="battle_chara_left" opacity="255" left="+=100" time="300"]
[anim name="battle_chara_text_left" opacity="255" left="+=100" time="300"]
[anim name="battle_chara_right" opacity="255" left="-=100" time="300"]
[anim name="battle_chara_text_right" opacity="255" left="-=100" time="300"]
[endif]

; 〇台詞
[if exp="tf.is_skip == true"]
[eval exp="tf.messageImgLeft = 290"]
[eval exp="tf.messageImgRight = 350"]
[eval exp="tf.messageLeft = 330"]
[eval exp="tf.messageRight = 390"]
[else]
[eval exp="tf.messageImgLeft = 290 - 50"]
[eval exp="tf.messageImgRight = 350 + 50"]
[eval exp="tf.messageLeft = 330 - 50"]
[eval exp="tf.messageRight = 390 + 50"]
[endif]

[image layer="&sf.layFree" name="battle_message_left" storage="../image/battle_message_left.png" left="&tf.messageImgLeft" top="130"]
[image layer="&sf.layFree" name="battle_message_right" storage="../image/battle_message_right.png" left="&tf.messageImgRight" top="320"]

[iscript]
$('.battle_message_left').css({"z-index": 10});
$('.battle_message_right').css({"z-index": 10});
[endscript]

; 通常時のみアニメーション表示
[if exp="tf.is_skip != true"]
[iscript]
$('.battle_message_left').css({"opacity": 0});
$('.battle_message_right').css({"opacity": 0});
$('.message2_fore .message_inner').css({"opacity": 0});
$('.message3_fore .message_inner').css({"opacity": 0});
[endscript]
[endif]

[message_current layer="message2" top="125" left="&tf.messageLeft"]
[font_color size="16" color="0xff2970"]
[nowait]
[emb exp="f.battleName['left']"][r]
[font_color size="20" color="0xffffff"]
[emb exp="f.battleText['left']"]
[endnowait]

[message_current layer="message3" top="315" left="&tf.messageRight"]
[font_color size="16" color="0xff2970"]
[nowait]
[emb exp="f.battleName['right']"][r]
[font_color size="20" color="0xffffff"]
[emb exp="f.battleText['right']"]
[endnowait]

[font_color_reset]

[iscript]
$('.message_outer').css('background-color', 'rgba(0, 0, 0, 0)');
[endscript]

; 通常時のみアニメーション表示
[if exp="tf.is_skip != true"]
[anim name="battle_message_left" opacity="255" left="+=50" time="400"]
[anim name="battle_message_right" opacity="255" left="-=50" time="400"]
[anim layer="message2" opacity="255" left="+=50" time="400"]
[anim layer="message3" opacity="255" left="-=50" time="400"]
[wait time="400"][wa]

[wait time="600"]
[endif]

; 〇VS
[image layer="&sf.layFree" name="battle_vs" storage="../image/battle_vs.png" top="235" left="460"]

[iscript]
$('.battle_vs').css({"z-index": 12});
[endscript]

; 通常時のみ
[if exp="tf.is_skip != true"]
[quake count="2" hmax="10" vmax="0" time="200"]
[endif]

; 〇クリック待ち
[glyph line="none.gif" fix="true" left="980" top="540"]

[if exp="tf.is_skip == true"]
[wait time="100"]
[else]
[message_current layer="message0"][p]

[mask effect="slideInDown" time="500" folder="bgimage" graphic="sys_back_nobar.jpg"]
[hidemenubutton]
[endif]

; 〇裏で全部リセット
[layopt layer="message2" visible="false"]
[layopt layer="message3" visible="false"]
[freeimage layer="&sf.layFree"]
[image layer="&sf.layFree" name="battle_mask_bg" storage="../bgimage/sys_back_nobar.jpg"]

; 通常時のみ
[if exp="tf.is_skip != true"]
[mask_off time="10"]
[wait time="100"]

; 〇画像フェードイン
[image layer="&sf.layFree" name="battle_mask_img" storage="../image/battle_ry.png" top="&235 - 30" left="460"]

; [anim name="battle_mask_img" opacity="0" time="0"][wa]
[iscript]
$('.battle_mask_img').css({"opacity": 0});
[endscript]

[anim name="battle_mask_img" effect="easeOutExpo" opacity="255" top="+=30" time="200"][wa]

; 〇クリック待ち
[glyph line="none.gif" fix="true" left="980" top="540"]
[message_current layer="message0"][p]

; 〇画像フェードアウト
[anim name="battle_mask_img" opacity="0" time="200"][wa]

[mask time="10" folder="bgimage" graphic="sys_back_nobar.jpg"]
[endif]

[showmenubutton]
[endnolog]

[freeimage layer="&sf.layFree"]
[endmacro]

; --------------------------------------

; ▼カットイン終わり
[macro name="battle_cutin_off"]
; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[mask_off effect="slideOutUp" time="800"]
[wait time="800"][wa]
[endif]

[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*chara

[tb_start_tyrano_code]
; ◆立ち絵まとめ
[macro name="chara_img"]

; エクストラ用
[iscript]
sf.ex_chara_view[mp.name] = true;

if(mp.name == 'yamato'){
sf.ex_chara_view_p['yamato']["pose"]["yamato"]["view"] = true;
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato"]["view"] = true;
}
if(mp.name == 'yamato_dog'){
sf.ex_chara_view_p['yamato']["pose"]["yamato_dog"]["view"] = true;
sf.ex_chara_view_p['yamato_dog']["pose"]["yamato_dog"]["view"] = true;
}

if(mp.cos != null) sf.ex_chara_view_p[mp.name]['cos'][mp.cos]["view"] = true;
if(mp.mayu != null) sf.ex_chara_view_p[mp.name]['mayu'][mp.mayu]["view"] = true;
if(mp.me != null) sf.ex_chara_view_p[mp.name]['me'][mp.me]["view"] = true;
if(mp.kuti != null) sf.ex_chara_view_p[mp.name]['kuti'][mp.kuti]["view"] = true;
if(mp.ase != null) sf.ex_chara_view_p[mp.name]['op']['ase']["view"] = true;
if(mp.tere != null) sf.ex_chara_view_p[mp.name]['op']['tere']["view"] = true;
if(mp.naku != null) sf.ex_chara_view_p[mp.name]['op']['naku']["view"] = true;
if(mp.kega != null) sf.ex_chara_view_p[mp.name]['op']['kega']["view"] = true;
if(mp.badge != null) sf.ex_chara_view_p[mp.name]['op']['badge']["view"] = true;
if(mp.lost != null) sf.ex_chara_view_p[mp.name]['op']['lost']["view"] = true;
[endscript]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.battleFadeTime = 10"]

[else]
[eval exp="tf.battleFadeTime = 600"]
[if exp="mp.time != null"]
[eval cond="mp.time > 0" exp="tf.battleFadeTime = mp.time"]
[eval cond="mp.time <= 0" exp="tf.battleFadeTime = 10"]
[endif]
[endif]

; ▼変数代入
[eval exp="tf.left = mp.left"]
[eval exp="tf.posi = mp.posi"]
[eval exp="tf.wait = mp.wait"]

; ▽位置調整用
; 縦
[eval exp="tf.top = sf.charaY[mp.name]"]
[if exp="mp.top > 0"][eval exp="tf.top = mp.top"]
[elsif exp="mp.top == 0"][eval exp="tf.top = '0'"][endif]

; 横
[eval cond="tf.left == null && tf.posi == null" exp="tf.posi = 'center'"]

[eval exp="tf.posi_center = (sf.windowW / 2) - (sf.charaW[mp.name] / 2)"]
[eval exp="tf.posi_left = (sf.windowW / 3) - (sf.charaW[mp.name] / 2)"]
[eval exp="tf.posi_right = (sf.windowW / 3) * 2 - (sf.charaW[mp.name] / 2)"]

[eval cond="tf.posi == 'center'" exp="tf.left = tf.posi_center"]
[eval cond="tf.posi == 'left'" exp="tf.left = tf.posi_left"]
[eval cond="tf.posi == 'left2'" exp="tf.left = tf.posi_left - 150"]
[eval cond="tf.posi == 'right'" exp="tf.left = tf.posi_right"]
[eval cond="tf.posi == 'right2'" exp="tf.left = tf.posi_right + 150"]

[eval cond="tf.left != null" exp="tf.left = tf.left"]


; レイヤ
[eval cond="mp.type == 'heroine'" exp="tf.layer = sf.layHeroine"]
[eval cond="mp.type != 'heroine'" exp="tf.layer = sf.layChara"]
[eval cond="mp.layer != null" exp="tf.layer = mp.layer"]

; ▼表示
[if exp="mp.mode == 'show'"]

; ヒロイン位置
[if exp="mp.type == 'heroine'"]
[iscript]
$('.' + sf.layHeroine + '_fore').css('z-index', sf.zindexHeroine);
[endscript]

[fa_chara_show layer="&tf.layer" name="%name" top="%top|340" left="%left|-40" cos="%cos|normal" me="%me|normal" kuti="%kuti|normal" mayu="%mayu|normal" ase="%ase|false" naku="%naku|false" badge="%badge|false" lost="%lost|false" tere="%tere|false" aozame="%aozame|false" kega="%kega|false" wait="%wait|true" time="&tf.battleFadeTime"]

; 通常位置
[else]
[fa_chara_show layer="&tf.layer" name="%name" top="&tf.top" left="&tf.left" cos="%cos|normal" me="%me|normal" kuti="%kuti|normal" mayu="%mayu|normal" ase="%ase|false" naku="%naku|false" tere="%tere|false" kega="%kega|false" badge="%badge|false" lost="%lost|false" wait="%wait|true" time="&tf.battleFadeTime"]
[endif]

; ▼位置変更
[elsif exp="mp.mode == 'move'"]
[chara_move name="%name" anim="true" left="&tf.left" time="&tf.battleFadeTime" wait="%wait|true"]

; ▼表情変更
[elsif exp="mp.mode == 'face'"]
[fa_chara_part layer="&tf.layer" * ]

; ▼１人非表示
[elsif exp="mp.mode == 'hide'"]

[if exp="mp.type == 'heroine'"]
[if exp="tf.battleFadeTime > 10"]
[chara_hide_all layer="&sf.layHeroine" wait="%wait|true" time="400"]
[else]
[chara_hide_all layer="&sf.layHeroine" wait="true" time="10"]
[endif]

[else]
[if exp="tf.battleFadeTime > 10"]
[anim layer="&tf.layer" name="%name" opacity="0" time="400"]
[wait cond="tf.wait != 'false'" time="400"]
[wa cond="tf.wait != 'false'"]
[endif]

[free layer="&tf.layer" name="%name"]

[endif]

; ▼全て非表示
[elsif exp="mp.mode == 'hide_all'"]

[if exp="tf.battleFadeTime > 10"]
[chara_hide_all layer="&sf.layHeroine" wait="%wait|false" time="400"]
[chara_hide_all layer="&sf.layChara" wait="%wait|true" time="400"]
[wait cond="mp.wait != false" time="400"]
[endif]

[freeimage layer="&sf.layHeroine"]
[freeimage layer="&sf.layChara"]
[endif]

; スキップ時処理落ち防止
[wait cond="tf.is_skip == true" time="20"]
[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*cutin

[tb_start_tyrano_code]
; ◆キャラカットイン
[macro name="cutin"]

; スキップ中はフェードなし
[iscript]
$('.system-btn-area').css({"opacity": 0});
tf.is_skip = TG.stat.is_skip;
[endscript]
[if exp="tf.is_skip != true"]
[eval exp="tf.cutinFadeTime = 800"]

[eval exp="tf.name = mp.name"]
[eval exp="tf.move = mp.move"]
[eval exp="tf.image = '../image/cutin_' + tf.name + '.jpg'"]
[eval cond="mp.image != null" exp="tf.image = mp.image"]

[layopt layer="&sf.layFree" visible="true"]
[iscript]
$('.' + sf.layFree + '_fore').css({"z-index": 3000, "opacity": 1});
[endscript]

[image cond="tf.move == 'right'" layer="&sf.layFree" name="cutin" top="108" left="-180" storage="&tf.image"]
[image cond="tf.move == 'left'" layer="&sf.layFree" name="cutin" top="108" left="+180" storage="&tf.image"]

[iscript]
$('.cutin').css({"opacity": 0});
[endscript]

[anim name="cutin" effect="%in|easeOutExpo" left="0" opacity="255" time="&tf.cutinFadeTime"][wa]

[glyph line="none.gif" fix="true" left="980" top="540"]
[message_current layer="message0"][p]

[anim cond="tf.move == 'right'" layer="&sf.layFree" name="cutin" effect="%out|easeOutExpo" left="+=180" opacity="0" time="&tf.cutinFadeTime"]
[anim cond="tf.move == 'left'" layer="&sf.layFree" name="cutin" effect="%out|easeOutExpo" left="-=180" opacity="0" time="&tf.cutinFadeTime"]
[wa]
[freeimage layer="&sf.layFree"]
[iscript]
$('.' + sf.layFree + '_fore').css('z-index', 13);
[endscript]

[message_current layer="message0"]
[endif]

[iscript]
$('.system-btn-area').css({"opacity": 1});
[endscript]
[endmacro]
[_tb_end_tyrano_code]



; =========================================================================

*image

[tb_start_tyrano_code]

; ◆スチル
[macro name="still"]
[eval exp="tf.num = mp.num + ''"]
[eval exp="tf.still = 'event/still' + tf.num + '.jpg'"]
[eval exp="tf.mode = mp.mode"]
[eval exp="tf.black = mp.black"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.stillFadeTime = 10"]

[else]
[eval exp="tf.stillFadeTime = 1000"]
[if exp="mp.time != null"]
[eval cond="mp.time > 10" exp="tf.stillFadeTime = mp.time"]
[eval cond="mp.time <= 10" exp="tf.stillFadeTime = 10"]
[endif]
[endif]

; 表示
[if exp="mp.mode == 'start'"]

[chara_img mode="hide_all" time="300"]

[if exp="tf.is_skip != true"]
[hidesystembutton]
[anim name="message_window" opacity="0" time="300"]
[anim name="message_name" opacity="0" time="300"]
[anim layer="message1" opacity="0" time="300"]

[if exp="tf.black == 'true'"]
[bgimg storage="black.jpg" time="600"]
[endif]

[wa]
[endif]

[eval exp="sf.eventcg_view[tf.num] = true"]
[wait_skip]

[bgimg storage="&tf.still"]
[wait_skip time="400"]

[if exp="tf.is_skip != true"]

[anim name="message_window" opacity="255" time="300"]
[anim name="message_name" opacity="255" time="300"]
[anim layer="message1" opacity="255" time="300"][wa]

[showsystembutton]
[endif]

; 切り替え
[elsif exp="mp.mode == 'change'"]
[eval exp="sf.eventcg_view[tf.num] = true"]
[bgimg storage="&tf.still" time="400"]

; 終了
[else exp="mp.mode == 'end'"]
[bgimg storage="%storage" time="600"]
[message mode="set"]

[endif]

[endmacro]

; --------------------------------------

; ◆背景画像変更
[macro name="bgimg"]
; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.bgimgFadeTime = 10"]

[else]
[eval exp="tf.bgimgFadeTime = 1000"]
[if exp="mp.time != null"]
[eval cond="mp.time > 10" exp="tf.bgimgFadeTime = mp.time"]
[eval cond="mp.time <= 10" exp="tf.bgimgFadeTime = 10"]
[endif]
[endif]

[if exp="tf.is_skip == true"]
[image layer="base" storage="%storage"]
[else]
[bg storage="%storage" method="%method|fadeIn" time="&tf.bgimgFadeTime" wait="%wait|true"]
[endif]
[endmacro]

; --------------------------------------

[macro name="wait_skip"]
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[wait cond="tf.is_skip != true" time="%time|200"]
[endmacro]

; --------------------------------------

; ◆メッセージウィンドウ系を非表示
; スキップ中はフェードなし
[macro name="window_all_hide"]
[message_name mode="hide"]
[message_day mode="hide" wait="false" time="%time"]
[chara_img mode="hide_all" wait="false" time="%time"]
[message mode="hide" time="%time"]
[endmacro]

; --------------------------------------

; ◆前景レイヤの解放
[macro name="charaFreeLayer"]
[iscript]
var num;
for(var i=mp.start; i<=mp.end; i++){
num = i;
if(i == 0) num = '0';
tyrano.plugin.kag.ftag.startTag("freeimage",{"layer":num});
}
[endscript]
[endmacro]

; --------------------------------------

; ◆freeレイヤーの解放
; サブルーチンに入った直後などに使う。
[macro name="freeLayer"]
[iscript]
var fl = TYRANO.kag.layer.getFreeLayer();
// 指定したグループのみ
if(mp.include) {
fl.find("." + mp.include).remove();
}
// 指定したグループ以外
else if(mp.exclude){
fl.find(":not(." + mp.exclude + ")").remove();
}
// 全て
else{
fl.empty();
}
[endscript]

; roleボタンは強制的にfixなので、fixレイヤを解放
[clearfix]

[iscript]
$('.layer_fore').css("display", "none");
[endscript]

[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*config

[tb_start_tyrano_code]
; ◆コンフィグ用

; オンオフボタン
[macro name="onoffBtn"]
[eval exp="tf.offX = +mp.x + 95"]

[if exp="mp.if === true"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_on_on.png" name=" allHide" y="&mp.y" x="&mp.x" target="&mp.on"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_off_off.png" name=" allHide" y="&mp.y" x="&tf.offX" target="&mp.off"]
[else]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_on_off.png" name=" allHide" y="&mp.y" x="&mp.x" target="&mp.on"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_off_on.png" name=" allHide" y="&mp.y" x="&tf.offX" target="&mp.off"]
[endif]
[endmacro]

; --------------------------------------

; ５つボタン
[macro name="speedChangeBtn"]
[if exp="mp.set == mp.speed"]
[button enterse="select.ogg" clickse="click.ogg" graphic="&'../image/config/btn_num0' + mp.num + '_on.png'" name="allHide" x="%x" y="%y" target="%target" exp="&'tf.speed =' + mp.speed"]
[else]
[button enterse="select.ogg" clickse="click.ogg" graphic="&'../image/config/btn_num0' + mp.num + '_off.png'" name="allHide" x="%x" y="%y" target="%target" exp="&'tf.speed =' + mp.speed"]
[endif]
[endmacro]

; --------------------------------------

; スライダーボタン設置
[macro name="slider"]
[iscript]
var num;

for(var i=1; i<=20; i++){
num = i;
if(i == 0) num = '0';

var img = "../image/config/slider_on.png";

var now = mp.now;
if(now < i*5 || now == 0) img = "../image/config/slider_off.png";

tyrano.plugin.kag.ftag.startTag("button",{
"graphic": img,
"x": parseInt(mp.x) + (i * 20),
"y": parseInt(mp.y),
"exp": 'tf.click=' + i * 5,
"target": mp.name + '_change'
});
}
[endscript]
[endmacro]


[_tb_end_tyrano_code]



; =========================================================================

*extra

[tb_start_tyrano_code]
; HTMLの画像にボタン機能を持たせるマクロ
; [html]
; <div id="button_ボタンの名前">ボタンの画像</div>
; [endhtml]
; [マクロの名前 id="button_ボタンの名前" storage="ジャンプ先シナリオ名.ks" target="*ジャンプ先ラベル名"]
[macro name="htmlBtn"]
[iscript]
$("#"+mp.id).click(function () {
TG.kag.ftag.startTag("jump",{storage:mp.storage, target:mp.target});
});
[endscript]
[endmacro]
[_tb_end_tyrano_code]



; =========================================================================

*memory

[tb_start_tyrano_code]
; 回想終了用
[macro name="memory_end"]
[eval cond="mp.chapter != null" exp="sf.chapter[mp.chapter] = true"]

[if exp="f.memoryMode"]
[cancelskip]
[eval exp="f.memoryMode = false"]
[eval exp="f.memoryBack = true"]
[jump storage="ex_chapter.ks" target="*start"]
[s]
[endif]
[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*lineMessage

[tb_start_tyrano_code]
; 準備
[macro name="lineMessageStart"]

; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[window_all_hide]

[hidemenubutton]
[hidesystembutton]

; 画像準備
[image storage="../bgimage/black.jpg" layer="&sf.layFree" name="line_bg" visible="true"]

; 表示
[if exp="tf.is_skip == true"]
[image storage="%img" layer="&sf.layFree" top="25" left="380" name="line_message" visible="true"]
[iscript]
$('.line_bg').css({"opacity": 0.4});
[endscript]

[else]
[image storage="%img" layer="&sf.layFree" top="-80" left="380" name="line_message" visible="true"]

; [anim name="line_bg" opacity="0" time="0"][wa]
; [anim name="line_message" opacity="0" time="0"][wa]
[iscript]
$('.line_bg').css({"opacity": 0});
$('.line_message').css({"opacity": 0});
[endscript]

[anim name="line_bg" opacity="80" time="400"]
[wait time="500"]
[anim name="line_message" opacity="255" top="+=105" time="800" effect="easeOutExpo"]
[wa]
[endif]

[html]
<div class="myMessage">
<div class="myMessage-posi">
<div id="message-area">
<ul id="message-inner">
</ul>
</div>
</div>
</div>
[endhtml]

[iscript]
$('.layer_free').css({"z-index": "50"});
lineMessage.reset();
[endscript]

[message_current layer="message0"]
[endmacro]


; 台詞セット
[macro name="lineMessageSet"]
[eval exp="tf.name = mp.name"]
[eval cond="tf.name == '主人公'" exp="tf.name = sf.myozi + sf.name"]

[eval exp="tf.image = 'none'"]
[eval cond="mp.image != null" exp="tf.image = 'data/image/' + mp.image"]

[iscript]
lineMessage.set(mp.id, mp.mode, tf.name, mp.text, tf.image);
[endscript]

[glyph line="none.gif" fix="true" left="980" top="540"]
[p cond="mp.click != 'false'"]

[iscript]
tf.system.backlog.push(tf.name + "：" + mp.text);
lineMessage.click();
tf.system.backlog.push("<hr>");
[endscript]

[wait time="230"]
[endmacro]

; 終了
[macro name="lineMessageEnd"]
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[p]
[wait_skip time="200"]
[endif]

[iscript]
if(tf.is_skip == true) $('.myMessage').css({"opacity": 0});
else $('.myMessage').animate({"opacity": 0}, 300);
[endscript]
[wait_skip time="300"]

[cm]

[if exp="tf.is_skip != true"]
[wait_skip time="100"]

[anim name="line_message" opacity="0" top="-=105" time="800" effect="easeOutExpo"]
[wait_skip time="400"]
[anim name="line_bg" opacity="0" time="300"]
[wa]
[endif]

[freeimage layer="&sf.layFree"]

[wait_skip time="200"]

[showmenubutton]
[showsystembutton]
[endmacro]

[_tb_end_tyrano_code]



; =========================================================================

*select

[tb_start_tyrano_code]

; 選択肢準備
[macro name="select_set"]
; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.selectFadeTime = 10"]
[else]
[eval exp="tf.selectFadeTime = 295"]
[endif]

[image layer="&sf.layFree" storage="../bgimage/black.jpg" name="select_bg" visible="true"]

[if exp="tf.is_skip == true"]
[eval exp="f.selectX = 275"]

[else]
[iscript]
$('.select_bg').css({"opacity": 0});
[endscript]
[eval exp="f.selectX = 310"]
[endif]

[eval exp="f.selectY = []"]
[eval exp="f.selectY = [0, 140, 230, 310, 400]"]

[eval exp="f.select_count = 0"]

[iscript]
tf.system.backlog.push("<hr>◆選択肢");
[endscript]
[endmacro]


; ボタンセット
[macro name="select_btn"]
[eval exp="tf.text = mp.text"]

[eval exp="f.select_count ++"]
[eval exp="tf.count = f.select_count"]

[nowait]
[glink text="&mp.text" name="&'select_btn, select_num' + tf.count" size="22" x="&f.selectX" y="&f.selectY[tf.count]" storage="%storage" target="%target" enterse="select.ogg" clickse="click.ogg"]
[endnowait]

[if exp="tf.is_skip != true"]
[iscript]
$('.select_btn').css({"opacity": 0});
[endscript]
[endif]

[iscript]
tf.system.backlog.push(tf.text);
[endscript]
[endmacro]



; 選択肢表示
[macro name="select_show"]
; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[eval exp="tf.text = mp.text"]

[iscript]
select.hover();
$('.layer.3_fore').css({"z-index": 999999});
[endscript]

[if exp="tf.is_skip == true"]
[iscript]
$('.select_bg').css({"opacity": 0.4});
$('.select_btn').css({"opacity": 1});
[endscript]

; --------------------------------------
[else]
[anim name="select_bg" opacity="120" time="&tf.selectFadeTime"]
[wait time="&tf.selectFadeTime"][wa]

[wait time="30"]
[anim name="select_btn" opacity="255" left="-=30" time="&tf.selectFadeTime"]
[wait time="&tf.selectFadeTime"][wa]
[endif]

[endmacro]


; 選択肢非表示
[macro name="select_hide"]
; スキップ中はフェードなし
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip == true"]
[eval exp="tf.selectFadeTime = 10"]
[else]
[eval exp="tf.selectFadeTime = 300"]
[endif]

[eval cond="mp.title != ''" exp="tf.title = mp.title"]

[if exp="tf.is_skip != true"]
[anim name="select_bg" opacity="0" time="&tf.selectFadeTime"]
[anim name="select_btn" opacity="0" time="&tf.selectFadeTime"]
[wait_skip time="&tf.selectFadeTime"][wa]
[endif]

[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 13});

if(tf.title != ''){
	tf.system.backlog.push("<hr>◆" + tf.title + "<hr>");
}
[endscript]

; スキップ解除
[cancelskip]
[endmacro]


; 選択後の画像表示
[macro name="select_after_image"]
[if exp="mp.mode == 'show'"]
[image * layer="&sf.layFree" name="select_after" visible="true" left="18" top="180"]

[iscript]
$('.layer.3_fore').css({"z-index": 150});
[endscript]

; [anim name="select_after" opacity="0" time="0"][wa]
[iscript]
$('.select_after').css({"opacity": 0});
[endscript]

[anim name="select_after" opacity="255" top="-=20" time="600" effect="easeOutExpo"]

[elsif exp="mp.mode == 'hide'"]
[anim name="select_after" opacity="0" top="+=20" time="300" effect="easeOutExpo"][wa]
[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 12});
[endscript]
[endif]
[endmacro]



; ヒーローごっこルールの画像表示
[macro name="rule_image"]
[eval exp="tf.x = [0, 240, 440, 640]"]

[if exp="mp.mode == 'show'"]
[image * layer="&sf.layFree" name="&'rule_image' + mp.num" visible="true" left="&tf.x[mp.num]" top="120"]

[iscript]
$('.layer.3_fore').css({"z-index": 150});
[endscript]

; [anim name="&'rule_image' + mp.num" opacity="0" time="0"][wa]
[iscript]
$('.rule_image' + mp.num).css({"opacity": 0});
[endscript]

[anim name="&'rule_image' + mp.num" opacity="255" top="+=20" time="600" effect="easeOutExpo"]

[elsif exp="mp.mode == 'hide'"]
[anim name="rule_image1" opacity="0" top="+=20" time="300" effect="easeOutExpo"]
[anim name="rule_image2" opacity="0" top="+=20" time="300" effect="easeOutExpo"]
[anim name="rule_image3" opacity="0" top="+=20" time="300" effect="easeOutExpo"][wa]
[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 12});
[endscript]

[endif]
[endmacro]


[_tb_end_tyrano_code]


; =========================================================================
*return

[tb_start_tyrano_code]
[return]
[_tb_end_tyrano_code]
