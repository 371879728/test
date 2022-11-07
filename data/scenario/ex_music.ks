[_tb_system_call storage=system/_ex_music.ks]

*start

[tb_start_tyrano_code]

[eval exp="f.music_now_page = 1"]
[eval exp="f.music_max_page = 3"]

; ▼mask on
[mask cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]

*back
[cm]
[freeLayer]
[freeimage layer="0"]

[image layer="base" storage="../bgimage/sys_back.jpg"]
[image layer="0" storage="../image/extra/ttl_extra.png" left="15" top="12" visible="true"]

; ページ共通ボタン
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]


[html]
<div class="myMusic">
<div class="music-area">

<!-- left -->
<div class="music-info">
<p class="num-area">
<!-- <span id="music-like" class="icon"></span> -->
<span id="music-num" class="num"></span>
</p>

<div class="music-title">
<p id="music-title"></p>
</div>

<div class="music-data">
<p>使用シーン：<span id="music-name"></span></p>
<p>配布サイト：<span id="music-site"></span></p>
<p>作曲：<span id="music-comp"></span></p>
</div>

</div>

<!-- right -->
<div class="music-list">
<!--
<div class="title-area">
<p class="music-title">MUSIC TITLE</p>
<p class="like-title">LIKE</p>
</div>
 -->
<div class="music-scroll">
<div class="scroll-area">
<ul id="music-list-inner">

</ul>
</div>
</div>
</div>
</div>
</div>
[endhtml]

[iscript]

// seting ----------------------------------------------------------------------
musicListSet();

function musicListSet(){

var append;
$('#music-list-inner').empty();

var start = 1, end = 6;
if(f.music_now_page == 2) { start = 7; end = 12; }
if(f.music_now_page == 3) { start = 13; end = sf.musicMax; }

for(var i = start; i<=end; i++){
append = '';

var id =  sf.musicData[i]["id"];
var view = sf.musicView[id];

var num = i;
if(num < 10) num = '0' + num;

var title = '？？？';
if(view) title = sf.musicData[i]["title"];

var cl = '';
if(view != true) cl = 'is-hide';

var like = '';
if(sf.musicLike[i]) like = 'is-like';

append = '<li class="is-music-change ' + cl + '" data-num="' + i + '">' +
'<p class="lavel" data-num="' + i + '"><span class="num">' + num + '</span><span class="title">' + title + '</span></p>';

$('#music-list-inner').append(append);
}

// click
$('#music-list-inner .lavel').click(function(){
var click = $(this).data("num");
var id =  sf.musicData[click]["id"];
var view = sf.musicView[id];
if(view != true) return;

if(f.musicNow != sf.musicData[click]["id"]){
f.musicNow = sf.musicData[click]["id"];
var music = f.musicNow + '.ogg';
TG.kag.ftag.startTag("playbgm",{storage:music});
}

musicListReset();
});

// list like
$('.is-like-change').click(function(){
var click = $(this).data("num");
var id =  sf.musicData[click]["id"];
var view = sf.musicView[id];
if(view != true) return;

if(sf.musicLike[click]){
sf.musicLike[click] = false;
$('#music-list-inner li[data-num="' + click + '"] .icon').removeClass('is-like');

var click = sf.musicData[click]["id"];
if(click == f.musicNow) $('#music-like').removeClass('is-like');
}
else {
sf.musicLike[click] = true;
$('#music-list-inner li[data-num="' + click + '"] .icon').addClass('is-like');

click = sf.musicData[click]["id"];
if(click == f.musicNow) $('#music-like').addClass('is-like');
}
});

// info like
$('#music-like').click(function(){
var click = sf.musicDataNum[f.musicNow];
if(sf.musicLike[click]){
sf.musicLike[click] = false;
$('#music-like').removeClass('is-like');
$('#music-list-inner li[data-num="' + click + '"] .icon').removeClass('is-like');
}
else {
sf.musicLike[click] = true;
$('#music-like').addClass('is-like');
$('#music-list-inner li[data-num="' + click + '"] .icon').addClass('is-like');
}
});
}


// reset ----------------------------------------------------------------------
musicListReset();

function musicListReset(){
// LIKE
var num = sf.musicDataNum[f.musicNow];
var like = sf.musicLike[num];

if(like) $('#music-like').addClass('is-like');
else $('#music-like').removeClass('is-like');

// title
$('#music-title').html( sf.musicData[num]["title"]);
$('#music-site').html( sf.musicData[num]["site"]);
$('#music-name').html( sf.musicData[num]["name"]);
$('#music-comp').html( sf.musicData[num]["comp"]);

$('#music-list-inner li').removeClass('is-active');
$('#music-list-inner li[data-num="' + num + '"]').addClass('is-active');

// num
if(num < 10) num = '0' + num;
$('#music-num').html(num);
}
[endscript]

[htmlBtn id="button_test" storage="ex_music.ks" target="return"]


; ページ操作
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_prev.png" x="280" y="500" target="*prev"]

[message_current layer="message0"]
[layopt layer="message0" left="470" top="470"]
[font_color size="18" color="0xffffff"]
[nowait]
[emb exp="f.music_now_page"] / [emb exp="f.music_max_page"]
[endnowait]
[font_color_reset]

[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_next.png" x="590" y="500" target="*next"]


; ▼mask_off
[mask_off cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = false"]
[eval exp="f.ex_fade = true"]
[s]

[_tb_end_tyrano_code]


*next
[eval exp="f.music_now_page ++ "]
[eval cond="f.music_now_page > f.music_max_page" exp="f.music_now_page = 1"]

[jump target="*back"]
[s]


*prev
[eval exp="f.music_now_page --"]
[eval cond="f.music_now_page <= 0" exp="f.music_now_page = f.music_max_page"]

[jump target="*back"]
[s]
[_tb_end_tyrano_code]


*return

[tb_start_tyrano_code]
[eval exp="f.charaScroll = 0"]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code]
