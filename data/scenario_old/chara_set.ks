
[iscript]
  // 現在のudeのpose、連想配列だから事前に宣言する必要がある
  f.chara_name = ["hidari","migi"];
  f.pose_syoki = {};
  f.pose_now = {};
  f.pose_syoki = {
    "kuchi":"a",
    "mayu":"普通",
    "mabuta":"普通",
    "eye":"普通",
    "ude":{"r":"taiki", "l":"taiki"}
  };
  for( var i = 0 ; i < f.chara_name.length ; i++ ){
    f.pose_now[f.chara_name[i]] = Object.create(f.pose_syoki);
  }
[endscript]

;■ 立ち絵設定 ▼▼▼///////////////////////////////////////////////////////

;登録
[foreach name=f.chara array=f.chara_name]

  [chara_new name="& f.chara" storage="bg_toumei.png" width="1278" height="720" ]
    ;体
      [chara_layer name="& f.chara" part="body" id="default"   storage="& 'chara/'+f.chara+'/body.png'"  zindex=2 ]
    ;まぶた
    ; （他のポーズは直接gif指定するためここでは指定しない）
      [chara_layer name="& f.chara" part="mabuta" id="普通" storage="& 'chara/'+f.chara+'/mabuta/normal/mabataki.gif'"  zindex=4 ]
    ;瞳
      [chara_layer name="& f.chara" part="eye" id="普通" storage="& 'chara/'+f.chara+'/eye/r.png'"  zindex=3 ]
      [chara_layer name="& f.chara" part="eye" id="横" storage="& 'chara/'+f.chara+'/eye/l.png'"]
    ;口
      [chara_layer name="& f.chara" part="kuchi" id="a"      storage="none" zindex=3 ]
      [chara_layer name="& f.chara" part="kuchi" id="u"      storage="chara/kuchi/u.png"]
      [chara_layer name="& f.chara" part="kuchi" id="o"      storage="chara/kuchi/u.png"]
    ;腕ポーズ
    ; （他のポーズは直接gif指定するためここでは指定しない）
      [chara_layer name="& f.chara" part="ude_r" id="taiki" storage="& 'chara/'+f.chara+'/ude/r/taiki.png'" zindex=6 ]
      [chara_layer name="& f.chara" part="ude_l" id="taiki" storage="& 'chara/'+f.chara+'/ude/l/taiki.png'" zindex=7 ]
    ;漫符
      [chara_layer name="& f.chara" part="manpu" id="none"      storage="none" zindex=10 ]
[nextfor]

;■ キャラパーツ関連 マクロ ▼▼▼///////////////////////////////////////////////////////

; 表示以外は、mp.charaが省略できるようにしています（直前に指定したキャラを動かすようになる）

;表示----------------------------
[macro name="hyouji"]
 ; パラメータ
 ; ・syurui
  [eval exp="f.now_chara = mp.chara "]
  [if exp="f.now_chara == 'migi' "]
    [chara_show name="& f.now_chara" time="0" wait="true" layer=2 zindex="20" left="60"]
  [else]
    [chara_show name="& f.now_chara" time="0" wait="true" layer=2 zindex="20" left="-60" top="48" reflect="true"]
  [endif]
[endmacro]

; リセット----------------------------
[macro name="pose_reset"]
  [iscript]
    if(mp.chara){
      f.now_chara = mp.chara;
    }
    // ポーズの変数もリセット
    f.pose_now[f.now_chara] = Object.create(f.pose_syoki);
  [endscript]
  [chara_part_reset name="& f.now_chara"]
[endmacro]

