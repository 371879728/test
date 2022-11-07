[_tb_system_call  storage="system/_ex_chapter.ks"  ]
*start
[tb_start_tyrano_code  ]

[eval cond="f.chap_now_page == null" exp="f.chap_now_page = 1"]

[mask cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]

[macro name="memory_jump"]
[if exp="f.memoryMode == false"]
[eval exp="f.memoryMode = true"]

[endnolog]

[jump *]
[endif]
[endmacro]

[hidemenubutton]

[if exp="f.memoryBack"]

[cancelskip]

[bgm mode="end"]
[mask time="1000"]

[window_all_hide time="0"]
[wait time="300"]
[endif]

[nolog]

[eval exp="tf.system.backlog = []"]


*back
[cm]
[freeLayer]
[freeimage layer="0"]

[image layer="base" storage="../bgimage/sys_back.jpg"]
[image layer="0" storage="../image/extra/ttl_extra.png" left="15" top="12" visible="true"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]

[macro name="type-link"]
[iscript]
var id = mp.id + '';
var num = mp.num;
var ttl = mp.ttl;
var text = mp.text;
var type = mp.type;
var flag = false;

var append = '';
var listClass = '';

if(type == 'btn'){
listClass = 'type-btn';
append = '<li class="' + listClass + '" id="' + id + '"><span class="chap-ttl">' + num + '｜' + ttl + '</span><span class="chap-text">' + text + '</span></li>';
}
else if(type == 'link'){
listClass = 'type-link';
append = '<li class="' + listClass + '" id="' + id + '"><span class="chap-ttl">' + num + '｜' + ttl + '</span><span class="chap-text">' + text + '</span></li>';
}
else if(type == 'day'){
listClass = 'type-day';
if(id == 'root-P' || id == 'root-D' || id == 'root-C'){
append = '<li class="' + listClass + '"><span class="chap-ttl">' + ttl + '</span><span class="chap-text">' + text + '</span></li>';
}
else {
append = '<li class="' + listClass + '"><span class="chap-ttl">' + num + '｜' + ttl + '</span><span class="chap-text">' + text + '</span></li>';
}
}
else if(type == 'end'){
listClass = 'type-end';
append = '<li class="' + listClass + '"><span class="chap-ttl">' + num + '｜' + ttl + '</span></li>';
}
if((type == 'btn' && sf.chapter[id]) || (type == 'link' && sf.chapter[id]) || (type == 'day' && sf.chapter_ttl[id]) || (type == 'end' && sf.chapter_end[id])) flag = true;
if(flag == false){

if(id == 'root-P' || id == 'root-D' || id == 'root-C')  append = '<li class="type-locked ' + listClass + '"><span class="chap-ttl">？？？</span></li>';
else append = '<li class="type-locked ' + listClass + '"><span class="chap-ttl">' + num + '｜？？？</span></li>';
}

$('.myChapter .chapter-list').append(append);
[endscript]
[endmacro]


[html]
<div class="myChapter">
<div class="scroll-area">
<!-- <div id="chapterScroll" class="scroll-main"> -->
<div class="scroll-main">

<ul class="chapter-list">

</ul>

</div>
</div>
</div>
[endhtml]
[iscript]
$(function(){
if(f.charaScroll == null) f.charaScroll = 0;
setTimeout(function(){
$('#chapterScroll').scrollTop(f.charaScroll);
},100);
$('#chapterScroll').scroll(function(){
f.charaScroll = $(this).scrollTop();
});
});
[endscript]

[macro name="chapter_page"]
[eval exp="tf.img = 'btn_num0' + mp.num"]
[eval cond="mp.num == 5" exp="tf.img = 'btn_num_a'"]
[eval cond="mp.num == 6" exp="tf.img = 'btn_num_b'"]
[eval cond="mp.num == 7" exp="tf.img = 'btn_num_c'"]

