[_tb_system_call storage=system/_ex_tmp.ks]

*start

[tb_start_tyrano_code]
[mask cond="tf.ex_subpage_fade != false" time="300"]

; [eval exp="tf.ex_fade = true"]

[cm]
[freeLayer]

[image layer="base" storage="../bgimage/sys_back.jpg"]


*back
[image layer="0" name="all_hide" storage="../image/extra/ttl_extra.png" left="15" top="12" visible="true"]

; ページ共通ボタン
[button name="all_hide" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]




*mask_off
[mask_off cond="tf.ex_subpage_fade != false" time="300"]
[eval exp="tf.ex_subpage_fade = false"]
[s]


[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code]

