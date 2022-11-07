[_tb_system_call storage=system/_ex_index.ks]

*start

[tb_start_tyrano_code]

[eval exp="f.ex_fade_time = 400"]
[eval cond="f.ex_fade == null" exp="f.ex_fade = true"]

; ▼mask on
[mask cond="f.ex_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = true"]

[cm]
[freeLayer]
[freeimage layer="0"]
[freeimage layer="1"]

[image layer="base" storage="../bgimage/sys_back.jpg"]
[image layer="0" storage="../image/extra/ttl_extra.png" left="15" top="12" visible="true"]

; メニュー
[eval exp="tf.x = [165, 410, 655]"]
[eval exp="tf.y = [85, 285]"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_chapter.png" x="&tf.x[0]" y="&tf.y[0]" storage="ex_chapter.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_cg.png" x="&tf.x[1]" y="&tf.y[0]" storage="ex_eventcg.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_music.png" x="&tf.x[2]" y="&tf.y[0]" storage="ex_music.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_chara.png" x="&tf.x[1] + 125" y="&tf.y[1]" storage="ex_chara.ks"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_story.png" x="&tf.x[0] + 125" y="&tf.y[1]" storage="ex_omake.ks"]

; クレジット
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/extra/menu_credit.png" x="820" y="320" storage="ex_index.ks" target="*credit_dialog"]
[endif]

; コンプ率表示
[if exp="sf.complete != 100"]
[eval exp="sf.complete = 0"]

[iscript]
var maxChapter = 29;
var add = 100 / maxChapter;
var comp = 0;

if(sf.chapter_ttl['ch01']){
if(sf.chapter['ch01-1']){ comp += add; }
if(sf.chapter['ch01-2']){ comp += add; }
if(sf.chapter['ch01-3']){ comp += add; }
if(sf.chapter['ch01-4']){ comp += add; }
}

if(sf.chapter_ttl['ch02']){
if(sf.chapter['ch02-1']){ comp += add; }
if(sf.chapter['ch02-2']){ comp += add; }
if(sf.chapter['ch02-3']){ comp += add; }
}

if(sf.chapter_ttl['ch03']){
if(sf.chapter['ch03-1']){ comp += add; }
if(sf.chapter['ch03-2']){ comp += add; }
if(sf.chapter['ch03-3a']){ comp += add; }
if(sf.chapter['ch03-3b']){ comp += add; }
if(sf.chapter['ch03-4a']){ comp += add; }
if(sf.chapter['ch03-4b']){ comp += add; }
if(sf.chapter['ch03-5']){ comp += add; }
}

if(sf.chapter_ttl['ch04']){
if(sf.chapter['ch04-1']){ comp += add; }
if(sf.chapter['ch04-2']){ comp += add; }
}

if(sf.chapter_ttl['root-P']){
if(sf.chapter['root-P01-1']){ comp += add; }
if(sf.chapter['root-P01-2']){ comp += add; }
if(sf.chapter['root-P01-3']){ comp += add; }
if(sf.chapter['root-P02-1']){ comp += add; }
if(sf.chapter['root-P02-2']){ comp += add; }
if(sf.chapter_end['ED1']){ comp += add; }
}

if(sf.chapter_ttl['root-D']){
if(sf.chapter['root-D01-1']){ comp += add; }
if(sf.chapter['root-D01-2']){ comp += add; }
if(sf.chapter['root-D02-1']){ comp += add; }
if(sf.chapter['root-D02-2']){ comp += add; }
if(sf.chapter['root-D02-3']){ comp += add; }
if(sf.chapter_end['ED2']){ comp += add; }
}

if(sf.chapter_ttl['root-C']){
if(sf.chapter['root-C01-1']){ comp += add; }
if(sf.chapter_end['ED3']){ comp += add; }
}

sf.complete = Math.floor(comp);
if(sf.complete >= 100) sf.complete = 100;
[endscript]
[endif]


[message_current layer="message0" left="370" top="470"]
[nowait]
[font_color]
[eval exp="tf.comp = sf.complete + '%'"]
COMPLETE … [emb exp="tf.comp"][r]
[font_color_reset]
[endnowait]


; ページ共通ボタン
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]

[mask_off cond="f.ex_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_fade = false"]

[if exp="tf.credit_back"]
[mask_off time="1000"]
[bgm id="&f.oldMusic" mode="play"]
[eval exp="tf.credit_back = false"]
[endif]
[s]
[_tb_end_tyrano_code]


*credit_dialog
[tb_start_tyrano_code]
[dialog type="confirm" text="スタッフロールを再生しますか？" storage="" target="credit_start" storage_cancel="" target_cancel="start"]

[s]

*credit_start
[tb_start_tyrano_code]

[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000" color="0xffffff"]
[cm]
[freeLayer]
[freeimage layer="0"]

[call storage="sys_credit.ks"]

[bgm mode="end" time="1000"]

[mask time="1000" color="0xffffff"]
[wait time="300"]

[eval exp="tf.credit_back = true"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code]



*return

[tb_start_tyrano_code]

[if exp="f.musicNow != 'title'"]
[bgm mode="end"]
[endif]
[mask time="300"]

[cm]
[freeLayer]
[freeimage layer="0"]

[eval exp="tf.title_fade = true"]
[eval exp="f.ex_fade = true"]
[eval exp="tf.ex_back = true"]

[jump storage="title_screen.ks" target="*start"]
[s]
[_tb_end_tyrano_code]
