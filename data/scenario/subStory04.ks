[_tb_system_call storage=system/_subStory04.ks]

*start

[tb_start_tyrano_code]

[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]

[showmenubutton]
[endnolog]

[image layer="base" storage="bg_asari_honoka.jpg"]

[mask_off]

[sceneTitle text="おまけ「中間発表どうだったの？」"]


[_tb_end_tyrano_code]

*scene1

[tb_start_tyrano_code]

[bgm id="nichijou_d" mode="play"]

[message mode="show"]

[message_day mode="show" day="日" text="浅利家・ほのかの部屋"]

――日曜日。[pr]

[iscript]
$('.layer.3_fore').css({"z-index": 150});
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[image layer="&sf.layFree" name="atsuinu" storage="../image/extra/omake_img01.png" visible="true" left="255" top="45"]

[iscript]
$('.atsuinu').css({"opacity": 0});
[endscript]
[anim name="atsuinu" opacity="255" top="+=20" time="600" effect="easeOutExpo"]
[wait time="600"][wa]
[else]

[image layer="&sf.layFree" name="atsuinu" storage="../image/extra/omake_img01.png" visible="true" left="255" top="65"]
[endif]

[message_name name="主人公" mode="show"]
「緊張してきた……」[pr]

[message_name name="桐生ヤマト"]
「お、はじまる……」[pr]

[message_name name="幹部"]
「おはよう、ヒーロー諸君！[r]
今年は昨年より参加者も倍近く増えて、[r]
ずいぶん賑やかになってきたな」[pr]

[message_name name="幹部"]
「おっと、前置きはここまでにしよう。[r]
今日は前半戦の結果発表だ」[pr]

[bgm mode="end" time="500"]

[message_name name="幹部"]
「集計の結果、より多くバッジを集めていたのは……」[pr]

[playseEx storage="dodon.ogg"]

[message_name name="幹部"]
「善役チーム！」[pr]

[message_name name="幹部"]
「最初は悪役の方が優位だったが、[r]
善役の勢いが徐々に増しているようだ。[r]
善役の諸君、まさに大健闘だったな！」[pr]

[message_name name="幹部"]
「悪役の諸君も、いい闘いだった！[r]
その調子で後半戦も頑張ってくれたまえ！[r]
それでは、See you！」[pr]

[message_name mode="hide"]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[anim name="atsuinu" opacity="0" top="+=20" time="400" effect="easeOutExpo"]
[wait time="400"][wa]
[endif]

[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 12});
[endscript]

[chara_img mode="show" name="honoka" posi="left" cos="shihuku" kuti="hiraku" badge="true" wait="false"]
[chara_img mode="show" name="yamato" posi="right" kuti="hiraku" badge="true"]

[message_name name="主人公" mode="show"]
「…………」[pr]

[message_name name="桐生ヤマト"]
「…………」[pr]

[bgm id="nichijou_c" mode="play"]

[chara_img name="honoka"  mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「やったー！」[pr]

[chara_img name="yamato"  mode="face" mayu="kiri" me="warau" kuti="warau"]
[message_name name="桐生ヤマト"]
「よっしゃー！」[pr]

[chara_img name="honoka"  mode="face" me="normal"]
[message_name name="主人公"]
「すごいね！　善役の方が人数少なかったのに」[pr]

[chara_img name="yamato"  mode="face" me="toziru"]
[message_name name="桐生ヤマト"]
「去年よりは増えてるみたいだけどな。[r]
でも去年は大敗だったから、[r]
前半で巻き返えせるとは思わなかった！」[pr]

[chara_img name="honoka"  mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「中間発表ってこんなにドキドキするんだね。[r]
楽しいなぁ」[pr]

[chara_img name="yamato"  mode="face" mayu="normal" me="normal" kuti="warau"]
[message_name name="桐生ヤマト"]
「こうやって自分のチームが勝ってるって発表されるの、[r]
すげー嬉しいよな」[pr]

[chara_img name="honoka"  mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「うん」[pr]

[chara_img name="yamato"  mode="face" kuti="normal"]
[message_name name="桐生ヤマト"]
「へへ。[r]
[if exp="sf.chapter_end['ED1']"]
[ほのか]
[else]
[浅利]
[endif]
は、ヒーローごっこ始めてから[r]
初めての中間発表だもんな」[pr]

[chara_img name="yamato"  mode="face" me="normal" kuti="warau"]
[message_name name="桐生ヤマト"]
「だから俺、[r]
余計に善役が勝ってて欲しいって思ってたんだ」[pr]

[chara_img name="yamato"  mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「ヒーローごっこがもっと楽しくなるし、[r]
好きになるだろ」[pr]

[chara_img name="honoka"  mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="honoka"  mode="face" me="warau" kuti="hohoemu" tere="true"]
[message_name name="主人公"]
「うん」[pr]
; 惚れた顔

[chara_img name="yamato"  mode="face" me="normal" kuti="warau"]
[message_name name="桐生ヤマト"]
「後半戦も頑張ろうなー」[pr]

[chara_img name="honoka"  mode="face" me="warau" kuti="warau" tere="false"]
[message_name name="主人公"]
「そうだね！」[pr]

[bgm mode="end"]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[cancelskip]
[eval exp="f.omake_back = true"]
[jump storage="ex_omake.ks"]

[_tb_end_tyrano_code]