;セリフ開始 ----------------------------
[macro name="say"]
  [iscript]
    if(mp.chara){
      f.now_say_chara = mp.chara;
    }
    f.now_chara = f.now_say_chara;
    if(!mp.size){
      f.f_size = 'normal';
    }else{
      f.f_size = mp.size;
    }
  [endscript]
  
  ; 吹き出しサイズに応じてフォントサイズなど調整（文字色変化が起きる可能性があるので、deffontする）
  [if exp="f.old_size != f.f_size"]
  
    [if exp="f.f_size == 'big' "]
      [deffont size="26"]
    [else]
      [deffont size="30"]
    [endif]
    [resetfont]
  
  [endif]
  
  ; 前回と違う側が話すとき or size違う場合、吹き出し更新
  [if exp="f.old_chara != f.now_say_chara || f.old_size != f.f_size"]
    [free layer="message0" name="fukidashi" time="100" wait="true"]
    
    [if exp="f.now_say_chara == 'migi' "]
    
      [if exp="f.f_size == 'big' "]
        [position layer=message0 left=321 top=303 width=650 height=400 marginr="0" marginl="0" margint="0" marginb="60"]
        [image layer="message0" zindex="100" name="fukidashi" storage="fukidashi/r_big.png" x="264" y="246" time="300" wait="false"]
      [else]
        [position layer=message0 left=490 top=570 width=700 height=130 marginr="0" marginl="0" margint="0" marginb="60"]
        [image layer="message0" zindex="100" name="fukidashi" storage="fukidashi/r.png" x="384" y="498" time="300" wait="false"]
      [endif]
      
      [kanim keyframe="scale" name="fukidashi" time="300" easing="cubic-bezier(.17,.87,.55,1.21)" ]
      
    [elsif exp="f.now_say_chara == 'hidari' "]
      [if exp="f.f_size == 'big' "]
        [position layer=message0 left=330 top=303 width=650 height=400 marginr="0" marginl="0" margint="0" marginb="60"]
        [image layer="message0" zindex="100" name="fukidashi" storage="fukidashi/l_big.png" x="282" y="246" time="300" wait="false"]
      [else]
        [position layer=message0 left=110 top=570 width=700 height=130 marginr="0" marginl="0" margint="0" marginb="60"]
        [image layer="message0" zindex="100" name="fukidashi" storage="fukidashi/l.png" x="-12" y="498" time="300" wait="false"]
      [endif]
      [kanim keyframe="scale" name="fukidashi" time="300" easing="cubic-bezier(.17,.87,.55,1.21)" ]
      
    [elsif exp="f.now_say_chara == 'w' "]
      [position layer=message0 left=296 top=570 width=700 height=130 marginr="0" marginl="0" margint="0" marginb="60"]
      [image layer="message0" zindex="100" name="fukidashi" storage="fukidashi/c.png" x="186" y="498" time="300" wait="false"]
      [kanim keyframe="scale" name="fukidashi" time="300" easing="cubic-bezier(.17,.87,.55,1.21)" ]
    [endif]
  [endif]
  
  ; 今の発言者と吹き出しサイズを記録しとく
  [eval exp="f.old_chara = f.now_say_chara"]
  [eval exp="f.old_size = f.f_size"]
  
  ; 口パク
    ; 二人同時の時
    [if exp="f.now_say_chara == 'w' "]
      [foreach name=f.chara array=f.chara_name]
        [iscript]
          if(mp.kuchi){
            f.pose_now[f.chara].kuchi = mp.kuchi;
          }
          tf.storage = "chara/kuchi/"+f.pose_now[f.chara].kuchi+".gif?" + new Date().getTime();
        [endscript]
      	[chara_part name="& f.chara" kuchi="& tf.storage" allow_storage=true ]
      [nextfor]
    [else]
      [iscript]
        if(mp.kuchi){
          f.pose_now[f.now_say_chara].kuchi = mp.kuchi;
        }
        tf.storage = "chara/kuchi/"+f.pose_now[f.now_say_chara].kuchi+".gif?" + new Date().getTime();
      [endscript]
    	[chara_part name="& f.now_say_chara" kuchi="& tf.storage" allow_storage=true ]
    [endif]
    
  [wait time="100"]
  
[endmacro]

[macro name="fukidashi_del"]
  [eval exp="f.old_chara = '' "]
  [free layer="message0" name="fukidashi" time="100" wait="true"]
[endmacro]

;喋らずに口を変える ----------------------------
[macro name="kuchi"]
  [iscript]
    if(mp.chara){
      f.now_chara = mp.chara;
    }
    f.pose_now[f.now_chara].kuchi = mp.name;
  [endscript]
	[chara_part name="& f.now_chara" kuchi="& mp.name" ]
[endmacro]


