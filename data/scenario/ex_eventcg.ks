[_tb_system_call storage=system/_ex_eventcg.ks]

*start

[tb_start_tyrano_code]

; ▼mask on
[mask cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]

[cm]
[freeLayer]
[freeimage layer="0"]
[freeimage layer="1"]

[image layer="base" storage="../bgimage/sys_back.jpg"]

[eval exp="tf.nowpage = 1"]
[eval exp="tf.maxpage = 2]

; ▼スチルリストマクロ
[macro name="eventcg_list"]
[eval exp="tf.num = mp.num + ''"]
[eval exp="tf.img = '../image/extra/eventcg_img_s_' + tf.num + '.jpg'"]
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" layer="1" cond="sf.eventcg_view[tf.num] == true" graphic="&tf.img" x="&mp.x" y="&mp.y" target="&'*img' + tf.num"]
[image name="all_hide" layer="1" cond="sf.eventcg_view[tf.num] != true" storage="../image/extra/eventcg_img_s_locked.png" left="&mp.x" top="&mp.y" visible="true"]
[endmacro]

; ▼スチル表示マクロ
[macro name="eventcg_view"]
[mask time="500"]

[cm]
[freeimage layer="0"]
[freeimage layer="1"]

[image layer="base" storage="&'event/still' + mp.num + '.jpg'"]
[mask_off time="500"]
[cm]

; クリック待ち
[glyph line="none.gif" fix="true" left="980" top="540"]
[endmacro]

; ▼スチル非表示マクロ
[macro name="eventcg_view_off"]
[mask time="500"]

; クリック待ちグリフ戻し
[glyph line="nextpage.gif" fix="true" left="900" top="520"]

[eval exp="tf.eventcg_back = true"]
[jump target="*back"]
[endmacro]


; ◆リスト表示
*back
[cm]
[freeimage layer="0"]
[freeimage layer="1"]

[image layer="base" storage="sys_back.jpg"]
[image layer="0" storage="../image/extra/ttl_eventcg.png" left="15" top="12" visible="true"]

; ページ共通ボタン
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]

; ページ操作
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_prev.png" x="280" y="500" target="*prev"]

[message_current layer="message0"]
[layopt layer="message0" left="470" top="470"]
[font_color size="18" color="0xffffff"]
[nowait]
[emb exp="tf.nowpage"] / [emb exp="tf.maxpage"]
[endnowait]
[font_color_reset]

