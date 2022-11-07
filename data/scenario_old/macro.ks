
; キーフレーム ▼▼▼///////////////////////////////////////////////////////

[keyframe name="scale"]
  [frame p=0% scale=0 ]
  [frame p=100% scale=1 ]
[endkeyframe]

;■ gif ▼▼▼///////////////////////////////////////////////////////
[macro name="image_gif" ]
  [iscript]
      tf.storage = mp.storage + '?' + new Date().getTime();
  [endscript]
  [image * storage="&tf.storage"]
[endmacro]
;■ gif ▲▲▲///////////////////////////////////////////////////////

;■ テキスト装飾マクロ ▼▼▼///////////////////////////////////////////////////////
  [macro name="<y"]
    [font color="0xffe762"]
  [endmacro]
  
  [macro name="<b"]
    [font color="0x33FF33"]
  [endmacro]
  
  ; ↓これは処理の順番的にうまくいきませんでした。。
  ; [<y]と同じように使いたかったのですが、ティラノ本体に手を入れずに処理する方法がわかりませんでした。。。
  [macro name="<highlight"]
    [iscript]
      j_span = TYRANO.kag.getMessageCurrentSpan();
      j_span.children("span:last-child").addClass("highlight");
    [endscript]
  [endmacro]

  [macro name=">"]
    [resetfont]
  [endmacro]
;■ テキスト装飾マクロ ▲▲▲///////////////////////////////////////////////////////

;■ トピックカットイン ▼▼▼///////////////////////////////////////////////////////
  [macro name="cutin"]
    [eval exp="f.cutintext = mp.text"]
    
    ; 1668は、棒の横＆縦px
    [for name="tf.i" from="0" to="7"]
      [image layer="message1" zindex="& tf.i+1+900" name="& 'cut,cut'+tf.i" storage="& 'cut/'+(tf.i % 3)+'.png' " x="& (tf.i*250)-1242-1668" y="& -300+1668" time="1" wait="true"]
    [nextfor]
    
    ; 画面を隠す
    [for name="tf.i" from="0" to="7"]
      [anim left="& (tf.i*250)-1242" top="-300" name="& 'cut'+tf.i" time="300" effect="easeOutSine"]
      [wait time="100"]
    [nextfor]
    
    ; 前の文字があるかもしれないので消す
    [free layer="2" name="migiuetext" time="10" wait="true"]
    ; 右上に1行に直した文字を入れとく
    [ptext text="& f.cutintext.join('')" name="migiuetext,highlight" layer="2" color="0xffffff" size=30 x=937 y="10"]
    
    ; 白くぽわっとしたもの
    [iscript]
      tf.storage = 'cut/kira.gif?' + new Date().getTime();
    [endscript]
    [image layer="message1" zindex="& 10+900" name="kira" storage="& tf.storage" x="288" y="40" time="1" wait="true"]
    
    ; 文字を出す
    [for name="tf.i" from="0" to="& f.cutintext.length-1"]
      [ptext text="& f.cutintext[tf.i]" name="& 'cutintext'+tf.i+',cutintext,highlight,_rotate,_scale' " layer="message1" color="0xffffff" size=120 x=0 y="& (tf.i*120)-(f.cutintext.length*50)+330" align="center" width="1278"]
      [wait time="10"]
      [iscript]
        $('.cutintext'+tf.i).removeClass("_scale");
      [endscript]
      [wait time="100"]
    [nextfor]
    [wait time="300"]
    
  [endmacro]
  
  [macro name="cutin_out"]
    ; 文字を右上へ
    [iscript]
      $('.cutintext').addClass("_migiue");
      for (var i = 0; i < f.cutintext.length; i++) {
        $('.cutintext' + i).css("top", (38*i)-18);
      }
    [endscript]

    ; 棒は画面外へ行く
    [for name="tf.i" from="0" to="7"]
      [anim left="& (tf.i*250)-1242+1668" top="& -300-1668" name="& 'cut'+tf.i" time="300" effect="easeOutSine"]
      [wait time="100"]
    [nextfor]
    
    ; 棒を消す
    [wait time="400"]
    [free layer="message1" name="cut" time="10" wait="true"]
    
    ; カットインの時の斜めっている文字は削除
    [free layer="message1" name="cutintext" time="10" wait="true"]

  [endmacro]
;■ トピックカットイン ▲▲▲///////////////////////////////////////////////////////

;■ ディスプレイ回転マクロ ▼▼▼///////////////////////////////////////////////////////
[macro name="display_turn_start"]
  [iscript]
    $('.1_fore').removeClass("turn_end").addClass("turn_start");
    $('.1_fore').removeClass("turn_end").addClass("turn_start");
  [endscript]
  [wait time="300"]
[endmacro]

[macro name="display_turn_end"]
  [iscript]
    $('.1_fore').removeClass("turn_start").addClass("turn_end");
    $('.1_fore').removeClass("turn_start").addClass("turn_end");
  [endscript]
  [wait time="600"]
[endmacro]
;■ ディスプレイ回転マクロ ▲▲▲///////////////////////////////////////////////////////

;■ 右上サブテキスト ▼▼▼///////////////////////////////////////////////////////
[macro name="migiue"]

  [if exp="f.migiue != 1"]
  ; サブタイトルがまだなければ
    ; 右上のサブタイトル用背景（右上のテキストを消す時に一緒に消す）
    [image layer="2" zindex="100" name="migiue_sub" storage="bg/r2.png" x="0" y="0" time="300" wait="false"]
  [else]
  ; サブタイトルがあれば今ある文字を消す
    [free layer="2" name="migiue_sub_text" time="100" wait="true"]
  [endif]
  
  ; 画像指定あれば画像出す
  [if exp="mp.img"]
    [image layer="2" zindex="101" name="migiue_sub_text" storage="& mp.img" x="1200" y="54" width="54" height="54" time="300" wait="false"]
  [endif]
  
  ; 文字出す
  [if exp="mp.text.length == 1"]
    ; 1行の時
    [mtext layer="2" name="migiue_sub,migiue_sub_text" text="& mp.text[0]" x=993 y=72 size=17 fadeout=false wait=false in_effect=fadeInRight in_delay=30 in_delay_scale=1.5 color=white shadow=none wait="false"]
  [elsif exp="mp.text.length == 2"]
    ; 2行の時
    [mtext layer="2" name="migiue_sub,migiue_sub_text" text="& mp.text[0]" x=985 y=62 size=17 fadeout=false wait=false in_effect=fadeInRight in_delay=30 in_delay_scale=1.5 color=white shadow=none wait="false"]
    [mtext layer="2" name="migiue_sub,migiue_sub_text" text="& mp.text[1]" x=1000 y=82 size=17 fadeout=false wait=false in_effect=fadeInRight in_delay=30 in_delay_scale=1.5 color=white shadow=none wait="false"]
  [endif]
  
  [eval exp="f.migiue = 1"]
[endmacro]

[macro name="migiue_del"]
  [free layer="2" name="migiue_sub" time="100" wait="false"]
  [free layer="2" name="migiue_sub_text" time="100" wait="false"]  
  [eval exp="f.migiue = 0"]
[endmacro]
;■ 右上サブテキスト ▲▲▲///////////////////////////////////////////////////////

;/////////////////////////////////////////////////////////////////
;マクロ 終わり
;/////////////////////////////////////////////////////////////////
[return]