[if exp="f.chap_now_page == mp.num"]
[button enterse="select.ogg" clickse="click.ogg" graphic="&'../image/config/' + tf.img + '_on.png'" exp="&'f.chap_now_page =' + mp.num" name="allHide" x="%x" y="%y" storage="ex_chapter.ks" target="*back"]
[else]
[button enterse="select.ogg" clickse="click.ogg" graphic="&'../image/config/' + tf.img + '_off.png'" exp="&'f.chap_now_page =' + mp.num" name="allHide" x="%x" y="%y" storage="ex_chapter.ks" target="*back"]
[endif]
[endmacro]

[chapter_page num="1" x="70" y="80"]
[chapter_page num="2" x="70" y="130"]
[chapter_page num="3" x="70" y="180"]
[chapter_page num="4" x="70" y="230"]
[chapter_page num="5" x="70" y="280"]
[chapter_page num="6" x="70" y="330"]
[chapter_page num="7" x="70" y="380"]

[if exp="f.chap_now_page == 1"]
[type-link type="day" id="ch01" num="01" ttl="プロローグ" text="月曜日"]
[type-link type="btn" id="ch01-1" num="01-1" ttl="退屈な学校" text="国際Ｓ学園・Ａクラス"]
[type-link type="btn" id="ch01-2" num="01-2" ttl="楽しい放課後" text="待ち合わせ場所"]
[type-link type="btn" id="ch01-3" num="01-3" ttl="桐生くんとの出会い" text="住宅街"]
[type-link type="btn" id="ch01-4" num="01-4" ttl="１日の終わり" text="自宅・玄関"]

[elsif exp="f.chap_now_page == 2"]
[type-link type="day" id="ch02" num="02" ttl="優等生と不良" text="火曜日"]
[type-link type="btn" id="ch02-1" num="02-1" ttl="担任の忠告" text="通学路"]
[type-link type="btn" id="ch02-2" num="02-2" ttl="はじめての下位棟" text="国際Ｓ学園・渡り廊下"]
[type-link type="btn" id="ch02-3" num="02-3" ttl="放課後ラーメン" text="ラーメン店"]

[elsif exp="f.chap_now_page == 3"]
[type-link type="day" id="ch03" num="03" ttl="不穏な空気" text="水曜日"]
[type-link type="btn" id="ch03-1" num="03-1" ttl="久しぶりの敗北" text="通学路"]
[type-link type="btn" id="ch03-2" num="03-2" ttl="桐生くんはどこに？" text="国際Ｓ学園・Ｅクラス前"]
[type-link type="link" id="ch03-3a" num="03-3a" ttl="里井りり奈のはなし" text="国際Ｓ学園・Ｅクラス前"]
[type-link type="link" id="ch03-3b" num="03-3b" ttl="須賀たつみのはなし" text="国際Ｓ学園・Ｅクラス前"]
[type-link type="link" id="ch03-4a" num="03-4a" ttl="自分のきもち A" text="国際Ｓ学園・上位棟廊下"]
[type-link type="link" id="ch03-4b" num="03-4b" ttl="自分のきもち B" text="国際Ｓ学園・上位棟廊下"]
[type-link type="btn" id="ch03-5" num="03-5" ttl="桐生くんと兄ちゃん" text="国際Ｓ学園・上位棟廊下"]

[elsif exp="f.chap_now_page == 4"]
[type-link type="day" id="ch04" num="04" ttl="台風の日" text="木曜日"]
[type-link type="btn" id="ch04-1" num="04-1" ttl="体育の準備" text="国際Ｓ学園・グラウンド"]
[type-link type="btn" id="ch04-2" num="04-2" ttl="不安の帰り道" text="通学路"]

[elsif exp="f.chap_now_page == 5"]
[type-link type="day" id="root-P" num="root-A" ttl="通常ルート" text="木曜日～金曜日"]
[type-link type="btn" id="root-P01-1" num="01-1" ttl="喧嘩" text="通学路"]
[type-link type="btn" id="root-P01-2" num="01-2" ttl="桐生家に行こう" text="桐生家・玄関"]
[type-link type="btn" id="root-P01-3" num="01-3" ttl="落ち着く部屋" text="桐生家・ヤマトの部屋"]
[type-link type="btn" id="root-P02-1" num="02-1" ttl="不良、再び。" text="桐生家・玄関"]
[type-link type="btn" id="root-P02-2" num="02-2" ttl="油の匂いに包まれながら" text="廃工場・納屋"]
[type-link type="end" id="ED1" num="ED1" ttl="いつまでも一緒に"]

