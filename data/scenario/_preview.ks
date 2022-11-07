[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[tb_start_tyrano_code]

; ブラウザ版かどうか（これ結局使わなかった。下にゴミ残ってるけど）
[eval exp="sf.gametype_browser = false"]

; ▼ファビコン設定
[iscript]
$("head").append('<link rel="shortcut icon" href="./tyrano/images/favicon.ico">');
[endscript]

; ------------------------------------------------------------------------------

*attention
; ▼CSSファイル読み込み
[loadcss file="./data/others/first.css"]

[bg storage="sys_title.jpg" time="1500" wait="false"]

[preload storage="data/image/first_alert.png"]
[preload storage="data/image/tap_start.png"]

; ▼最初の注意書き
[wait time="1200"]

[layopt layer="0" visible="true"]
[image layer="0" name="alert" storage="../image/first_alert.png" x="215" y="107" time="1500" wait="false" visible="true"]

[wait time="1000"]

[image layer="0" name="tap_start" storage="../image/tap_start.png" x="389" y="430" visible="true"]
[p]

; ------------------------------------------------------------------------------


[_tb_end_tyrano_code]

*logo

[tb_start_tyrano_code]
; ◆メニューボタン非表示
[hidemenubutton]

; ◆システムボタン非表示
[iscript]
$('.message_close_btn').css({"display": "none"});
[endscript]

; ◆サークルロゴ
[eval cond="f.suion25do == null" exp="f.suion25do = true"]

[if exp="f.suion25do"]
[mask graphic="suion25do.jpg" time="1000"]
[freelayer layer="0"]

; ローディング
[image layer="base" storage="sys_loading.jpg"]
[cm]

; ブラウザ版でなければ強制ロード
[if exp="sf.gametype_browser != true"]
[eval exp="f.data_loading = true"]
[jump target="*loading"]
[endif]

[html]
<div class="loader-area">
<div class="loader-dialog">
データダウンロード
<p>
画像データをまとめてダウンロードしますか？<br>
ダウンロードしておくと画像の読み込みがスムーズになります<br>
</p>
</div>
</div>
[endhtml]

[button graphic="../image/title/loader_btn_yes.png" name=" allHide" x="295" y="305" target="*loading" exp="f.data_loading = true" enterse="select.ogg" clickse="click.ogg"]
[button graphic="../image/title/loader_btn_no.png" name=" allHide" x="295" y="385" target="*loading" exp="f.data_loading = false" enterse="select.ogg" clickse="click.ogg"]

[mask_off time="800"]
[s]


*loading
[mask_off time="800"]

[cm]
[layopt layer="0" visible="true"]

; ロードする
[if exp="f.data_loading"]

[html]
<div class="loader-area">
<p class="loader-text">データダウンロード中…</p>
<p class="loader-bar"><span></span></p>
<p class="loader-p">0%</p>
</div>
[endhtml]
[endif]

[if exp="f.reload"]
[image layer="base" storage="sys_loading.jpg"]
[eval exp="f.reload = false"]
[endif]

; 画像ロード
[iscript]
f.preload_images = [
"data/bgimage/bg_asari_genkan.jpg",
"data/bgimage/bg_asari_honoka.jpg",
"data/bgimage/bg_asari_living.jpg",
"data/bgimage/bg_asari_living_dark.jpg",
"data/bgimage/bg_asari_mae.jpg",
"data/bgimage/bg_bus.jpg",
"data/bgimage/bg_bus_rain.jpg",
"data/bgimage/bg_hiroba.jpg",
"data/bgimage/bg_hotel.jpg",
"data/bgimage/bg_inaka_machi01.jpg",
"data/bgimage/bg_inaka_machi02.jpg",
"data/bgimage/bg_inaka_machi03.jpg",
"data/bgimage/bg_inaka_machi04.jpg",
"data/bgimage/bg_kiryu_asuka_door.jpg",
"data/bgimage/bg_kiryu_bath.jpg",
"data/bgimage/bg_kiryu_genkan.jpg",
"data/bgimage/bg_kiryu_living.jpg",
"data/bgimage/bg_kiryu_mae.jpg",
"data/bgimage/bg_kiryu_yamato.jpg",
"data/bgimage/bg_koujou.jpg",
"data/bgimage/bg_kryu_asuka.jpg",
"data/bgimage/bg_kryu_asuka_dark.jpg",
"data/bgimage/bg_machi01.jpg",
"data/bgimage/bg_machi01_rain.jpg",
"data/bgimage/bg_machi02.jpg",
"data/bgimage/bg_machi03.jpg",
"data/bgimage/bg_ramen.jpg",
"data/bgimage/bg_roji.jpg",
"data/bgimage/bg_school.jpg",
"data/bgimage/bg_school_class_a.jpg",
"data/bgimage/bg_school_class_e.jpg",
"data/bgimage/bg_school_doar.jpg",
"data/bgimage/bg_school_ground.jpg",
"data/bgimage/bg_school_okujou.jpg",
"data/bgimage/bg_school_rouka_a.jpg",
"data/bgimage/bg_school_rouka_e.jpg",
"data/bgimage/bg_school_shigemi.jpg",
"data/bgimage/bg_school_step_a.jpg",
"data/bgimage/bg_school_ura.jpg",
"data/bgimage/bg_sky.jpg",
"data/bgimage/bg_souko.jpg",
"data/bgimage/bg_tokai.jpg",
"data/bgimage/black.jpg",
"data/bgimage/sys_back.jpg",
"data/bgimage/sys_back_nobar.jpg",
"data/bgimage/sys_config.jpg",
"data/bgimage/sys_edit.jpg",
"data/bgimage/sys_loading.jpg",
"data/bgimage/sys_title.jpg",
"data/bgimage/event/still1.jpg",
"data/bgimage/event/still10.jpg",
"data/bgimage/event/still10_2.jpg",
"data/bgimage/event/still11.jpg",
"data/bgimage/event/still11_2.jpg",
"data/bgimage/event/still11_3.jpg",
"data/bgimage/event/still11_4.jpg",
"data/bgimage/event/still12.jpg",
"data/bgimage/event/still13.jpg",
"data/bgimage/event/still13_2.jpg",
"data/bgimage/event/still13_3.jpg",
"data/bgimage/event/still13_4.jpg",
"data/bgimage/event/still13_5.jpg",
"data/bgimage/event/still14.jpg",
"data/bgimage/event/still15.jpg",
"data/bgimage/event/still15_2.jpg",
"data/bgimage/event/still15_3.jpg",
"data/bgimage/event/still16.jpg",
"data/bgimage/event/still17.jpg",
"data/bgimage/event/still17_2.jpg",
"data/bgimage/event/still17_3.jpg",
"data/bgimage/event/still17_4.jpg",
"data/bgimage/event/still17_5.jpg",
"data/bgimage/event/still18.jpg",
"data/bgimage/event/still18_2.jpg",
"data/bgimage/event/still18_3.jpg",
"data/bgimage/event/still18_4.jpg",
"data/bgimage/event/still18_5.jpg",
"data/bgimage/event/still18_6.jpg",
"data/bgimage/event/still2.jpg",
"data/bgimage/event/still3a.jpg",
"data/bgimage/event/still3b.jpg",
"data/bgimage/event/still4.jpg",
"data/bgimage/event/still4_2.jpg",
"data/bgimage/event/still4_3.jpg",
"data/bgimage/event/still5.jpg",
"data/bgimage/event/still6.jpg",
"data/bgimage/event/still6_2.jpg",
"data/bgimage/event/still6_3.jpg",
"data/bgimage/event/still6_4.jpg",
"data/bgimage/event/still7.jpg",
"data/bgimage/event/still7_2.jpg",
"data/bgimage/event/still7_3.jpg",
"data/bgimage/event/still7_4.jpg",
"data/bgimage/event/still8.jpg",
"data/bgimage/event/still8_2.jpg",
"data/bgimage/event/still8_3.jpg",
"data/bgimage/event/still8_4.jpg",
"data/bgimage/event/still8_5.jpg",
"data/bgimage/event/still9.jpg",
"data/fgimage/chara/asuka_base.png",
"data/fgimage/chara/asuka_cos_normal.png",
"data/fgimage/chara/asuka_kuti_hiraku.png",
"data/fgimage/chara/asuka_kuti_normal.png",
"data/fgimage/chara/asuka_kuti_warau.png",
"data/fgimage/chara/asuka_mayu_normal.png",
"data/fgimage/chara/asuka_me_hannme.png",
"data/fgimage/chara/asuka_me_normal.png",
"data/fgimage/chara/asuka_me_toziru.png",
"data/fgimage/chara/asuka_me_warau.png",
"data/fgimage/chara/asuka_op_ase.png",
"data/fgimage/chara/boy_base.png",
"data/fgimage/chara/boy_cos_normal.png",
"data/fgimage/chara/boy_kuti_hiraku.png",
"data/fgimage/chara/boy_kuti_normal.png",
"data/fgimage/chara/boy_mayu_kiri.png",
"data/fgimage/chara/boy_mayu_normal.png",
"data/fgimage/chara/boy_me_hannme.png",
"data/fgimage/chara/boy_me_normal.png",
"data/fgimage/chara/boy_me_toziru.png",
"data/fgimage/chara/boy_op_ase.png",
"data/fgimage/chara/boy_op_badge.png",
"data/fgimage/chara/coconono_base.png",
"data/fgimage/chara/coconono_cos_normal.png",
"data/fgimage/chara/coconono_kuti_coco_hiraku.png",
"data/fgimage/chara/coconono_kuti_coco_warau.png",
"data/fgimage/chara/coconono_kuti_hiraku.png",
"data/fgimage/chara/coconono_kuti_nono_hiraku.png",
"data/fgimage/chara/coconono_kuti_nono_warau.png",
"data/fgimage/chara/coconono_kuti_normal.png",
"data/fgimage/chara/coconono_kuti_toziru.png",
"data/fgimage/chara/coconono_kuti_warau.png",
"data/fgimage/chara/coconono_mayu_komaru.png",
"data/fgimage/chara/coconono_mayu_normal.png",
"data/fgimage/chara/coconono_mayu_warau.png",
"data/fgimage/chara/coconono_me_hannme.png",
"data/fgimage/chara/coconono_me_normal.png",
"data/fgimage/chara/coconono_me_toziru.png",
"data/fgimage/chara/coconono_me_warau.png",
"data/fgimage/chara/coconono_op_ase.png",
"data/fgimage/chara/coconono_op_naku.png",
"data/fgimage/chara/friend_base.png",
"data/fgimage/chara/friend_body1.png",
"data/fgimage/chara/friend_body2.png",
"data/fgimage/chara/friend_body3.png",
"data/fgimage/chara/friend_body4.png",
"data/fgimage/chara/friend_body5.png",
"data/fgimage/chara/friend_face1.png",
"data/fgimage/chara/friend_face2.png",
"data/fgimage/chara/friend_face3.png",
"data/fgimage/chara/friend_face4.png",
"data/fgimage/chara/friend_hair1.png",
"data/fgimage/chara/friend_hair2.png",
"data/fgimage/chara/friend_hair3.png",
"data/fgimage/chara/friend_hair4.png",
"data/fgimage/chara/friend_hair5.png",
"data/fgimage/chara/haruo_base.png",
"data/fgimage/chara/haruo_cos_apron.png",
"data/fgimage/chara/haruo_cos_jacket.png",
"data/fgimage/chara/haruo_cos_normal.png",
"data/fgimage/chara/haruo_kuti_hiraku.png",
"data/fgimage/chara/haruo_kuti_hohoemu.png",
"data/fgimage/chara/haruo_kuti_normal.png",
"data/fgimage/chara/haruo_kuti_warau.png",
"data/fgimage/chara/haruo_mayu_kiri.png",
"data/fgimage/chara/haruo_mayu_normal.png",
"data/fgimage/chara/haruo_me_hannme.png",
"data/fgimage/chara/haruo_me_normal.png",
"data/fgimage/chara/haruo_me_toziru.png",
"data/fgimage/chara/haruo_me_warau.png",
"data/fgimage/chara/haruo_op_ase.png",
"data/fgimage/chara/haruo_op_tere.png",
"data/fgimage/chara/honoka_base.png",
"data/fgimage/chara/honoka_battle_base.png",
"data/fgimage/chara/honoka_battle_cos_normal.png",
"data/fgimage/chara/honoka_battle_kuti_normal.png",
"data/fgimage/chara/honoka_battle_mayu_normal.png",
"data/fgimage/chara/honoka_battle_me_normal.png",
"data/fgimage/chara/honoka_cos_jersey.png",
"data/fgimage/chara/honoka_cos_karita.png",
"data/fgimage/chara/honoka_cos_normal.png",
"data/fgimage/chara/honoka_cos_pajama.png",
"data/fgimage/chara/honoka_cos_shihuku.png",
"data/fgimage/chara/honoka_kuti_hiraku.png",
"data/fgimage/chara/honoka_kuti_hohoemu.png",
"data/fgimage/chara/honoka_kuti_normal.png",
"data/fgimage/chara/honoka_kuti_warau.png",
"data/fgimage/chara/honoka_mayu_kiri.png",
"data/fgimage/chara/honoka_mayu_komaru.png",
"data/fgimage/chara/honoka_mayu_normal.png",
"data/fgimage/chara/honoka_mayu_syunn.png",
"data/fgimage/chara/honoka_me_hannme.png",
"data/fgimage/chara/honoka_me_hart.png",
"data/fgimage/chara/honoka_me_normal.png",
"data/fgimage/chara/honoka_me_odoroki.png",
"data/fgimage/chara/honoka_me_sorashi.png",
"data/fgimage/chara/honoka_me_sorashi_h.png",
"data/fgimage/chara/honoka_me_toziru.png",
"data/fgimage/chara/honoka_me_warau.png",
"data/fgimage/chara/honoka_op_aozame.png",
"data/fgimage/chara/honoka_op_ase.png",
"data/fgimage/chara/honoka_op_badge.png",
"data/fgimage/chara/honoka_op_lost.png",
"data/fgimage/chara/honoka_op_naku.png",
"data/fgimage/chara/honoka_op_tere.png",
"data/fgimage/chara/mob2_base.png",
"data/fgimage/chara/mob2_cos_boy.png",
"data/fgimage/chara/mob_base.png",
"data/fgimage/chara/mob_cos_bad1.png",
"data/fgimage/chara/mob_cos_bad2.png",
"data/fgimage/chara/mob_cos_girl.png",
"data/fgimage/chara/mob_cos_men.png",
"data/fgimage/chara/mob_cos_men2.png",
"data/fgimage/chara/mob_cos_women.png",
"data/fgimage/chara/nanami_base.png",
"data/fgimage/chara/nanami_cos_normal.png",
"data/fgimage/chara/nanami_kuti_hiraku.png",
"data/fgimage/chara/nanami_kuti_normal.png",
"data/fgimage/chara/nanami_kuti_warau.png",
"data/fgimage/chara/nanami_mayu_kiri.png",
"data/fgimage/chara/nanami_mayu_normal.png",
"data/fgimage/chara/nanami_me_hannme.png",
"data/fgimage/chara/nanami_me_normal.png",
"data/fgimage/chara/nanami_me_odoroki.png",
"data/fgimage/chara/nanami_me_toziru.png",
"data/fgimage/chara/nanami_op_ase.png",
"data/fgimage/chara/ririna_base.png",
"data/fgimage/chara/ririna_cos_normal.png",
"data/fgimage/chara/ririna_kuti_hiraku.png",
"data/fgimage/chara/ririna_kuti_normal.png",
"data/fgimage/chara/ririna_kuti_warau.png",
"data/fgimage/chara/ririna_mayu_kiri.png",
"data/fgimage/chara/ririna_mayu_komaru.png",
"data/fgimage/chara/ririna_mayu_normal.png",
"data/fgimage/chara/ririna_me_hannme.png",
"data/fgimage/chara/ririna_me_normal.png",
"data/fgimage/chara/ririna_me_toziru.png",
"data/fgimage/chara/ririna_me_warau.png",
"data/fgimage/chara/ririna_op_ase.png",
"data/fgimage/chara/ryman_base.png",
"data/fgimage/chara/ryman_cos_normal.png",
"data/fgimage/chara/ryman_kuti_henya.png",
"data/fgimage/chara/ryman_kuti_normal.png",
"data/fgimage/chara/ryman_kuti_warau.png",
"data/fgimage/chara/ryman_mayu_kiri.png",
"data/fgimage/chara/ryman_mayu_normal.png",
"data/fgimage/chara/ryman_me_hannme.png",
"data/fgimage/chara/ryman_me_ka.png",
"data/fgimage/chara/ryman_me_normal.png",
"data/fgimage/chara/ryman_me_toziru.png",
"data/fgimage/chara/ryman_op_ase.png",
"data/fgimage/chara/ryman_op_badge.png",
"data/fgimage/chara/ryman_op_lost.png",
"data/fgimage/chara/tatsumi_base.png",
"data/fgimage/chara/tatsumi_cos_normal.png",
"data/fgimage/chara/tatsumi_kuti_hiraku.png",
"data/fgimage/chara/tatsumi_kuti_normal.png",
"data/fgimage/chara/tatsumi_kuti_odoroki.png",
"data/fgimage/chara/tatsumi_kuti_warau.png",
"data/fgimage/chara/tatsumi_mayu_kiri.png",
"data/fgimage/chara/tatsumi_mayu_normal.png",
"data/fgimage/chara/tatsumi_me_hannme.png",
"data/fgimage/chara/tatsumi_me_normal.png",
"data/fgimage/chara/tatsumi_me_toziru.png",
"data/fgimage/chara/tatsumi_me_warau.png",
"data/fgimage/chara/tatsumi_op_ase.png",
"data/fgimage/chara/yamato_base.png",
"data/fgimage/chara/yamato_battle_base.png",
"data/fgimage/chara/yamato_battle_cos_normal.png",
"data/fgimage/chara/yamato_battle_kuti_normal.png",
"data/fgimage/chara/yamato_battle_mayu_normal.png",
"data/fgimage/chara/yamato_battle_me_normal.png",
"data/fgimage/chara/yamato_cos_normal.png",
"data/fgimage/chara/yamato_cos_oroshi.png",
"data/fgimage/chara/yamato_cos_seihuku.png",
"data/fgimage/chara/yamato_cos_shihuku.png",
"data/fgimage/chara/yamato_dog_base.png",
"data/fgimage/chara/yamato_dog_cos_jersey.png",
"data/fgimage/chara/yamato_dog_kuti_hiraku.png",
"data/fgimage/chara/yamato_dog_kuti_normal.png",
"data/fgimage/chara/yamato_dog_kuti_toziru.png",
"data/fgimage/chara/yamato_dog_kuti_warau.png",
"data/fgimage/chara/yamato_dog_mayu_kiri.png",
"data/fgimage/chara/yamato_dog_mayu_normal.png",
"data/fgimage/chara/yamato_dog_mayu_syunn.png",
"data/fgimage/chara/yamato_dog_me_hannme.png",
"data/fgimage/chara/yamato_dog_me_normal.png",
"data/fgimage/chara/yamato_dog_me_toziru.png",
"data/fgimage/chara/yamato_dog_op_ase.png",
"data/fgimage/chara/yamato_dog_op_badge.png",
"data/fgimage/chara/yamato_dog_op_lost.png",
"data/fgimage/chara/yamato_dog_op_kega.png",
"data/fgimage/chara/yamato_dog_op_tere.png",
"data/fgimage/chara/yamato_kuti_hiraku.png",
"data/fgimage/chara/yamato_kuti_normal.png",
"data/fgimage/chara/yamato_kuti_okoru.png",
"data/fgimage/chara/yamato_kuti_toziru.png",
"data/fgimage/chara/yamato_kuti_warau.png",
"data/fgimage/chara/yamato_mayu_kiri.png",
"data/fgimage/chara/yamato_mayu_komaru.png",
"data/fgimage/chara/yamato_mayu_normal.png",
"data/fgimage/chara/yamato_mayu_odoroki.png",
"data/fgimage/chara/yamato_mayu_syunn.png",
"data/fgimage/chara/yamato_me_hannme.png",
"data/fgimage/chara/yamato_me_normal.png",
"data/fgimage/chara/yamato_me_odoroki.png",
"data/fgimage/chara/yamato_me_sorashi.png",
"data/fgimage/chara/yamato_me_sorashi_h.png",
"data/fgimage/chara/yamato_me_toziru.png",
"data/fgimage/chara/yamato_me_warau.png",
"data/fgimage/chara/yamato_op_ase.png",
"data/fgimage/chara/yamato_op_badge.png",
"data/fgimage/chara/yamato_op_lost.png",
"data/fgimage/chara/yamato_op_kega.png",
"data/fgimage/chara/yamato_op_naku.png",
"data/fgimage/chara/yamato_op_tere.png",
"data/fgimage/default/btn_back.png",
"data/fgimage/default/btn_menu_close.png",
"data/fgimage/default/btn_menu_open.png",
"data/fgimage/default/frame.png",
"data/fgimage/default/frame_name.png",
"data/fgimage/default/ttl_config.png",
"data/image/cutin_boy.jpg",
"data/image/cutin_haruo.jpg",
"data/image/cutin_honoka.jpg",
"data/image/cutin_ryman.jpg",
"data/image/cutin_yamato.jpg",
"data/image/suion25do.jpg",
"data/image/sys_eyecatch.jpg",
"data/image/atsuinu.png",
"data/image/battle_bar.png",
"data/image/battle_boy.png",
"data/image/battle_boy_text.png",
"data/image/battle_honoka.png",
"data/image/battle_honoka_text.png",
"data/image/battle_line.png",
"data/image/battle_message_left.png",
"data/image/battle_message_right.png",
"data/image/battle_ry.png",
"data/image/battle_ryman.png",
"data/image/battle_ryman_lost.png",
"data/image/battle_ryman_text.png",
"data/image/battle_vs.png",
"data/image/battle_yamato.png",
"data/image/battle_yamato_text.png",
"data/image/blank.png",
"data/image/btn_back.png",
"data/image/btn_menu_close.png",
"data/image/btn_menu_open.png",
"data/image/btn_window_close.png",
"data/image/coconono_nozoku.png",
"data/image/credit_text.png",
"data/image/cutin_honoka.jpg.png",
"data/image/edit_btn_next.png",
"data/image/edit_btn_ng.png",
"data/image/edit_btn_ok.png",
"data/image/edit_btn_prev.png",
"data/image/edit_hint.png",
"data/image/ExQuestion.png",
"data/image/frame.png",
"data/image/frame_day.png",
"data/image/frame_name.png",
"data/image/line.png",
"data/image/line_message01.png",
"data/image/line_photo_ed3.png",
"data/image/line_stamp01.png",
"data/image/line_stamp02.png",
"data/image/line_stamp03.png",
"data/image/menu_auto.png",
"data/image/menu_config.png",
"data/image/menu_load.png",
"data/image/menu_log.png",
"data/image/menu_save.png",
"data/image/menu_skip.png",
"data/image/menu_title.png",
"data/image/name_icon_honoka.png",
"data/image/name_icon_yamato.png",
"data/image/name_icon_haruo.png",
"data/image/name_icon_ririna.png",
"data/image/name_icon_tatsumi.png",
"data/image/name_icon_ryman.png",
"data/image/name_icon_asuka.png",
"data/image/name_icon_nanami.png",
"data/image/name_icon_coconono.png",
"data/image/name_icon_coco.png",
"data/image/name_icon_nono.png",
"data/image/name_icon_normal.png",
"data/image/nikukyu_off.png",
"data/image/nikukyu_on.png",
"data/image/noimage.png",
"data/image/rule_01_1.png",
"data/image/rule_01_2.png",
"data/image/rule_01_3.png",
"data/image/rule_02_1.png",
"data/image/rule_02_2.png",
"data/image/rule_02_3.png",
"data/image/rule_03_1.png",
"data/image/rule_03_2.png",
"data/image/rule_03_3.png",
"data/image/select.png",
"data/image/select_icon_d.png",
"data/image/select_icon_p.png",
"data/image/config/btn_close.png",
"data/image/config/btn_mute.png",
"data/image/config/btn_name.png",
"data/image/config/btn_name_cmt.png",
"data/image/config/btn_name_reset.png",
"data/image/config/btn_num01_off.png",
"data/image/config/btn_num01_on.png",
"data/image/config/btn_num02_off.png",
"data/image/config/btn_num02_on.png",
"data/image/config/btn_num03_off.png",
"data/image/config/btn_num03_on.png",
"data/image/config/btn_num04_off.png",
"data/image/config/btn_num04_on.png",
"data/image/config/btn_num05_off.png",
"data/image/config/btn_num05_on.png",
"data/image/config/btn_off_off.png",
"data/image/config/btn_off_on.png",
"data/image/config/btn_on_off.png",
"data/image/config/btn_on_on.png",
"data/image/config/btn_reset.png",
"data/image/config/name_change_myozi.png",
"data/image/config/name_change_name.png",
"data/image/config/slider_off.png",
"data/image/config/slider_on.png",
"data/image/config/ttl_config.png",
"data/image/config/ttl_label.png",
"data/image/extra/chara_img_s_asuka.jpg",
"data/image/extra/chara_img_s_boy.jpg",
"data/image/extra/chara_img_s_coconono.jpg",
"data/image/extra/chara_img_s_haruo.jpg",
"data/image/extra/chara_img_s_honoka.jpg",
"data/image/extra/chara_img_s_nanami.jpg",
"data/image/extra/chara_img_s_ririna.jpg",
"data/image/extra/chara_img_s_ryman.jpg",
"data/image/extra/chara_img_s_tatsumi.jpg",
"data/image/extra/chara_img_s_yamato.jpg",
"data/image/extra/eventcg_img_s_1.jpg",
"data/image/extra/eventcg_img_s_10.jpg",
"data/image/extra/eventcg_img_s_11.jpg",
"data/image/extra/eventcg_img_s_12.jpg",
"data/image/extra/eventcg_img_s_13.jpg",
"data/image/extra/eventcg_img_s_14.jpg",
"data/image/extra/eventcg_img_s_15.jpg",
"data/image/extra/eventcg_img_s_16.jpg",
"data/image/extra/eventcg_img_s_17.jpg",
"data/image/extra/eventcg_img_s_18.jpg",
"data/image/extra/eventcg_img_s_2.jpg",
"data/image/extra/eventcg_img_s_3a.jpg",
"data/image/extra/eventcg_img_s_3b.jpg",
"data/image/extra/eventcg_img_s_4.jpg",
"data/image/extra/eventcg_img_s_5.jpg",
"data/image/extra/eventcg_img_s_6.jpg",
"data/image/extra/eventcg_img_s_7.jpg",
"data/image/extra/eventcg_img_s_8.jpg",
"data/image/extra/eventcg_img_s_9.jpg",
"data/image/extra/btn_next.png",
"data/image/extra/btn_prev.png",
"data/image/extra/btn_substory01.png",
"data/image/extra/btn_substory01_lock.png",
"data/image/extra/btn_substory02.png",
"data/image/extra/btn_substory02_lock.png",
"data/image/extra/btn_substory03.png",
"data/image/extra/btn_substory03_lock.png",
"data/image/extra/chara_close.png",
"data/image/extra/chara_img_s_locked.png",
"data/image/extra/chara_tab_face_off.png",
"data/image/extra/chara_tab_face_on.png",
"data/image/extra/chara_tab_prof_off.png",
"data/image/extra/chara_tab_prof_on.png",
"data/image/extra/eventcg_img_s_locked.png",
"data/image/extra/menu_cg.png",
"data/image/extra/menu_chapter.png",
"data/image/extra/menu_chara.png",
"data/image/extra/menu_credit.png",
"data/image/extra/menu_music.png",
"data/image/extra/menu_story.png",
"data/image/extra/ttl_character.png",
"data/image/extra/ttl_eventcg.png",
"data/image/extra/ttl_extra.png",
"data/image/title/loader_bg.jpg",
"data/image/title/back.png",
"data/image/title/btn_config.png",
"data/image/title/btn_end.png",
"data/image/title/btn_extra.png",
"data/image/title/btn_load.png",
"data/image/title/btn_start.png",
"data/image/title/chara.png",
"data/image/title/download.png",
"data/image/title/loader_btn_no.png",
"data/image/title/loader_btn_yes.png",
"data/image/title/logo.png",
"data/others/plugin/frameanimation/image/blank.png",
"data/others/plugin/frameanimation/image/u_base.png",
"data/others/plugin/frameanimation/image/u_ear01.png",
"data/others/plugin/frameanimation/image/u_ear02.png",
"data/others/plugin/frameanimation/image/u_ear03.png",
"data/others/plugin/frameanimation/image/u_ear04.png",
"data/others/plugin/frameanimation/image/u_eye01.png",
"data/others/plugin/frameanimation/image/u_eye02.png",
"data/others/plugin/frameanimation/image/u_eye03.png",
"data/others/plugin/frameanimation/image/u_mouth01.png",
"data/others/plugin/frameanimation/image/u_mouth02.png",
"data/others/plugin/frameanimation/image/u_mouth03.png",
"tyrano/images/icon_haruo.png",
"tyrano/images/icon_honoka.png",
"tyrano/images/icon_yamato.png",
"tyrano/images/save_end.png",
"tyrano/images/system/bg_menu.png",
"tyrano/images/system/btn_menu_close.png",
"tyrano/images/system/btn_menu_open.png",
"tyrano/images/system/config_slider.png",
"tyrano/images/system/menu_auto.png",
"tyrano/images/system/menu_config.png",
"tyrano/images/system/menu_load.png",
"tyrano/images/system/menu_log.png",
"tyrano/images/system/menu_save.png",
"tyrano/images/system/menu_skip.png",
"tyrano/images/system/menu_title.png",
"tyrano/images/system/transparent.png",
"tyrano/images/system/ttl_load.png",
"tyrano/images/system/ttl_log.png",
"tyrano/images/system/ttl_save.png",
"tyrano/images/system/_builder/sys_back.jpg",
"tyrano/images/system/_builder/menu_button_close.png",
"tyrano/libs/remodal/dialog_cansel.png",
"tyrano/libs/remodal/dialog_ok.png"
];
[endscript]
[preload storage="&f.preload_images" wait="true"]

[wait time="200"]

[cm]
[html]
<div class="loader-area">
<p class="loader-text">読み込み中…</p>
<p class="loader-icon"></p>
</div>
[endhtml]

; システム読み込み
[system_load]

[wait time="200"]

[iscript]
$(".loader-text").html("読み込み完了！");
$(".loader-text").css({"padding-top": "30px"});
$(".loader-icon").css({"display": "none"});
[endscript]

[wait time="200"]

[mask time="1000"]

[eval exp="f.suion25do = false"]
[eval exp="tf.title_fade = true"]
[endif]

[_tb_end_tyrano_code]

*start

[tb_start_tyrano_code]
; ◆ゲーム変数全消去
; [clearvar]

; ◆メニューボタン非表示
[hidemenubutton]
[hidesystembutton]

[if exp="tf.title_fade"]
[mask time="100"]
[endif]

[_tb_end_tyrano_code]

*back

[tb_start_tyrano_code]
[cm]
[freeLayer]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[freeimage layer="3"]

[sceneTitle text="リベリオン・ヒーローズ"]
[image layer="base" storage="sys_title.jpg"]
[image layer="0" storage="../image/title/chara.png" visible="true"]
[image layer="0" storage="../image/title/logo.png" x="610" y="70" visible="true"]

; ◆レイヤリセット
[eval exp="tf.name_fade = true"]
[nowait]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/title/btn_start.png" name=" allHide" x="660" y="220" storage="sys_namechange.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/title/btn_load.png" name=" allHide" x="660" y="300" target="*load"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/title/btn_config.png" name=" allHide" x="660" y="380" role="sleepgame" exp="f.title_now = true" storage="sys_config.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/title/btn_extra.png" name=" allHide" x="732" y="455" storage="ex_index.ks"]