;口パク止める ----------------------------
[macro name="_p"]
  [if exp="f.now_say_chara == 'w' "]
    [foreach name=f.chara array=f.chara_name]
      [chara_part name="& f.chara" kuchi="& f.pose_now[f.chara].kuchi" ]
    [nextfor]
  [else]
  	[chara_part name="& f.now_say_chara" kuchi="& f.pose_now[f.now_say_chara].kuchi" ]
  [endif]
	[p]
[endmacro]

[macro name="_l"]
  [if exp="f.now_say_chara == 'w' "]
    [foreach name=f.chara array=f.chara_name]
      [chara_part name="& f.chara" kuchi="& f.pose_now[f.chara].kuchi" ]
    [nextfor]
  [else]
  	[chara_part name="& f.now_say_chara" kuchi="& f.pose_now[f.now_say_chara].kuchi" ]
  [endif]
	[l]
[endmacro]

[macro name="_k_stop"]
  [if exp="f.now_say_chara == 'w' "]
    [foreach name=f.chara array=f.chara_name]
      [chara_part name="& f.chara" kuchi="& f.pose_now[f.chara].kuchi" ]
    [nextfor]
  [else]
  	[chara_part name="& f.now_say_chara" kuchi="& f.pose_now[f.now_say_chara].kuchi" ]
  [endif]
  [wait time="10"]
[endmacro]

;目線 ----------------------------

[macro name="eye"]
  [iscript]
    if(mp.chara){
      f.now_chara = mp.chara;
    }
  [endscript]
  
  ; 前回と違うポーズなら変更実行
  [if exp="f.pose_now[f.now_chara].eye != mp.name"]
    [chara_part name="& f.now_chara" eye="& mp.name" ]
  [endif]
  
  [iscript]
    // 今のポーズを記録
    f.pose_now[f.now_chara].eye = mp.name;
  [endscript]

[endmacro]

;眉毛+まぶた ----------------------------

[macro name="mayu_mabuta"]
  ; mayu
  ; mabuta

  [iscript]
    // 変更するキャラが指定されてたら
    if(mp.chara){
      f.now_chara = mp.chara;
    }
    if(mp.mayu){
      tf.mayu = mp.mayu;
    }else{
      tf.mayu = f.pose_now[f.now_chara].mayu;
    }
    if(mp.mabuta){
      tf.mabuta = mp.mabuta;
    }else{
      tf.mabuta = f.pose_now[f.now_chara].mabuta;
    }

    // まゆ
    if(tf.mayu == "普通"){
      tf.mayu_next = "normal" ;

    }else if(tf.mayu == "キリッ"){
      tf.mayu_next = "kiri" ;

    }else if(tf.mayu == "しゅん"){
      tf.mayu_next = "syun" ;
    }
    
    // まぶた
    if(tf.mabuta == "普通"){
      tf.mabuta_next = "mabataki" ;

    }else if(tf.mabuta == "にこ"){
      tf.mabuta_next = "nico" ;
      
    }else if(tf.mabuta == "ウィンク"){
      tf.mabuta_next = "wink" ;
    }
    
    // まばたきを揃えるために、眉毛とまぶたは同時に動かさなくてはいけないため、どちらかでも変更があればどちらも変更する必要がある
    tf.henkou = 0 ;
    if(f.pose_now[f.now_chara].mayu != tf.mayu_next ){
      tf.henkou = 1 ;
    }
    if(f.pose_now[f.now_chara].mabuta != tf.mabuta_next ){
      tf.henkou = 1 ;
    }
    
    // 今のポーズを記録
    f.pose_now[f.now_chara].mayu = tf.mayu_next ;
    f.pose_now[f.now_chara].mabuta = tf.mabuta_next ;
    
  [endscript]
  
  [if exp="tf.henkou == 1 "]
    ; gifなのでクエリつける
    [iscript]
      tf.mabuta_storage = "chara/"+f.now_chara+"/mabuta/"+tf.mayu_next+"/"+tf.mabuta_next+".gif?" + new Date().getTime();
    [endscript]
  	[chara_part name="& f.now_chara" mabuta="& tf.mabuta_storage" allow_storage=true ]
  [endif]

