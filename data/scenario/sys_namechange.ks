[_tb_system_call storage=system/_sys_namechange.ks]

*start

[tb_start_tyrano_code]
[if exp="tf.name_fade != false"]
[mask time="300"]
[endif]

[cm]
[freeLayer]
[image layer="base" storage="../bgimage/sys_back_nobar.jpg"]

[eval exp="tf.myozi = sf.myozi"]
[eval exp="tf.name = sf.name"]
[eval exp="tf.m = sf.myozi"]
[eval exp="tf.n = sf.name"]

[chara_img name="honoka" mode="show" time="0" left="40"]

*nameChange_back
[cm]
[freeimage layer="0"]

[layopt layer="0" page="fore" visible="true"]

[ptext layer="0" text="※最大文字数は４文字です" size="18" x="410" y="100" color="0xffffff"]

[image layer="0" storage="../image/config/name_change_myozi.png" left="335" top="155" visible="true"]
[edit name="tf.myozi" initial="&tf.m" color="0xffffff" left="420" top="165" width="250" size="22" maxchars="4"]

[image layer="0" storage="../image/config/name_change_name.png" left="335" top="245" visible="true"]
[edit name="tf.name" initial="&tf.n" color="0xffffff" left="420" top="255" width="250" size="22" maxchars="4"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_name_reset.png" x="300" y="355"  target="*nameReset"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_name_cmt.png" x="520" y="355"  target="*dialog"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_close.png" x="430" y="465"  target="*return" name="menu_close"]

[if exp="tf.name_fade != false"]
[eval exp="tf.name_fade = false"]
[mask_off time="300"]
[endif]
[s]

*nameReset
[eval exp="tf.m = '浅利'"]
[eval exp="tf.n = 'ほのか'"]
[jump target="*nameChange_back"]
[s]

[_tb_end_tyrano_code]

*dialog

[tb_start_tyrano_code]
[commit name="tf.myozi"]
[commit name="tf.name"]
[eval exp="tf.m = tf.myozi"]
[eval exp="tf.n = tf.name"]
[dialog type="confirm" text="&'「' + tf.myozi + ' ' + tf.name + '」でいいですか？'" storage="" target="next" storage_cancel="" target_cancel="nameChange_back"]
[s]
[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]
[eval exp="sf.myozi = tf.myozi"]
[eval exp="sf.name = tf.name"]

[bgm mode="end" time="800"]

[jump storage="mainStory01.ks"]
[s]
[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]
[mask time="300"]
[cm]

[chara_img name="honoka" mode="hide" time="0"]
[freeLayer]

[eval exp="tf.title_fade = true"]
[jump storage="title_screen.ks" target="back"]
[s]
[_tb_end_tyrano_code]

