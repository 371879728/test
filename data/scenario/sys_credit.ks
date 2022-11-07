[_tb_system_call storage=system/_sys_credit.ks]

*start

[tb_start_tyrano_code]
; スタッフロール

[image layer="base" storage="../bgimage/sys_title.jpg"]

[image layer="0" name="credit_text" storage="../image/credit_text.png" left="310" top="230" visible="true"]

[wait time="300"]
[mask_off time="1000"]
[wait time="100"]

[bgm id="ending" mode="play"]

; 流れる
[anim name="credit_text" top="-=2380" time="22000" effect="linear"]

[glyph line="none.gif" fix="true" left="980" top="540"]
[message_current layer="message0"]
[l]

[stopanim name="credit_text"]

[config_record_label color="0xffffff"]
[wait time="10"]

[return]
[_tb_end_tyrano_code]

