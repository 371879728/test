
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
		
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]


; ――――――――――――――――――――――――――――――――――――――――――――――――

; 初期設定系ロードマクロ

[macro name="system_load"]
[if exp="f.gameStartUp != true"]

; 確認用（初期値は偽）
[eval exp="sf.view_debug = false"]

; ◆目パチ口パクプラグイン
[plugin name="frameanimation" blank_image="data/image/blank.png"]

; ◆変数設定
[call storage="sys_seting.ks"]

; ◆マクロ呼び出し
[call storage="sys_macro.ks"]

; ◆js呼び出し
[loadjs storage="myscript.js"]

[iscript]
if(sf.tapEffect == null){
sf.tapEffect = true;
}
[endscript]

[eval exp="f.gameStartUp = true"]
[endif]
[endmacro]


; -------------------------------------------------------------------------------------------------

; デバッグ用・一瞬にしてフルコンプセット
[macro name="debugSet"]

[iscript]

// chapter
dbgExChapter();

function dbgExChapter(){
sf.chapter_ttl['ch01'] = true;
sf.chapter['ch01-1'] = true;
sf.chapter['ch01-2'] = true;
sf.chapter['ch01-3'] = true;
sf.chapter['ch01-4'] = true;

sf.chapter_ttl['ch02'] = true;
sf.chapter['ch02-1'] = true;
sf.chapter['ch02-2'] = true;
sf.chapter['ch02-3'] = true;

sf.chapter_ttl['ch03'] = true;
sf.chapter['ch03-1'] = true;
sf.chapter['ch03-2'] = true;
sf.chapter['ch03-3a'] = true;
sf.chapter['ch03-3b'] = true;
sf.chapter['ch03-4a'] = true;
sf.chapter['ch03-4b'] = true;
sf.chapter['ch03-5'] = true;

sf.chapter_ttl['ch04'] = true;
sf.chapter['ch04-1'] = true;
sf.chapter['ch04-2'] = true;

sf.chapter_ttl['root-P'] = true;
sf.chapter['root-P01-1'] = true;
sf.chapter['root-P01-2'] = true;
sf.chapter['root-P01-3'] = true;
sf.chapter['root-P02-1'] = true;
sf.chapter['root-P02-2'] = true;
sf.chapter_end['ED1'] = true;

sf.chapter_ttl['root-D'] = true;
sf.chapter['root-D01-1'] = true;
sf.chapter['root-D01-2'] = true;
sf.chapter['root-D02-1'] = true;
sf.chapter['root-D02-2'] = true;
sf.chapter['root-D02-3'] = true;
sf.chapter_end['ED2'] = true;

sf.chapter_ttl['root-C'] = true;
sf.chapter['root-C01-1'] = true;
sf.chapter_end['ED3'] = true;
}


// イベントCG
dbgExEventCG();

function dbgExEventCG(){
var num;
for(var i = 1; i<=sf.eventcg_max; i++){
if(i == 3){
sf.eventcg_view['3a'] = true;
sf.eventcg_view['3b'] = true;
}
else{
num = i + '';
sf.eventcg_view[num] = true;
}
}
}

[endscript]

[endmacro]


; -------------------------------------------------------------------------------------------------

[return]


