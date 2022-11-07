;;;;from_novecole_system_1002
[if exp="window.location.search.indexOf('pwdmode=1')!=-1"]

[iscript]
	console.log("pwa");
	$.getScript("https://novelgame.jp/js/master/novecole_pwa.js",function(e){
		TYRANO.kag.ftag.startTag("jump", {"target":"pwa_complete"});
	});
[endscript]
[s]
*pwa_complete
[_init_novecole_pwa]

[endif]
;;;;to_novecole_system_1002

;一番最初に呼び出されるファイル

[stop_keyconfig]

[preload storage="data/image/mask.png"]
[mask time=100 graphic="mask.png"]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
;@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
@loadcss file="./data/others/css/style.css"

[plugin name=for]

@call storage="macro.ks"
@call storage="chara_set.ks"

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