[elsif exp="f.chap_now_page == 6"]
[type-link type="day" id="root-D" num="root-B" ttl="犬ルート" text="木曜日～金曜日"]
[type-link type="btn" id="root-D01-1" num="01-1" ttl="柴犬の保護" text="通学路"]
[type-link type="btn" id="root-D01-2" num="01-2" ttl="柴犬と停電" text="自宅・リビング"]
[type-link type="btn" id="root-D02-1" num="02-1" ttl="柴犬の飼い主" text="自宅・自室"]
[type-link type="btn" id="root-D02-2" num="02-2" ttl="お互いの気持ち" text="バス停"]
[type-link type="end" id="ED2" num="ED2" ttl="あなただから"]

[elsif exp="f.chap_now_page == 7"]
[type-link type="day" id="root-C" num="root-C" ttl="兄ルート" text="木曜日"]
[type-link type="btn" id="root-C01-1" num="01" ttl="出張のお供" text="自宅前"]
[type-link type="end" id="ED3" num="ED3" ttl="兄妹"]
[endif]

[htmlBtn id="button_test" storage="ex_chapter.ks" target="*return"]
[htmlBtn id="ch01-1" storage="ex_chapter.ks" target="*ch01_1"]
[htmlBtn id="ch01-2" storage="ex_chapter.ks" target="*ch01_2"]
[htmlBtn id="ch01-3" storage="ex_chapter.ks" target="*ch01_3"]
[htmlBtn id="ch01-4" storage="ex_chapter.ks" target="*ch01_4"]
[htmlBtn id="ch02-1" storage="ex_chapter.ks" target="*ch02_1"]
[htmlBtn id="ch02-2" storage="ex_chapter.ks" target="*ch02_2"]
[htmlBtn id="ch02-3" storage="ex_chapter.ks" target="*ch02_3"]
[htmlBtn id="ch03-1" storage="ex_chapter.ks" target="*ch03_1"]
[htmlBtn id="ch03-2" storage="ex_chapter.ks" target="*ch03_2"]
[htmlBtn id="ch03-3a" storage="ex_chapter.ks" target="*ch03_3a"]
[htmlBtn id="ch03-3b" storage="ex_chapter.ks" target="*ch03_3b"]
[htmlBtn id="ch03-4a" storage="ex_chapter.ks" target="*ch03_4a"]
[htmlBtn id="ch03-4b" storage="ex_chapter.ks" target="*ch03_4b"]
[htmlBtn id="ch03-5" storage="ex_chapter.ks" target="*ch03_5"]
[htmlBtn id="ch04-1" storage="ex_chapter.ks" target="*ch04_1"]
[htmlBtn id="ch04-2" storage="ex_chapter.ks" target="*ch04_2"]
[htmlBtn id="root-P01-1" storage="ex_chapter.ks" target="*rootP01_1"]
[htmlBtn id="root-P01-2" storage="ex_chapter.ks" target="*rootP01_2"]
[htmlBtn id="root-P01-3" storage="ex_chapter.ks" target="*rootP01_3"]
[htmlBtn id="root-P02-1" storage="ex_chapter.ks" target="*rootP02_1"]
[htmlBtn id="root-P02-2" storage="ex_chapter.ks" target="*rootP02_2"]
[htmlBtn id="root-D01-1" storage="ex_chapter.ks" target="*rootD01_1"]
[htmlBtn id="root-D01-2" storage="ex_chapter.ks" target="*rootD01_2"]
[htmlBtn id="root-D02-1" storage="ex_chapter.ks" target="*rootD02_1"]
[htmlBtn id="root-D02-2" storage="ex_chapter.ks" target="*rootD02_2"]
[htmlBtn id="root-D02-3" storage="ex_chapter.ks" target="*rootD02_3"]
[htmlBtn id="root-C01-1" storage="ex_chapter.ks" target="*rootC01_1"]