[endmacro]

;腕 ----------------------------

[macro name="ude"]
  
  [iscript]
    // 変更するキャラが指定されてたら
    if(mp.chara){
      f.now_chara = mp.chara;
    }
  
    // 仮の値を突っ込む変数
    tf.karipose={"name":mp.name, "r":"", "l":""};
    
    tf.rl_arr = ['r','l'];
    
    // 左右別にpose名のセット
    if(tf.karipose.name == "待機"){
      tf.karipose.r = "taiki";
      tf.karipose.l = "taiki";

    }else if(tf.karipose.name == "ふむ"){
      if(mp.free == "taiki" || f.pose_now[f.now_chara].ude.r == "none"){
        tf.karipose.r = "taiki";
      }else{
        tf.karipose.r = f.pose_now[f.now_chara].ude.r ; //rは前回のまま
      }
      tf.karipose.l = "fumu";
        
    }else if(tf.karipose.name == "こちら"){
      if(mp.free == "taiki" || f.pose_now[f.now_chara].ude.r == "none"){
        tf.karipose.r = "taiki";
      }else{
        tf.karipose.r = f.pose_now[f.now_chara].ude.r ; //rは前回のまま
      }
      tf.karipose.l = "kochira";
        
    }else if(tf.karipose.name == "どうぞ"){
      tf.karipose.r = "douzo";
      if(mp.free == "taiki" || f.pose_now[f.now_chara].ude.l == "none" ){
        tf.karipose.l = "taiki";
      }else{
        tf.karipose.l = f.pose_now[f.now_chara].ude.l ; //rは前回のまま
      }
      
    }else if(tf.karipose.name == "がお"){
      tf.karipose.r = "gao";
      tf.karipose.l = "gao";
      
    }else if(tf.karipose.name == "よし"){
      tf.karipose.r = "yoshi";
      tf.karipose.l = "yoshi";
      
    }else if(tf.karipose.name == "えへん"){
      tf.karipose.r = "ehen";
      tf.karipose.l = "ehen";
      
    }else if(tf.karipose.name == "拍手"){
      tf.karipose.r = "pachi";
      tf.karipose.l = "none";
    }
  [endscript]
  
  [foreach name=tf.rl array="tf.rl_arr"]
      ; 前回と違うポーズなら変更実行
      [if exp="f.pose_now[f.now_chara].ude[tf.rl] != tf.karipose[tf.rl] "]
        [iscript]
          // 待機の場合はpng
          if(tf.karipose[tf.rl] == "taiki"){
            tf.storage = "chara/"+f.now_chara+"/ude/"+tf.rl+"/"+tf.karipose[tf.rl]+".png";
          }else{
            // noneの場合は透明に
            if(tf.karipose[tf.rl] == "none"){
              tf.storage = "bg_toumei.png";
            }else{
              // それ以外はgifなのでクエリつける
              tf.storage = "chara/"+f.now_chara+"/ude/"+tf.rl+"/"+tf.karipose[tf.rl]+".png?" + new Date().getTime();
            }
          }
        [endscript]
        
        ; 多分パラメータに変数使えないのでif文で右と左を出し分ける..
        [if exp="tf.rl == 'r' "]
          [chara_part name="& f.now_chara" ude_r="& tf.storage" allow_storage=true ]
        [else]
          [chara_part name="& f.now_chara" ude_l="& tf.storage" allow_storage=true ]
        [endif]
        
      [endif]

  [nextfor]
  
  [iscript]
    // 今のポーズを記録
    f.pose_now[f.now_chara].ude = JSON.parse(JSON.stringify(tf.karipose));
  [endscript]

[endmacro]


;漫符 ----------------------------

[macro name="manpu"]
  
  [iscript]
    // 変更するキャラが指定されてたら
    if(mp.chara){
      f.now_chara = mp.chara;
    }
    tf.storage = "chara/manpu/"+mp.name+".png?" + new Date().getTime();
  [endscript]
  [chara_part name="& f.now_chara" manpu="& tf.storage" allow_storage=true ]
  
[endmacro]

;■ キャラパーツ関連 ▲▲▲///////////////////////////////////////////////////////