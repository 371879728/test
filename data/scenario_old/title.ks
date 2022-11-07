
[cm]
[clearfix]
;[start_keyconfig]

; 初期設定 // // // // // // // // // // // // // // // // // // // // // //
  
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[layopt layer=2 visible=true]

; ドット絵の解像度の都合で、画面は1278×720となっております。（1280にすると、ビミョーに歪んでしまいます）
; だからといってゲーム画面幅を1278にすると色々と影響が出そうな気もするので、画面の右2pxは完全な黒を右2px、message1の上の方に敷くことで隠しております。
[image layer="message1" zindex="100000005" name="black2px" storage="bg_black2.png" x="1278" y="0" time="0" width="2" height="720" wait="true"]

[position layer=message0 opacity="0"]
[position layer=message1 opacity="0"]
[current layer="message0"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

; //////////////////////////////////////////////////

[iscript]
  // 日付・時間取得
  var date =  new Date();
  tf.date = (date.getMonth()+1)+"/"+(date.getDate());
  f.jikan =  date.getHours();
  if( f.jikan >= 20 || f.jikan <= 2 ){
    // alert("夜");
    // 20,21,22,23,0,1,2
    f.jikan="yoru";
  }else if( f.jikan >= 3 && f.jikan <= 8 ){
    // alert("朝");
    // 3,4,5,6,7,8
    f.jikan="asa";
  }else if( f.jikan >= 9 && f.jikan <= 15 ){
    // alert("昼");
    // 9,10,11,12,13,14,15
    f.jikan="hiru";
  }else if( f.jikan >= 16 && f.jikan <= 19 ){
    // alert("夕");
    // 16,17,18,19
    f.jikan="yuugata";
  }
  
  if(f.jikan == "asa" || f.jikan == "hiru"){
    var akarui = 1;
  }else{
    var akarui = 0;
  }
  
  // ランダムに出てくる背景の飾り
  setInterval(function() {
    $(".bg_random").remove();
      
      var select = 0;
      var random = 0;
      
      while ( select == 0 ) {
        
        random = Math.floor( Math.random() * 4);
        
        if(random == 0){
          // 夜以外なら鳥
          if(f.jikan != "yoru"){
            $('.0_fore').append('<img class="bg_random" src="./data/fgimage/bg_random/bird/'+akarui+'.gif?'+ new Date().getTime()+'" style="position: absolute; left: 0px; top: 0px; z-index: 1; opacity: 1;">');
            select = 1;
          }
          
        }else if(random == 1){
          // 電車
          //$('.0_fore').append('<img class="bg_random train" src="./data/fgimage/bg_random/train/'+akarui+'.png" style="position: absolute; left: 1278px; top: 552px; z-index: 1; opacity: 1;">');
          select = 1;
          
        }else if(random == 2){
          // 電車反対方向
          //$('.0_fore').append('<img class="bg_random train2" src="./data/fgimage/bg_random/train/'+akarui+'.png" style="position: absolute; left: -1338px; top: 552px; z-index: 1; opacity: 1;">');
          select = 1;
          
        }else if(random == 3){
          // 流れ星
          if(f.jikan == "yoru"){
            $('.0_fore').append('<img class="bg_random" src="./data/fgimage/bg_random/star.gif?'+ new Date().getTime()+'" style="position: absolute; left: 0px; top: 0px; z-index: 1; opacity: 1;">');
            select = 1;
          }
        }
        
      }
    
  }, 10000 );

[endscript]
  
; 時間別の背景
[bg2 width="1278" height="720" storage="& f.jikan + '.png' " time="10"]

; 柵&床画像
[image layer="0" zindex="2" storage="bg/bg.png" x="0" y="0" time="10" wait="true"]


; 初期設定ここまで // // // // // // // // // // // // // // // // // // // // // //

;クエリURLから引数を受け取る
[iscript]

var vars = {}, max = 0, hash = "", array = "";
var url = window.location.search;
hash  = url.slice(1).split('&');    
max = hash.length;
for (var i = 0; i < max; i++) {
    array = hash[i].split('=');   
    vars[array[0]] = array[1];    
}

if(vars["date"]){
    mp.date=vars["date"];
}

[endscript]


@jump storage="scene1.ks"

[s]

;@jump storage="test.ks"

; テスト // // // // // // // // // // // // // // // // // // // // // //

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 

[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" ]
[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" ]
[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" ]
[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



