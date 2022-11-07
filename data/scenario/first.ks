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
[plugin name=celanim]


@call storage="macro.ks"
@call storage="chara_set.ks"

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