[if exp="f.memoryBack"]
[mask_off time="1000"]
[bgm id="&f.oldMusic" mode="play"]
[endif]

[eval exp="f.memoryMode = false"]
[eval exp="f.memoryBack = false"]

[mask_off cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = false"]
[eval exp="f.ex_fade = true"]
[s]
[_tb_end_tyrano_code  ]
*ch01_1
[tb_start_tyrano_code  ]
[memory_jump storage="mainStory01.ks" target="*scene1"]
[s]

*ch01_2
[memory_jump storage="mainStory01.ks" target="*scene2"]
[s]

*ch01_3
[memory_jump storage="mainStory01.ks" target="*scene3"]
[s]

*ch01_4
[memory_jump storage="mainStory01.ks" target="*scene4"]
[s]

*ch02_1
[memory_jump storage="mainStory02.ks" target="*scene1"]
[s]

*ch02_2
[memory_jump storage="mainStory02.ks" target="*scene3"]
[s]

*ch02_3
[memory_jump storage="mainStory02.ks" target="*scene4"]
[s]

*ch03_1
[memory_jump storage="mainStory03.ks" target="*scene1"]
[s]

*ch03_2
[memory_jump storage="mainStory03.ks" target="*scene2"]
[s]

*ch03_3a
[memory_jump storage="mainStory03.ks" target="*select_ririna"]
[s]

*ch03_3b
[memory_jump storage="mainStory03.ks" target="*select_tatsumi"]
[s]

*ch03_4a
[eval exp="f.sugasato = 'ririna'"]
[eval exp="f.root_people = 3"]
[eval exp="f.root_dog = 0"]
[memory_jump storage="mainStory03.ks" target="*select_end"]
[s]

*ch03_4b
[eval exp="f.sugasato = 'tatsumi'"]
[eval exp="f.root_people = 0"]
[eval exp="f.root_dog = 3"]
[memory_jump storage="mainStory03.ks" target="*select_end"]
[s]

*ch03_5
[eval exp="f.sugasato = 'ririna'"]
[memory_jump storage="mainStory03.ks" target="*scene3"]
[s]

*ch04_1
[memory_jump storage="mainStory04.ks" target="*scene1"]
[s]

*ch04_2
[memory_jump storage="mainStory04.ks" target="*scene2"]
[s]

*rootP01_1
[memory_jump storage="mainStoryRootA01.ks" target="*scene1"]
[s]

*rootP01_2
[memory_jump storage="mainStoryRootA01.ks" target="*scene2"]
[s]

*rootP01_3
[memory_jump storage="mainStoryRootA01.ks" target="*scene4"]
[s]

*rootP02_1
[memory_jump storage="mainStoryRootA02.ks" target="*scene1"]
[s]

*rootP02_2
[memory_jump storage="mainStoryRootA02.ks" target="*scene2"]
[s]

*rootD01_1
[memory_jump storage="mainStoryrootB01.ks" target="*scene1"]
[s]

*rootD01_2
[memory_jump storage="mainStoryrootB01.ks" target="*scene2"]
[s]

*rootD02_1
[memory_jump storage="mainStoryrootB02.ks" target="*scene1"]
[s]

*rootD02_2
[memory_jump storage="mainStoryrootB02.ks" target="*scene2"]
[s]

*rootD02_3
[memory_jump storage="mainStoryrootB02.ks" target="*scene3"]
[s]

*rootC01_1
[memory_jump storage="mainStoryrootC.ks" target="*scene1"]
[s]

[_tb_end_tyrano_code  ]
*return
[tb_start_tyrano_code  ]
[eval exp="f.charaScroll = 0"]

[eval exp="f.chap_now_page = 1"]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code  ]
