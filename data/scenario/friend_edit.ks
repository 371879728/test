[_tb_system_call storage=system/_friend_edit.ks]

*start

[tb_start_tyrano_code]
[sceneTitle text="どんな顔だったかな？"]

; 準備
[eval exp="f.edit_fade = true"]
[eval exp="f.edit_mode = true"]

[eval exp="sf.editHead = [0, '白っぽい髪', '茶髪（半分赤い）', 'ピンクの髪', '青い髪', '白っぽい髪（短）']"]
[eval exp="sf.editFace = [0, 'ぼーっとした顔', 'きりっとした顔', '笑った顔', 'ふにゃっとした顔']"]
[eval exp="sf.editCos = [0, '女子制服', 'ベージュのニット', '青いインナーの制服', '赤いジャージ', 'かわいいシャツ']"]

[eval exp="f.maxHead = 5"]
[eval exp="f.maxFace = 4"]
[eval exp="f.maxCos = 5"]

[eval cond="sf.nowHead == null" exp="sf.nowHead = 1"]
[eval cond="sf.nowFace == null" exp="sf.nowFace = 1"]
[eval cond="sf.nowCos == null" exp="sf.nowCos  = 1"]

; キャラ定義
[chara_new name="friend" storage="chara/friend_base.png"]
[chara_layer name="friend" part="hair" id="hair1" storage="chara/friend_hair1.png"]
[chara_layer name="friend" part="hair" id="hair2" storage="chara/friend_hair2.png"]
[chara_layer name="friend" part="hair" id="hair3" storage="chara/friend_hair3.png"]
[chara_layer name="friend" part="hair" id="hair4" storage="chara/friend_hair4.png"]
[chara_layer name="friend" part="hair" id="hair5" storage="chara/friend_hair5.png"]
[chara_layer name="friend" part="body" id="body1" storage="chara/friend_body1.png"]
[chara_layer name="friend" part="body" id="body2" storage="chara/friend_body2.png"]
[chara_layer name="friend" part="body" id="body3" storage="chara/friend_body3.png"]
[chara_layer name="friend" part="body" id="body4" storage="chara/friend_body4.png"]
[chara_layer name="friend" part="body" id="body5" storage="chara/friend_body5.png"]
[chara_layer name="friend" part="face" id="face1" storage="chara/friend_face1.png"]
[chara_layer name="friend" part="face" id="face2" storage="chara/friend_face2.png"]
[chara_layer name="friend" part="face" id="face3" storage="chara/friend_face3.png"]
[chara_layer name="friend" part="face" id="face4" storage="chara/friend_face4.png"]

[if exp="f.musicNow != 'nichijou_c'"]
[bgm mode="end"]
[endif]

*back
[cm]

; スキップ解除
[cancelskip]
[autostop]

[hidesystembutton]

[eval cond="sf.nowHead <= 0"         exp="sf.nowHead = f.maxHead"]
[eval cond="sf.nowHead > f.maxHead" exp="sf.nowHead = 1"]
[eval cond="sf.nowFace <= 0"         exp="sf.nowFace = f.maxFace"]
[eval cond="sf.nowFace > f.maxFace" exp="sf.nowFace = 1"]
[eval cond="sf.nowCos <= 0"          exp="sf.nowCos  = f.maxCos"]
[eval cond="sf.nowCos > f.maxCos"   exp="sf.nowCos  = 1"]

[if exp="f.edit_fade"]
[mask time="500"]
[wait time="200"]
[window_all_hide time="0"]
[image storage="sys_edit.jpg" layer="base"]
[endif]


; 似顔絵
[eval exp="tf.hair = sf.nowHead"]
[eval cond="tf.hair == 0" exp="tf.hair = '0'"]
[eval exp="tf.face = sf.nowFace"]
[eval cond="tf.face == 0" exp="tf.face = '0'"]
[eval exp="tf.body = sf.nowCos"]
[eval cond="tf.body == 0" exp="tf.body = '0'"]

[if exp="f.edit_fade == false"]
[chara_part name="friend" time="0" hair="&'hair' + tf.hair" face="&'face' + tf.face" body="&'body' + tf.body"]
[endif]