; [button enterse="select.ogg" clickse="click.ogg" cond="f.data_loading == false" graphic="../image/title/download.png" name=" allHide" x="915" y="455" target="*game_reload"]
[endnowait]

; 音楽スタート
[if exp="f.musicNow != 'title'"]
[if exp="f.musicNow == null"][bgm id="title" mode="play"]
[else][bgm id="title" mode="change"][endif]
[endif]

; マスク終わり
[if exp="tf.title_fade"]
[eval exp="tf.title_fade = false"]
[mask_off]
[endif]


; バックログ記録停止
[nolog]

; バックログ削除
[eval exp="tf.system.backlog = []"]
[s]

[_tb_end_tyrano_code]

*load

[tb_start_tyrano_code]

[showload]

[jump target="*start"]
[s]
[_tb_end_tyrano_code]

*title_dialog

[tb_start_tyrano_code]
[dialog type="confirm" text="タイトルに戻りますか？" storage="" target="ok_title" storage_cancel="" target_cancel="menu_return"]


*menu_return
[awakegame]
[s]


*ok_title

[bgm mode="end" time="800"]
[mask time="1000"]

[breakgame]

[cm]
[chara_img mode="hide_all" time="0"]
[freeLayer]
[freeimage layer="0"]

[hidemenubutton]
[hidesystembutton]

[mask_off time="0"]

[eval exp="tf.title_fade = true"]
[jump target="*start"]


[_tb_end_tyrano_code]

*game_reload

[tb_start_tyrano_code]
[dialog type="confirm" text="画像をまとめてダウンロードしますか？" storage="" target="ok_rerload" storage_cancel="" target_cancel="back"]
[s]

*ok_rerload

[cm]
[freeLayer]
[freeimage layer="0"]

[eval exp="f.data_loading = true"]

[eval exp="f.reload = true"]
[jump target="loading"]
[s]
[_tb_end_tyrano_code]

