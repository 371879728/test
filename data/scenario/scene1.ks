[_tb_system_call storage=system/_scene1.ks]

*start

[tb_start_tyrano_code]
[system_load]

*debug
[showmenubutton]
; [eval exp="f.sugasato = 'ririna'"]
; [eval exp="sf.chapter_end['ED1'] = true"]
; [eval exp="sf.chapter_end['ED2'] = true"]
; [eval exp="f.root_dog = 3"]
; [eval exp="f.memoryMode = true"]

; [jump storage="title_screen.ks"]
; [jump storage="ex_omake.ks"]

[jump storage="mainStory01.ks"]
; [jump storage="subStory04.ks"]
[s]


*scenario_test
[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]
[image layer="base" storage="bg_school_class_a.jpg"]
[message mode="show" time="0"]
[mask_off]

[bgm id="nichijou_a" mode="play"]

*scenario_test_back
[message mode="set"]
[message_name name="主人公" mode="show"]
「ネームウィンドウ表示」[pr]

繰り返す[pr]

[jump target="*scenario_test_back"]
[s]


*mob_test
[bgm id="nichijou_a" mode="play"]
[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]
[image layer="base" storage="bg_school_class_a.jpg"]
[message mode="show" time="0"]
[mask_off]

[message mode="set"]
test[pr]

[chara_img name="yamato" mode="show" posi="left" wait="false"]
[chara_img name="ryman" mode="show" posi="right" wait="false"]

[pr]
[chara_img name="ryman" mode="move" posi="right2"]
[chara_img name="yamato" mode="move" posi="right"]
[pr]

[chara_img name="mob" cos="women" mode="show" posi="left2"]
[pr]

[chara_img name="mob" cos="men" mode="face"]
[pr]

[chara_img name="mob" cos="bad1" mode="face"]
[pr]

[chara_img name="mob" cos="bad2" mode="face"]
[pr]

[chara_img name="mob" cos="girl" mode="face"]
[pr]

[s]


*select_test

[bgm id="nichijou_a" mode="play"]
[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]
[image layer="base" storage="bg_school_class_a.jpg"]
[message mode="show" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[mask_off]

*loop
[message mode="set"]
test[pr]

[playse storage="dog.ogg"]

[pr]

[select_set]
[select_btn id="select_num1_a" text="選択肢１" storage="scene1.ks" target="*select2_root1"]
[select_btn id="select_num1_b" text="選択肢２" storage="scene1.ks" target="*select2_root2"]
[select_show]
[s]


*select2_root1
[select_hide]
[message_day mode="set" day="月" text="自宅・リビング"]
[message mode="set"]

[select_after_image mode="show" storage="../image/select_icon_p.png"]
選択肢１[pr]
[select_after_image mode="hide"]

[jump target="*select_end"]
[s]

*select2_root2
[select_hide]
[message_day mode="set" day="月" text="自宅・リビング"]
[message mode="set"]

[select_after_image mode="show" storage="../image/select_icon_d.png"]
選択肢２[pr]
[select_after_image mode="hide"]

[jump target="*select_end"]
[s]


*select_end
[message mode="set"]
test end[pr]

[jump target="*loop"]
[s]


*line
[bgm id="nichijou_a" mode="play"]
[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]
[image layer="base" storage="bg_school_class_a.jpg"]
[message mode="show" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[mask_off]

[lineMessageStart img="../image/line_message01.png"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_photo_ed3.png" text="写真" click="false"]
[lineMessageSet id="yamato" mode="right" name="桐生" text="楽しそうだな。それどこだ？"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="いま都心に来てるの"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="兄ちゃんの出張のお供"]
[lineMessageSet id="yamato" mode="right" name="桐生" text="じゃあ今日はヒーローごっこ休みだな"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="うん。また来週ね"]
[lineMessageSet id="yamato" mode="right" name="桐生" text="おう"]
[lineMessageSet id="yamato" mode="right" name="桐生" text="台風気をつけて"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="ありがと　桐生くんもね"]
[lineMessageSet id="yamato" mode="right" name="桐生" image="line_stamp02.png" text="スタンプ：ひゃっほー"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_stamp02.png" text="スタンプ：ひゃっほー"]
[lineMessageEnd]

[s]



*battle
[bgm mode="end"]

[message_day mode="hide" wait="false"]
[chara_img mode="hide_all" wait="false"]
[message mode="hide"]

[bgm id="battle" mode="play"]

; 対戦演出開始
[battle_set mode="left" id="yamato" name="桐生 ヤマト" text="手加減しないからな"]
[battle_set mode="right" id="honoka2" name="中学生" text="僕の智略を見せてあげよう"]
[battle_cutin]

; キャラ表示
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[message_day mode="show" day="月" text="住宅街" time="0"]
[message time="0" mode="show"]

[bgm mode="end"]

; 対戦演出おわり
[battle_cutin_off]

[bgm id="nichijou_a" mode="play"]


[message mode="set"]
test end[pr]

[jump target="*loop"]

[s]



; 曜日カットインテスト
[weekCutIn title="月曜日" text="Monday"]
[chara_img mode="face" name="honoka" me="normal"]
[weekCutOut]

[s]

[_tb_end_tyrano_code]