; ヒント
[layopt layer="&sf.layFree" visible="false"]
[image layer="&sf.layFree" storage="../image/edit_hint.png" left="135" top="440"]

[eval exp="tf.flag = false"]
[eval exp="f.friend_edit = ''"]

[if    exp="sf.nowHead == 1 && sf.nowFace == 1 && sf.nowCos == 1"]
[eval exp="f.friend_edit = 'honoka'"]
[eval exp="tf.flag = true"]

[elsif exp="sf.nowHead == 2 && sf.nowFace == 3 && sf.nowCos == 4"]
[eval exp="f.friend_edit = 'yamato'"]
[eval exp="tf.flag = true"]

[elsif exp="sf.nowHead == 3 && sf.nowFace == 4 && sf.nowCos == 5"]
[eval exp="f.friend_edit = 'ririna'"]
[eval exp="tf.flag = true"]

[elsif exp="sf.nowHead == 4 && sf.nowFace == 2 && sf.nowCos == 3"]
[eval exp="f.friend_edit = 'tatsumi'"]
[eval exp="tf.flag = true"]

[elsif exp="sf.nowHead == 5 && sf.nowFace == 1 && sf.nowCos == 2"]
[eval exp="f.friend_edit = 'haruo'"]
[eval exp="tf.flag = true"]

[endif]

[layopt cond="tf.flag" layer="&sf.layFree" visible="true"]


; ボタン類
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/edit_btn_ng.png" target="edit_ng" x="240" y="475"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/edit_btn_ok.png" target="edit_ok" x="530" y="475"]

[eval exp="f.x = [455, 920]"]
[eval exp="f.y = [133, 237, 348]"]

; 頭
[button enterse="select.ogg" graphic="../image/edit_btn_prev.png" x="&f.x[0]" y="&f.y[0]" target="back" exp="sf.nowHead --"]
[button enterse="select.ogg" graphic="../image/edit_btn_next.png" x="&f.x[1]" y="&f.y[0]" target="back" exp="sf.nowHead ++"]

; 顔
[button enterse="select.ogg" graphic="../image/edit_btn_prev.png" x="&f.x[0]" y="&f.y[1]" target="back" exp="sf.nowFace --"]
[button enterse="select.ogg" graphic="../image/edit_btn_next.png" x="&f.x[1]" y="&f.y[1]" target="back" exp="sf.nowFace ++"]

; 表情
[button enterse="select.ogg" graphic="../image/edit_btn_prev.png" x="&f.x[0]" y="&f.y[2]" target="back" exp="sf.nowCos --"]
[button enterse="select.ogg" graphic="../image/edit_btn_next.png" x="&f.x[1]" y="&f.y[2]" target="back" exp="sf.nowCos ++"]

[html]
<div class="friend-edit">
<div class="friend-edit-posi">
<p class="head">[emb exp="sf.editHead[sf.nowHead]"]</p>
<p class="face">[emb exp="sf.editFace[sf.nowFace]"]</p>
<p class="cos">[emb exp="sf.editCos[sf.nowCos]"]</p>
</div>
</div>
[endhtml]


[if exp="f.edit_fade"]
[chara_show name="friend" time="0" left="106" top="122"]
[chara_part name="friend" time="0" hair="&'hair' + tf.hair" face="&'face' + tf.face" body="&'body' + tf.body"]

[mask_off time="500"]

[if exp="f.musicNow != 'nichijou_c'"]
[bgm id="nichijou_c" mode="play"]
[endif]

[eval exp="f.edit_fade = false"]
[endif]


[s]
[_tb_end_tyrano_code]


*edit_ng
[tb_start_tyrano_code]
[eval exp="f.friend_edit = 'cancel'"]
[_tb_end_tyrano_code]

*edit_ok
[tb_start_tyrano_code]
[mask time="500"]
[cm]
[freeLayer]
[freeimage layer="0"]
[freeimage layer="&sf.layFree"]

[eval exp="f.edit_mode = false"]
[return]
[s]
[_tb_end_tyrano_code]