[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_next.png" x="590" y="500" target="*next"]

; ▼リスト
[eval exp="tf.x = [200, 410, 620, 830]"]
[eval exp="tf.y = [80, 210, 340]"]

[nowait]
[if exp="tf.nowpage == 1"]
[eventcg_list num="1" x="&tf.x[0]" y="&tf.y[0]"]
[eventcg_list num="2" x="&tf.x[1]" y="&tf.y[0]"]

[if exp="sf.eventcg_view['3a'] != true && sf.eventcg_view['3b'] == true"]
[eventcg_list num="3b" x="&tf.x[2]" y="&tf.y[0]"]
[else]
[eventcg_list num="3a" x="&tf.x[2]" y="&tf.y[0]"]
[endif]

[eventcg_list num="4" x="&tf.x[0]" y="&tf.y[1]"]
[eventcg_list num="5" x="&tf.x[1]" y="&tf.y[1]"]
[eventcg_list num="6" x="&tf.x[2]" y="&tf.y[1]"]

[eventcg_list num="7" x="&tf.x[0]" y="&tf.y[2]"]
[eventcg_list num="8" x="&tf.x[1]" y="&tf.y[2]"]
[eventcg_list num="9" x="&tf.x[2]" y="&tf.y[2]"]

[else]
[eventcg_list num="10" x="&tf.x[0]" y="&tf.y[0]"]
[eventcg_list num="11" x="&tf.x[1]" y="&tf.y[0]"]
[eventcg_list num="12" x="&tf.x[2]" y="&tf.y[0]"]

[eventcg_list num="13" x="&tf.x[0]" y="&tf.y[1]"]
[eventcg_list num="14" x="&tf.x[1]" y="&tf.y[1]"]
[eventcg_list num="15" x="&tf.x[2]" y="&tf.y[1]"]

[eventcg_list num="16" x="&tf.x[0]" y="&tf.y[2]"]
[eventcg_list num="17" x="&tf.x[1]" y="&tf.y[2]"]
[eventcg_list num="18" x="&tf.x[2]" y="&tf.y[2]"]
[endif]
[endnowait]

[if exp="tf.eventcg_back"]
[mask_off time="500"]
[eval exp="tf.eventcg_back = false"]
[endif]

; ▼mask_off
[mask_off cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = false"]
[eval exp="f.ex_fade = true"]
[s]


*next
[eval exp="tf.nowpage ++ "]
[eval cond="tf.nowpage > tf.maxpage" exp="tf.nowpage = 1"]

[jump target="*back"]
[s]


*prev
[eval exp="tf.nowpage --"]
[eval cond="tf.nowpage <= 0" exp="tf.nowpage = tf.maxpage"]

[jump target="*back"]
[s]
[_tb_end_tyrano_code]

*open

[tb_start_tyrano_code]
*img1
[eventcg_view num="1"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img2
[eventcg_view num="2"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img3a
[eventcg_view num="3a"]
[message_current layer="message0"][p]
[if exp="sf.eventcg_view['3b']"]
[bg storage="event/still3b.jpg" time="300" wait="true"][p]
[endif]
[eventcg_view_off]
[s]

*img3b
[eventcg_view num="3b"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img4
[eventcg_view num="4"]
[message_current layer="message0"][p]
[bg storage="event/still4_2.jpg" time="300" wait="true"][p]
[bg storage="event/still4_3.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img5
[eventcg_view num="5"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img6
[eventcg_view num="6"]
[message_current layer="message0"][p]
[bg storage="event/still6_2.jpg" time="300" wait="true"][p]
[bg storage="event/still6_3.jpg" time="300" wait="true"][p]
[bg storage="event/still6_4.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img7
[eventcg_view num="7"]
[message_current layer="message0"][p]
[bg storage="event/still7_2.jpg" time="300" wait="true"][p]
[bg storage="event/still7_3.jpg" time="300" wait="true"][p]
[bg storage="event/still7_4.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img8
[eventcg_view num="8"]
[message_current layer="message0"][p]
[bg storage="event/still8_2.jpg" time="300" wait="true"][p]
[bg storage="event/still8_3.jpg" time="300" wait="true"][p]
[bg storage="event/still8_4.jpg" time="300" wait="true"][p]
[bg storage="event/still8_5.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img9
[eventcg_view num="9"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img10
[eventcg_view num="10"]
[message_current layer="message0"][p]
[bg storage="event/still10_2.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img11
[eventcg_view num="11"]
[message_current layer="message0"][p]
[bg storage="event/still11_2.jpg" time="300" wait="true"][p]
[bg storage="event/still11_3.jpg" time="300" wait="true"][p]
[bg storage="event/still11_4.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img12
[eventcg_view num="12"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img13
[eventcg_view num="13"]
[message_current layer="message0"][p]
[bg storage="event/still13_2.jpg" time="300" wait="true"][p]
[bg storage="event/still13_3.jpg" time="300" wait="true"][p]
[bg storage="event/still13_4.jpg" time="300" wait="true"][p]
[bg storage="event/still13_5.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img14
[eventcg_view num="14"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img15
[eventcg_view num="15"]
[message_current layer="message0"][p]
[bg storage="event/still15_2.jpg" time="300" wait="true"][p]
[bg storage="event/still15_3.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img16
[eventcg_view num="16"]
[message_current layer="message0"][p]
[eventcg_view_off]
[s]

*img17
[eventcg_view num="17"]
[message_current layer="message0"][p]
[bg storage="event/still17_2.jpg" time="300" wait="true"][p]
[bg storage="event/still17_3.jpg" time="300" wait="true"][p]
[bg storage="event/still17_4.jpg" time="300" wait="true"][p]
[bg storage="event/still17_5.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

*img18
[eventcg_view num="18"]
[message_current layer="message0"][p]
[bg storage="event/still18_2.jpg" time="300" wait="true"][p]
[bg storage="event/still18_3.jpg" time="300" wait="true"][p]
[bg storage="event/still18_4.jpg" time="300" wait="true"][p]
[bg storage="black.jpg" time="300" wait="true"]
[bg storage="event/still18_5.jpg" time="300" wait="true"][p]
[bg storage="event/still18_6.jpg" time="300" wait="true"][p]
[eventcg_view_off]
[s]

[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code]

