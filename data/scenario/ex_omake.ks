[_tb_system_call storage=system/_ex_omake.ks]

*start

[tb_start_tyrano_code]

; ▼mask on
[mask cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]

; ◆システムメニュー非表示
[hidemenubutton]

; ◆戻って来た
[if exp="f.omake_back"]

; スキップ解除
[cancelskip]

[bgm mode="end"]
[hidemenubutton]
[mask time="1000"]

[window_all_hide time="0"]
[hidesystembutton]
[hidemenubutton]

[cm]
[chara_img mode="hide_all" time="0"]
[freeLayer]
[freeimage layer="0"]

[else]
[mask cond="f.ex_subpage_fade != false" time="300"]
[endif]

; バックログ記録停止
[nolog]

; バックログ削除
[eval exp="tf.system.backlog = []"]

[cm]
[freeLayer]
[image layer="base" storage="../bgimage/sys_back.jpg"]

*back
[image layer="0" name="all_hide" storage="../image/extra/ttl_extra.png" left="15" top="12" visible="true"]

; ページ共通ボタン
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]


[message_current layer="message0"]

[nowait]

[if exp="sf.chapter_end['ED1']"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/btn_substory01.png" x="160" y="90" storage="subStory01.ks"]
[else]
[image layer="0" storage="../image/extra/btn_substory01_lock.png" x="160" y="90"]
[endif]

[if exp="sf.chapter_end['ED2']"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/btn_substory02.png" x="160" y="220" storage="subStory02.ks"]
[else]
[image layer="0" storage="../image/extra/btn_substory02_lock.png" x="160" y="220"]
[endif]

[if exp="sf.chapter_end['ED1'] && sf.chapter_end['ED2'] && sf.chapter_end['ED3']"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/btn_substory03.png" x="160" y="350" storage="subStory03.ks"]
[else]
[image layer="0" storage="../image/extra/btn_substory03_lock.png" x="160" y="350"]
[endif]

[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2']"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/btn_omake.png" x="352" y="485" storage="subStory04.ks"]
[endif]

[endnowait]

*mask_off
[if exp="f.omake_back"]
[mask_off time="1000"]
[bgm id="&f.oldMusic" mode="play"]
[endif]

[eval exp="f.omake_back = false"]

; ▼mask_off
[mask_off cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = false"]
[eval exp="f.ex_fade = true"]
[s]


[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code]
