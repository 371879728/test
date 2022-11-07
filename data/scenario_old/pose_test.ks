*start

[cm  ]
[clearfix]
[start_keyconfig]
scene1.ks
  ; [iscript]
  ; setTimeout(function(){
  ; lscene1.ksocalStorage.clear();
  ; location.reload();
  ; },200);
  ; [endscript stop=true]
  
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

[bg storage="room.jpg" time="100"]

; //////////////////////////////////////////////////

[hyouji chara="migi"]
[hyouji chara="hidari"]

; 定位置へ
[chara_move name="migi" time="10" anim="true" wait="false" left="354" effect="easeInOutQuad"]
[chara_move name="hidari" time="10" anim="true" wait="false" left="-354" effect="easeInOutQuad"]


; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  ; ■ 立ち絵macro共通事項
  ; ・charaは前回と同じなら省けます（ちなみにkuchiもudeも同じ）
  
; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
*漫符一覧
  ; 日本語から英語（ファイル名）に変更する処理は、漫符は省いてます（数少ないので..）

  [manpu chara="hidari" name="ase"]
  [say chara="hidari" kuchi="a"]
    左...汗
  [_p]

  [manpu chara="hidari" name="gan"]
  [say chara="hidari" kuchi="a"]
    左...がーん
  [_p]

  [manpu chara="hidari" name="heart"]
  [say chara="hidari" kuchi="a"]
    左...ハート
  [_p]

  [manpu chara="hidari" name="kira"]
  [say chara="hidari" kuchi="a"]
    左...キラキラ
  [_p]

  [manpu chara="hidari" name="picon"]
  [say chara="hidari" kuchi="a"]
    左...ピコーン
  [_p]

; /// /// /// /// /// /// /// /// /// /// /// /// ///

  [manpu chara="migi" name="ase"]
  [say chara="migi" kuchi="a"]
    右...汗
  [_p]

  [manpu chara="migi" name="gan"]
  [say chara="migi" kuchi="a"]
    右...がーん
  [_p]

  [manpu chara="migi" name="heart"]
  [say chara="migi" kuchi="a"]
    右...ハート
  [_p]

  [manpu chara="migi" name="kira"]
  [say chara="migi" kuchi="a"]
    右...キラキラ
  [_p]

  [manpu chara="migi" name="picon"]
  [say chara="migi" kuchi="a"]
    右...ピコーン
  [_p]

; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
*ポーズ一覧

  ; 「ふむ」「こちら」「どうぞ」は、ポーズがない方の腕が前回のポーズを引き継ぎます。
  ; 引き継ぐと微妙なポーズになると感じた時は、 free="taiki"をつけてください。

  [ude chara="hidari" name="ふむ"]
  [say chara="hidari" kuchi="a"]
    左...ふむ
  [_p]
  
  [ude chara="hidari" name="こちら"]
  [say chara="hidari" kuchi="a"]
    左...こちら
  [_p]
  
  [ude chara="hidari" name="どうぞ" free="taiki"]
  [say chara="hidari" kuchi="a"]
    左...どうぞ（引き継ぎなし）
  [_p]
  
  [ude chara="hidari" name="がお"]
  [say chara="hidari" kuchi="a"]
    左...がお
  [_p]
  
  [ude chara="hidari" name="よし"]
  [say chara="hidari" kuchi="a"]
    左...よし
  [_p]
  
  [ude chara="hidari" name="どうぞ"]
  [say chara="hidari" kuchi="a"]
    左...どうぞ（引き継ぎ）
  [_p]
  
  [ude chara="hidari" name="えへん"]
  [say chara="hidari" kuchi="a"]
    左...えへん
  [_p]
  
  [ude chara="hidari" name="拍手"]
  [say chara="hidari" kuchi="a"]
    左...拍手
  [_p]
  
  [ude chara="hidari" name="待機"]
  [say chara="hidari" kuchi="a"]
    左...待機（初期状態）アニメがないので暗転時に差し替えるのがおすすめです
  [_p]
  
; /// /// /// /// /// /// /// /// /// /// /// /// ///

  [ude chara="migi" name="ふむ"]
  [say chara="migi" kuchi="a"]
    右...ふむ
  [_p]

  [ude chara="migi" name="こちら"]
  [say chara="migi" kuchi="a"]
    右...こちら
  [_p]

  [ude chara="migi" name="どうぞ" free="taiki"]
  [say chara="migi" kuchi="a"]
    右...どうぞ（引き継ぎなし）
  [_p]

  [ude chara="migi" name="がお"]
  [say chara="migi" kuchi="a"]
    右...がお
  [_p]

  [ude chara="migi" name="よし"]
  [say chara="migi" kuchi="a"]
    右...よし
  [_p]

  [ude chara="migi" name="どうぞ"]
  [say chara="migi" kuchi="a"]
    右...どうぞ（引き継ぎ）
  [_p]

  [ude chara="migi" name="えへん"]
  [say chara="migi" kuchi="a"]
    右...えへん
  [_p]

  [ude chara="migi" name="拍手"]
  [say chara="migi" kuchi="a"]
    右...拍手
  [_p]
  
  [ude chara="migi" name="待機"]
  [say chara="migi" kuchi="a"]
    右...待機（初期状態）アニメがないので暗転時に差し替えるのがおすすめです
  [_p]

; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
*目元一覧

  [mayu_mabuta chara="hidari" mayu="普通" mabuta="にこ"]
  [say chara="hidari" kuchi="a"]
    左　/　mayu..普通　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="hidari" mayu="普通" mabuta="ウィンク"]
  [say]
    左　/　mayu..普通　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="hidari" mayu="普通" mabuta="普通"]
  [say]
    左　/　mayu..普通　/　mabuta..普通まばたき
  [_p]

  ; ///

  [mayu_mabuta chara="hidari" mayu="キリッ" mabuta="にこ"]
  [say]
    左　/　mayu..キリッ　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="hidari" mayu="キリッ" mabuta="ウィンク"]
  [say]
    左　/　mayu..キリッ　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="hidari" mayu="キリッ" mabuta="普通"]
  [say]
    左　/　mayu..キリッ　/　mabuta..普通まばたき
  [_p]

  ; 目線は「普通」（こちらむき）と「横」（内側向き）の2種
  [eye name="横"]
  [say]
    左　/　目線を変更
  [_p]
  ; ///

  [mayu_mabuta chara="hidari" mayu="しゅん" mabuta="にこ"]
  [say]
    左　/　mayu..しゅん　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="hidari" mayu="しゅん" mabuta="ウィンク"]
  [say]
    左　/　mayu..しゅん　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="hidari" mayu="しゅん" mabuta="普通"]
  [say]
    左　/　mayu..しゅん　/　mabuta..普通まばたき
  [_p]

; /// /// /// /// /// /// /// /// /// /// /// /// ///

  [mayu_mabuta chara="migi" mayu="普通" mabuta="にこ"]
  [say chara="migi" kuchi="a"]
    右　/　mayu..普通　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="migi" mayu="普通" mabuta="ウィンク"]
  [say]
    右　/　mayu..普通　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="migi" mayu="普通" mabuta="普通"]
  [say]
    右　/　mayu..普通　/　mabuta..普通まばたき
  [_p]

  ; ///

  [mayu_mabuta chara="migi" mayu="キリッ" mabuta="にこ"]
  [say]
    右　/　mayu..キリッ　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="migi" mayu="キリッ" mabuta="ウィンク"]
  [say]
    右　/　mayu..キリッ　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="migi" mayu="キリッ" mabuta="普通"]
  [say]
    右　/　mayu..キリッ　/　mabuta..普通まばたき
  [_p]

  ; ///

  [mayu_mabuta chara="migi" mayu="しゅん" mabuta="にこ"]
  [say]
    右　/　mayu..しゅん　/　mabuta..にこ
  [_p]

  [mayu_mabuta chara="migi" mayu="しゅん" mabuta="ウィンク"]
  [say]
    右　/　mayu..しゅん　/　mabuta..ウィンク
  [_p]

  [mayu_mabuta chara="migi" mayu="しゅん" mabuta="普通"]
  [say]
    右　/　mayu..しゅん　/　mabuta..普通まばたき
  [_p]

; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
*口パク一覧

  [say chara="hidari" kuchi="a"]
    左側が喋ります！あああああああああああああああああああああああああああああああああああああ
  [_p]

  [say chara="hidari" kuchi="u"]
    左側が喋ります！ううううううううううううううううううううううううううううううううううううう
  [_p]

  [say chara="hidari" kuchi="o"]
    左側が喋ります！おおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおお
  [_p]

  ; 喋らずに口だけ変える
  [kuchi chara="hidari" name="a"]

  [say chara="migi" kuchi="o"]
    右側が喋ります！おおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおお
  [_p]

  [say chara="migi" kuchi="a"]
    右側が喋ります！あああああああああああああああああああああああああああああああああああああ
  [_p]

  [say chara="migi" kuchi="u"]
    右側が喋ります！ううううううううううううううううううううううううううううううううううううう
  [_p]

  ; ↓「kuchi」を省いているので、それぞれ最後に指定した口のまま口パクをする（この場合、左は「a」右は「u」）
  [say chara="w"]
  二人で喋る！ああああああああああああああああああああああああああああああああああああああ
  
[_k_stop]
[s]
