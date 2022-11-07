*start

[bgmopt volume=100 ]

[macro name="mi"]
[say chara="migi" kuchi="a"]
[endmacro]


[macro name="hi"]
[say chara="hidari" kuchi="a"]
[endmacro]

[macro name="w"]
[say chara="w" kuchi="a"]
[endmacro]



;プリロード
[preload storage="data/bgm/music.mp3"]
[preload storage="data/bgm/music2.mp3"]
[preload storage="data/bgm/music3.mp3"]

[preload storage="data/fgimage/fes/545.png"]
[preload storage="data/fgimage/fes/amazon.jpg"]
[preload storage="data/fgimage/fes/badge_1.png"]
[preload storage="data/fgimage/fes/coin_more.png"]
[preload storage="data/fgimage/fes/coin1.png"]
[preload storage="data/fgimage/fes/comment.png"]
[preload storage="data/fgimage/fes/creator.png"]
[preload storage="data/fgimage/fes/dia.png"]
[preload storage="data/fgimage/fes/fanart.png"]
[preload storage="data/fgimage/fes/fes_badge.png"]
[preload storage="data/fgimage/fes/fes1.png"]
[preload storage="data/fgimage/fes/fes2.png"]
[preload storage="data/fgimage/fes/fes3.png"]
[preload storage="data/fgimage/fes/fes4.png"]
[preload storage="data/fgimage/fes/fes5.png"]
[preload storage="data/fgimage/fes/game.png"]
[preload storage="data/fgimage/fes/heart.png"]
[preload storage="data/fgimage/fes/news.png"]
[preload storage="data/fgimage/fes/nui.png"]
[preload storage="data/fgimage/fes/player.png"]
[preload storage="data/fgimage/fes/sponsor.png"]
[preload storage="data/fgimage/fes/sponsor2.png"]
[preload storage="data/fgimage/fes/sponsor3.png"]
[preload storage="data/fgimage/fes/sponsor4.png"]
[preload storage="data/fgimage/fes/step1.png"]
[preload storage="data/fgimage/fes/step2.png"]
[preload storage="data/fgimage/fes/step3.png"]
[preload storage="data/fgimage/fes/step5.png"]
[preload storage="data/fgimage/fes/switch.png"]
[preload storage="data/fgimage/fes/yell0.png"]
[preload storage="data/fgimage/fes/yell1.png"]
[preload storage="data/fgimage/fes/yell2.png"]
[preload storage="data/fgimage/fes/yell3.png"]
[preload storage="data/fgimage/fes/yell4.png"]

[preload storage="data/fgimage/fes/vfes1.png"]
[preload storage="data/fgimage/fes/vfes2.gif"]




[mask_off time=2000]


; //////////////////////////////////////////////////

; カットインは、文字を出しつつ行う想定です。（トピック変更時に使う）
; [cutin text="& ['ティラノ']"]のようにすれば、1行でもできます。というか何行でもできますが、何行まで使用される可能性があるかわからなかったので、今の所2行までしか想定していない作りになっています。
; [cutin]で画面を覆い隠し、その間に画面を変更して、[cutin_out]で画面を隠していたものをとります。使い方としては、maskみたいなものです。
[cutin text="& ['タップして開始']"]
  ; 右上の半透明のやつ
  [image layer="2" name="migiue_img" zindex="100" storage="bg/r.png" x="0" y="0" time="10" wait="true"]
  ; キャラ表示
  [hyouji chara="migi"]
  [hyouji chara="hidari"]
  
  [p]
  [playbgm storage="music.mp3" volume=30]
  
  [iscript]
  	$(".migiuetext").text("ティラノフェス2020");
  [endscript]

[cutin_out]

; 左上の半透明のやつ&日付
[image layer="2" zindex="100" storage="bg/l.png" x="0" y="0" time="300" wait="false"]
[mtext layer="2" name="highlight" text="開幕！" x=12 y=14 size=36 fadeout=false wait=false in_effect=fadeInLeft in_delay=30 in_delay_scale=1.5 color=white shadow=none wait="false"]

;[manpu chara="hidari" name="kira"]
;[manpu chara="migi" name="kira"]

[ude chara="hidari" name="がお"]
[ude chara="migi" name="がお"]
[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="にこ"]
[mayu_mabuta chara="migi" mayu="キリッ" mabuta="にこ"]
[say chara="w" kuchi="a"]
	がおー。
[_p]

[chara_part name="hidari" manpu="none" ]
[chara_part name="migi" manpu="none" ]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="普通"]

[say chara="w" kuchi="a"]
[mayu_mabuta chara="migi" mayu="普通" mabuta="普通"]
  
  ようこそ、
  [<y]ティラノゲームフェス２０２０[>] [r]
  オープニングへ！
  
[_p]

[ude chara="hidari" name="待機"]
[ude chara="migi" name="待機"]

; 定位置へ
[chara_move name="migi" time="300" anim="true" wait="false" left="354" effect="easeInOutQuad"]
[chara_move name="hidari" time="300" anim="true" wait="false" left="-354" effect="easeInOutQuad"]


[migiue text="& ['オープニング']" ]
  
;■オープニング、あいさつ

[mi]

読書の秋、食欲の秋と並ぶ一大イベント[r]

[<y]ティラノフェスの秋[>]がやってきたね！

[_p]


[manpu chara="hidari" name="ase"]
[eye chara="hidari" name="横"]

  
[say chara="hidari" kuchi="u"]
・・・。初めて聞いたよ？
[_p]


[mi]
このオープニングを最後まであそぶだけで
[_p]

[eye chara="hidari" name="普通"]


[mi]
ゲームフェスの楽しみ方が理解できるから[r]
[ude chara="migi" name="よし"]
絶対、最後までみてよね。
[_p]

[ude chara="hidari" name="えへん"]
[hi]
今年は新企画がもりだくさんだぞ。
[_p]

[ude chara="migi" name="ふむ"]
[mi]
そして、今年も素敵な作品が[r]
ティラノフェスに届いているよ！
[_p]

[mi]
さっそく、フェス参加作品数を発表するよ！
[_p]

[hi]
モニターに注目！
[_p]

; ディスプレイ画像
[image layer="1" zindex="10" name="display" storage="bg/display.png" x="276" y="-480" time="10" wait="true"]
; ディスプレイに映す画像は、全面画像の場合、690×444にするとちょうど中央になります。xyも以下の通りで中央です。
[image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="& -480+18" width="690" height="444" time="10" wait="true"]

[anim name="display" top="+=492" time="300" effect="easeOutBack"]


[eye chara="hidari" name="横"]
[eye chara="migi" name="横"]


;devを開始。

;■ことしの参加作品数

[mi]
今年のフェス参加数はーーーー。
[_p]

[playse storage="roll.mp3" volume=50 wait=false]
[wse]
[playse storage="roll_fin.mp3" volume=50 wait=false]


[ude chara="migi" name="こちら"]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/545.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]

[mi]
新作ゲームが５４５作品！！
[_p]

[migiue text="&['速報：545作品が参加！']" ]


[playse storage="kansei.mp3" wait=false]
[ude chara="hidari" name="拍手"]
[manpu chara="hidari" name="picon"]

[hi]
ええっ！！ すごい！！
[_p]

[ude chara="migi" name="えへん"]
  
[mi]
これまでのティラノフェスの記録を大きく更新したね。
[_p]

[eye chara="hidari" name="普通"]
[manpu chara="hidari" name="ase"]
[mayu_mabuta chara="hidari" mayu="しゅん" mabuta="普通"]
   
[hi]
世界的にみても、最大規模の開発コンテストだよ！！
[_p]

[mayu_mabuta chara="hidari" mayu="普通" mabuta="普通"]
[mayu_mabuta chara="migi" mayu="普通" mabuta="にこ"]
  
[mi]
これだけの作品が一同に集まったことは[r]
本当にすごいことだし、うれしいね！
[_p]

[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="にこ"]
[ude chara="hidari" name="拍手"]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="普通"]
[ude chara="migi" name="拍手"]

[playse storage="kansei.mp3" wait=false]

[w]
フェス参加の皆様、お疲れさまでした！！
[_p]


[mayu_mabuta chara="migi" mayu="普通" mabuta="普通"]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="普通"]
  

[mi]
さっそく参加作品を紹介するよ。
[_p]

[migiue text="&['フェス作品入場']" ]


[chara_move name="migi" time="100" anim="true" wait="false" left="394" effect="easeInOutQuad"]


[eye chara="hidari" name="横"]
[eye chara="migi" name="横"]

[ude chara="migi" name="どうぞ" free="taiki"]
[ude chara="hidari" name="どうぞ" free="taiki"]


[iscript]

$(".migiue_img").css("opacity",0);
$(".migiue_sub").css("opacity",0);

[endscript]


[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]

[playse storage="kansei.mp3" wait=false]

[mi]

気になる作品はみつかったかな？

[_p]


[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[hi]

数が多いから大変だ！[r]
目を凝らさないと。。
[_p]

[playse storage="kansei.mp3" wait=false]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes3.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[mi]

なんたって、５４５作品だからね！！[r]
どれからあそぶか、迷うな〜♫

[_p]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes4.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]

[playse storage="kansei.mp3" wait=false]

[hi]

ぼくは直感で[r]
作品を見つけるタイプなのだ！

[_p]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes5.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[mi]

[eye chara="hidari" name="普通" ]
[eye chara="migi" name="普通" ]

フェスに参加してくれて、本当にありがとう！

[_p]


[iscript]

$(".migiue_img").css("opacity",1);
$(".migiue_sub").css("opacity",1);

[endscript]


[chara_move name="migi" time="100" anim="true" wait="false" left="354" effect="easeInOutQuad"]

[ude chara="hidari" name="待機"]
[ude chara="migi" name="待機"]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/badge_1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[mi]
フェス参加者のみなさんへ[r]
 [<y]『TGF2020エントリー達成』[>]バッジを贈呈したよ。
[_p]

[hi]
ティラノフェス２０２０に参加した証だね！！
[_p]

[cutin text="& ['フェスの楽しみ方']"]

  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [free layer="1" name="display_img" time="10" wait="true"]
  [image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

  [migiue text="&['コメントキャンペーン']" ]

[cutin_out]	

[mi]
 続いては、
 [<y]『フェスの楽しみ方』[>]を紹介していくよ。
[_p]

[mi]
これをみれば、フェスの楽しみ方はバッチリ理解できるよ。
[_p]

[hi]
それは助かるぞ！
[_p]


[mi]

まず、ティラノフェスといえば、、[r]
[<y]「コメントキャンペーン」[>]が今年も実施されるよ！

[_p]

[mi]
ティラノフェスの作品は、プレイしたらぜひ[r]
コメントを残してほしいんだ。
[_p]

[mi]
まず、ティラノフェス２０２０専用の特設サイトを見てみよう。
[_p]

[ude chara="hidari" name="こちら"]
[eye chara="hidari" name="横"]
  
[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/step1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
メニュー[<y]「フェス」[>]のリンクをクリックしてね。
[_p]

[ude chara="hidari" name="待機"]

[mi]
フェスの参加作品を効率的に探して[r]
あそぶことができるよ
[_p]

[eye chara="hidari" name="普通"]
[eye chara="migi" name="横"]

[hi]
プレイ時間で検索したり[r]
コメント済かどうかで絞り込むこともできたよ。
[_p]

[mi]
長編ゲームは、ダウンロード版であそぶのがおすすめ。
[_p]

[mi]
逆に、短編ゲームならブラウザでサクッとあそんでみてね。
[_p]

[eye chara="hidari" name="普通"]
[eye chara="migi" name="横"]


[mi]
ゲームを遊び終わったら、ぜひ拍手を送ってあげてね！！
[_p]

[eye chara="hidari" name="横"]
[eye chara="migi" name="普通"]


[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/step2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[ude chara="migi" name="よし"]
[manpu chara="migi" name="heart"]

[mi]
ここ！ここの「拍手する」ボタンをポチ！　
[_p]

[hi]
[<y]あそんだよ！[>]という報告が作者さんの力になるんだから。
[_p]


[mi]
そして、拍手のあとは、作品にコメントも残してほしいな。
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/step3.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
その時、ツイッターにも同時につぶやくに、チェックを入れてると
[_p]

[mi]
なんと
[_p]

[hi]
なんと？
[_p]

[mi]
なんと、抽選で
[_p]

[hi]
抽選で？
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/game.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[ude chara="migi" name="えへん"]
  
[mi]
1名様に、お好きなゲーム機本体 か Padが！
[_p]

[playse storage="kansei.mp3" wait=true]

[ude chara="migi" name="拍手"]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/amazon.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
さらに、10名様にAmazonギフトカード１０００円分が、抽選であたる！
[_p]

[playse storage="kansei.mp3" wait=true]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/nui.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[manpu chara="hidari" name="heart"]

[mi]

フェス参加者には、ダブルチャンスで、限定ぬいぐるみ+ギフトカード１０００円！

[_p]

[ude chara="hidari" name="がお"]
[manpu chara="hidari" name="kira"]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="にこ"]

[hi]
うおお！
ゲーム機は「ぷれすてふぁいぶ」選んでもいいの！？
[_p]

[mi]
も、もちろんよ。
[_p]

[ude chara="hidari" name="えへん"]
[manpu chara="hidari" name="heart"]

[hi]
しゃらーい！
[_p]

[mayu_mabuta chara="hidari" mayu="普通" mabuta="普通"]

[mi]
ツイートはつぶやいた回数分[r]
エントリーできるから
[_p]

[mi]
たくさん遊んで感想をつぶやいたほうが当選確率は大幅アップだよ！！
[_p]

[hi]
感想ツイートしまくるよ！！
[_p]

[ude chara="migi" name="待機"]

[mi]
そして、ここからが、さらにすごい。
[_p]


[anim name="display" top="-=492" time="300" effect="easeOutBack"]
[chara_move name="hidari" time="1000" anim="true" wait="true" left="-660" effect="easeInOutQuad"]

;背景を暗く
[filter layer="base" brightness="30 "]

;フェスコメントの解説。

[image name="kanban_1" layer=1 storage="fes/player.png" top=60 left=30 width=400 time=20 visible=true ]

[mi]
こちら、ゲームを遊んだ人
[_p]


[image name="kanban_2" layer=1 storage="fes/creator.png" top=60 left=530 width=400 time=20 visible=true ]

[mi]
こちら、そのゲームを作った作者さん[_p]

[image name="comment" layer=1 storage="fes/comment.png" top=250 left=250 ]

[mi]
感想を[_p]

[anim name="comment" left="+=300" time=2000 ]

[eye chara="migi" name="横"]

[mi]
作品に残すと。。。[_p]

[free layer=1 name="comment"]
ゲームの作者さんから[p]

[image name="dia" layer=1 storage="fes/dia.png" top=250 left=550 ]

[mi]
お礼として[_p]

[anim name="dia" left="-=300" time=2000 ]
ダイア玉というアイテムが貰える事があるよ。[p]

[eye chara="hidari" name="普通"]

[image name="dia" layer=1 storage="fes/dia.png" top=150 left=80 ]
[image name="dia" layer=1 storage="fes/dia.png" top=320 left=100 ]
[image name="dia" layer=1 storage="fes/dia.png" top=350 left=200 ]
[image name="dia" layer=1 storage="fes/dia.png" top=280 left=250 ]
[image name="dia" layer=1 storage="fes/dia.png" top=450 left=120 ]
[image name="dia" layer=1 storage="fes/dia.png" top=390 left=180 ]
[image name="dia" layer=1 storage="fes/dia.png" top=340 left=20 ]
このダイア玉をたくさん集めると[p]

[eye chara="hidari" name="横"]


限定のクオカードや、限定バッジなんかが当たるから[p]
ダイア玉集めにも、ぜひ、チャレンジしてみてね。[p]

[eye chara="hidari" name="普通"]

[free layer=1 name="dia"]


[mi]
さらに〜[_p]


[image name="comment" layer=1 storage="fes/comment.png" top=250 left=250 ]


[mi]

コメントと一緒に[l]
[image name="fanart" layer=1 storage="fes/fanart.png" top=150 left=50 ]
[free layer=1 name="kanban_1"]
ファンアートを[_p]

[eye chara="hidari" name="横"]

[anim name="comment" left="+=300" time=2000 ]
;[anim name="kanban_1" left="+=300" time=2000 ]


[mi]
送ってあげると、、、[_p]

[image name="dia" layer=1 storage="fes/dia.png" top=250 left=550 ]
[image name="dia" layer=1 storage="fes/dia.png" top=300 left=570 ]
[anim name="dia" left="-=300" time=2000 ]


[eye chara="hidari" name="普通"]

[mi]
ダイア玉が２個もらえます！！！[_p]


[mi]
ファンアートを送ってあげると、ダイア玉集めが大幅に捗るね！！[_p]

[freeimage layer=1]

[filter layer="base" brightness=100 ]

[chara_move name="hidari" time="300" anim="true" wait="false" left="-354" effect="easeInOutQuad"]

[eye chara="hidari" name="横"]

[mi]
えっ、ちょっとむずかしい？[_p]

[mi]
そんなあなたに。[r]
このオープニングゲームにも[_p]


[mi]
拍手、コメント、ファンアートを贈れるのだ！！[_p]

[eye chara="hidari" name="普通"]

[mi]
ぜひ、フェスの応援メッセージや応援イラストを送ってくださいね！[_p]


[mi]
もちろん、キャンペーンへの参加やダイア玉も貰えるから
[_p]

[mi]
まずは練習のつもりで、気軽にコメントしてみてね。[_p]


[mi]
あ、あと気をつけてほしいのは[r]

[manpu chara="migi" name="gan"]

チートとか不正は絶対わかるから、やめてね。[_p]

[mi]
判明したら、わたしが回収しにいかなきゃだから。。。
[_p]

[fadeoutbgm]

[wait time=1000]


[cutin text="& ['新システム登場！']"]
	
  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [image layer="1" zindex="10" name="display" storage="bg/display.png" x="276" y="12" time="10" wait="true"]
  [free layer="1" name="display_img" time="10" wait="true"]
  [image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[playbgm storage="music2.mp3" volume=30 ]


[migiue text="&['ノベコレニュース']" ]

[cutin_out]	

[mi]
さぁ、フェス２０２０から新しく始まる新システムを紹介するよ！
[_p]

[hi]
ここからは新しいチャレンジだね。
[_p]

[mi]
まずは最初の新システム！
[_p]

[anim name="display" top="12" time="300" effect="easeOutBack"]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/news.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[mi]

[<y]『ノベコレニュース』[>]がスタート！！
[_p]

[ude chara="hidari" name="よし"]
[ude chara="migi" name="よし"]
  

[mi]
ノベコレニュースは私達が毎日[r]
最新のゲーム情報を発信するよ。
[_p]

[hi]
みんなのファンアートやコメントも[r]
積極的に紹介するから
[_p]

[hi]
絶対、毎日見てほしいな。
[_p]

[mi]
フェス作品以外も取り上げていくよ！[r]
新しい作品との出会いの場所にしていきたいな。
[_p]

[hi]
うむ。がんばるぞ。
[_p]

[mi]
そして、ノベコレニュースを見ると[r]
１日１回[<y]ログインボーナス[>]がもらえるぞ！

[_p]

[ude chara="migi" name="待機"]
[ude chara="hidari" name="ふむ"]

[hi]
おぉ、ログインボーナスで何がもらえるんです？
[_p]


[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/coin1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[ude chara="migi" name="どうぞ" free="taiki"]

[mi]
それはこちら、、、。[r]
[<y]ノベルコイン！！[>]
[_p]

[migiue text="&['ノベルコイン']" ]


[ude chara="migi" name="よし"]
[mi]
毎日ニュースをみて、コインを集めよう！
[_p]


[ude chara="hidari" name="えへん"]
[manpu chara="hidari" name="kira"]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="にこ"]

[hi]
おほー！[r]
集めてなにかいいことあるの？
[_p]


[cutin text="& ['コインで応援！']"]

  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [free layer="1" name="display_img" time="10" wait="true"]
  ;[image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]


[cutin_out]	

[mi]
ニュースにアクセスしてコインを集めるよね。
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/coin_more.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
その集めたコインを使って[r]
作品を応援できるんだ
[_p]

[hi]
なるほど。自分の推し作品を[r]
コインをつかって応援できるってこと？
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell0.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
そうそう！作品ページの[r]
[<y]『コインで作品を応援する』[>]をクリックしてね。
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
応援の種類が選択して[r]
推しの作品をプッシュしてください！
[_p]

[hi]
コインの枚数によって[r]
効果が変わるのかな？
[_p]

[mi]
その通り！
[_p]

[mi]
まずは、コイン１枚を消費する[r]
[<y]『ピックアップ』[>]
[_p]

[mi]
これは作品一覧で[r]
枠に色がついて目立つようになるよ。
[_p]

[hi]
目にとまるとアクセス数が伸びそうだね。
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
次は、コイン３枚を消費する[r]
[<y]『トップに推薦』[>]
[_p]

[mi]
これは、ノベコレの一番目立つところに[r]
作品を表示できる応援だよ。
[_p]

[hi]
トップページのくるくる回ってるところだね。[r]
これは効果高そう！
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell3.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
続いては、コイン５枚を消費する[r]
[<y]『ニュースで紹介』[>]
[_p]

[mi]
翌日のノベコレニュースで[r]
応援コメントと一緒に紹介するよ！
[_p]

[hi]
おぉー。これは記念に一度は応援されてみたいね。
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell4.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
最後はコイン５枚を消費する[r]
[<y]『ダイア玉ブースト』[>]
[_p]

[mi]
この応援はスポンサー限定なの。
[_p]

[mi]
この応援を行うと[r]
４８時間、ダイア玉が１個増量されるよ。
[_p]

[hi]
つまり、ブーストされている作品をあそぶと[r]
効率よくダイア玉が集まるということ？
[_p]

[mi]

そうそう。[r]
特に長編ゲームは手を出しにくい場合もあるけど
[_p]

[mi]
ダイア玉ブーストしてあげることで[r]
あそぶキッカケになったらいいと思う。
[_p]

[hi]
たしかに、長編作品は最初、少し腰が重いけど[r]
プレイ後の満足感はすごいからね！
[_p]

[mi]
ダイア玉ブーストされている作品はチャンスなので
ぜひ、遊んでみてくださいね。
[_p]

[mi]
ちなみに、ダイア玉ブースト状態時に[r]
拍手を完了することで権利が付与されるよ。
[_p]

[eye chara="hidari" name="横"]

[say chara="hidari" kuchi="u"]
あのー。[r]
このコインって貯めて、なにかに交換とか、、、。
[_p]

[eye chara="migi" name="横"]

[say chara="migi" kuchi="u"]
できないわよ。
[_p]

[manpu chara="hidari" name="gan"]

[say chara="hidari" kuchi="u"]
あ、そうなんだ。
[_p]

[mi]
だから、ニュースで作品みつけて、あそんで、[r]
コインをどんどん使って応援する。これが醍醐味だよ！
[_p]

[ude chara="hidari" name="よし"]
[hi]
コイン貯金しても意味ないということだね！
[_p]

[mi]
そう。[r]
コインは作品の応援にしかつかえません！
[_p]


[cutin text="& ['バーチャルフェス']"]

  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [free layer="1" name="display_img" time="10" wait="true"]
  [image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[migiue text="&['仮想空間で作品を探そう']" ]


[cutin_out]	


[mi]
さぁ、続いての新システム[r]
[<y]バーチャルフェス[>]を紹介するよ！

[_p]

[hi]
バーチャルフェス？
[_p]

[mi]
会場となる「ティラノアリーナ」の様子を見てみよう。
[_p]

[ude chara="migi" name="こちら"]
[eye chara="migi" name="横"]

[eye chara="hidari" name="横"]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/vfes1.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[playse storage="kansei.mp3" wait=true]

[hi]
おぉ、素敵な会場だね！
[_p]

[mi]
この会場をつかって開催されるのが、[r]
バーチャルフェス！
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/vfes2.gif" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
バーチャル空間に配置されたブースを[r]
自由に歩きながら作品を探すことができるよ！
[_p]

[playse storage="kansei.mp3" wait=true]

[ude chara="hidari" name="拍手"]
[manpu chara="hidari" name="heart"]

[hi]
おぉ、これは、、おもしろいね！
[_p]

[mi]
会場を探索しながら新しい作品との出会い[r]
そして、交流を楽しめるよ。
[_p]

[eye chara="hidari" name="普通"]
[ude chara="hidari" name="よし"]

[hi]
行く！今から行く！
[_p]

[manpu chara="migi" name="ase"]

[mi]
ちょっ、ちょっとまって。[r]
まだ、開場してないよ！
[_p]

[mi]
バーチャルフェスは[r]
あとから、オープン予定だよ。
[_p]

[manpu chara="hidari" name="heart"]

[hi]
ガッテンだい！[r]
たのしみー♫
[_p]

;BGM変更


[cutin text="& ['スポンサー募集']"]

  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [free layer="1" name="display_img" time="10" wait="true"]
  [image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]


  [migiue text="&['フェスをもっと楽しむ']" ]


[cutin_out]	

[mi]
続いて、ちょっと、お知らせを、、、。[_p]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/sponsor.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]

[wait time=1000]

[mi]
ティラノゲームフェス２０２０の[r]
[<y]応援スポンサー[>]を募集中です！！
[_p]

[mi]
スポンサーになっていただくと特典が盛りだくさん！
[_p]

[ude chara="migi" name="こちら"]
[eye chara="migi" name="横"]

[eye chara="hidari" name="横"]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/sponsor2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
ひとつ、スポンサー限定デザインのピンバッジを贈呈（実物を郵送）
[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/yell4.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
ふたつ、お気に入りの作品を「ダイア玉ブースト」[r]
一番強力な応援が開放されるぞ！
[_p]


[mi]
みっつ、スポンサーとして、お名前（PN）をエンディングと公式サイトにクレジット！[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/sponsor3.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
よっつ、フェス２０２０記念ポストカードを進呈。
[_p]

[mi]
更に最後！！[_p]

[free layer="1" name="display_img" time="10" wait="true"]
[image layer="1" zindex="11" name="display,display_img" storage="fes/sponsor4.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

[mi]
なんと、スポンサーは自分で「〇〇賞」を作品に贈ることができます！
[_p]

[ude chara="hidari" name="拍手"]
[manpu chara="hidari" name="heart"]

[mi]
「〇〇賞」の名前は自分で考えることができるよ。
[_p]

[mi]
大好きな作品の作者さんや、特に素晴らしいと感じた作品に
[_p]

[mi]
コメントを添えて最大級の賛辞を贈ってあげてください。
[_p]

[ude chara="hidari" name="待機"]

[mi]
応援スポンサーは１口「￥３５００」となっております。。。
[_p]

[mi]
収入は、ティラノゲームフェスのサーバー費や運営費に充てさせていただきます。
[_p]

[mi]
支援していただけると、
[_p]

[mi]
賞品が豪華になったり
[_p]

[mi]
キャンペーンを強化したり
[_p]

[mi]
来年もフェスを継続できると思うのです。。。
[_p]

[ude chara="migi" name="よし"]

[hi]
どうか、みんなのチカラを貸してください。
[_p]

;[選択肢]

[filter layer="all" brightness="30" ]


[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="350"  width="600"   y="200"  text="応援スポンサーの登録を見てみる"  target="*yes"  ]
[glink  color="btn_26_black"  storage="scene1.ks"  size="24"  x="350"  width="600"   y="320"  text="今はいい"  target="*no"  ]
[s  ]

*yes

[web url="https://tyrano.booth.pm/items/2308762"]

@jump target=*common

*no

*common

[fadeoutbgm time=3000 ]
[wait time=3000]

[playbgm storage="music3.mp3" volume=30 ]

[filter layer="all" brightness="100" ]

[cutin text="& ['フェス２０２０','開幕宣言']"]

  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  
  [free layer="1" name="display_img" time="10" wait="true"]
  [image layer="1" zindex="11" name="display,display_img" storage="bg_black2.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]

　[migiue text="&['いよいよフェス開幕']" ]


[cutin_out]	


[mi]
さあ、これでゲームフェスの説明は終わりだよ。
[_p]

[ude chara="hidari" name="よし"]

[hi]
色々な楽しみ方ができそうだな。[r]
あそぶぞー！
[_p]

[mi]
運営側も初めてのチャレンジが多いから[r]
柔軟に対応していくよ。
[_p]

[hi]
困ったことがあったら[r]
いつでも連絡くれよな！
[_p]


[mi]

そして、フェスのフィナーレは[r]
受賞作の発表があります
[_p]

[ude chara="hidari" name="こちら"]

[display_turn_start]
    [free layer="1" name="display_img" time="10" wait="true"]
    [image layer="1" zindex="11" name="display,display_img" storage="fes/fes_badge.png" x="& 276+18" y="30" width="690" height="444" time="10" wait="true"]
[display_turn_end]


[hi]
今年はどの作品に栄冠が輝くのか楽しみだね。[r]
[_p]

[hi]
しかし、今年は激戦だね。。。
[_p]

[mi]
まぁ、受賞はボーナスみたいなものだから[r]
それぞれのグランプリを心に刻んでほしいな。
[_p]

[mi]
フェスのフィナーレは来年の２月を予定しているよ。
[_p]

[mi]
それまで、コメントやキャンペーンは続くので[r]
ぜひぜひ、盛り上がりましょう！！
[_p]

[ude chara="hidari" name="待機"]

[hi]
ティラノゲームフェス、、、、一緒に楽しもうね！
[_p]


[mi]
それじゃあ、、、。
[_p]


[ude chara="migi" name="どうぞ" free="taiki"]
[ude chara="hidari" name="どうぞ" free="taiki"]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="ウィンク"]
[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="ウィンク"]

[say chara="w" kuchi="a"]

[font size=40]
ティラノゲームフェス２０２０[r]
開幕です！
[resetfont]

[playse storage="kansei.mp3" wait=true]

[_p]

[fukidashi_del]
  
[wait time=31000 ]



; カットインは1行もOK
[cutin text="& ['その後']"]
  [fukidashi_del]
  [pose_reset chara="hidari"]
  [pose_reset chara="migi"]
  [migiue text="& ['おつかれさま会']"]

  [bgmopt volume=10 ]
  
[cutin_out]

[eye chara="migi" name="横"]

[mi]
ふー、、、。[r]
今年もなんとか無事に開幕できたね・・・。
[_p]

[eye chara="hidari" name="横"]

[hi]
そうだね。[r]
作品が集まったのは嬉しいけど、責任重大だね。
[_p]

[ude chara="migi" name="よし"]

[mi]
フェスの作品が、多くの人に届くように[r]
がんばらないと。。。
[_p]

[hi]
よし！。[r]
ニュースも始まるから、作品をたくさんあそぶぞ！
[_p]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="にこ"]

[mi]
ふふふ。
[_p]

[manpu chara="hidari" name="picon"]
[eye chara="hidari" name="普通"]

[say chara="hidari" kuchi="u"]
  
あ！
[_p]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="普通"]

[manpu chara="migi" name="picon"]
[eye chara="migi" name="普通"]

[say chara="migi" kuchi="u"]
  
あ。
[_p]


[say chara="migi" kuchi="u"]
きみ、なにしてんの？[r]
もうフェスは始まってるよ！
[_p]

[say chara="hidari" kuchi="u"]

はやく、ノベルゲームを遊びにいきなさいよ！

[_p]

[fukidashi_del]
  

[wait time=30000]

[say chara="hidari" kuchi="u"]

もー、しょうがないなー。[r]
何がお望み？

[_p]


[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="350"  width="600"   y="200"  text="怒った表情も素敵！"  target="*pose1"  ]
[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="350"  width="600"   y="300"  text="笑顔をお願いします！"  target="*pose2"  ]
[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="350"  width="600"   y="400"  text="面白い顔も見てみたい！"  target="*pose3"  ]

[s]

*pose1

[fukidashi_del]
[chara_move name="migi" time="300" anim="true" wait="false" left="54" effect="easeInOutQuad"]
[chara_move name="hidari" time="300" anim="true" wait="false" left="-54" effect="easeInOutQuad"]

[kuchi chara="hidari" name="u"]
[kuchi chara="migi" name="u"]

[ude chara="migi" name="よし"]
[ude chara="hidari" name="よし"]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="普通"]
[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="普通"]

[fukidashi_del]
[wait time=5000]

@jump target=*pose_common

*pose2

[fukidashi_del]
[chara_move name="migi" time="300" anim="true" wait="false" left="54" effect="easeInOutQuad"]
[chara_move name="hidari" time="300" anim="true" wait="false" left="-54" effect="easeInOutQuad"]

[kuchi chara="hidari" name="a"]
[kuchi chara="migi" name="a"]

[ude chara="migi" name="どうぞ"]
[ude chara="hidari" name="どうぞ"]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="ウィンク"]
[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="にこ"]

[wait time=5000]


@jump target=*pose_common
*pose3

[fukidashi_del]

[chara_move name="migi" time="300" anim="true" wait="false" left="54" effect="easeInOutQuad"]
[chara_move name="hidari" time="300" anim="true" wait="false" left="-54" effect="easeInOutQuad"]

[ude chara="hidari" name="がお"]
[ude chara="migi" name="がお"]

[mayu_mabuta chara="migi" mayu="キリッ" mabuta="ウィンク"]
[mayu_mabuta chara="hidari" mayu="キリッ" mabuta="にこ"]

[kuchi chara="hidari" name="u"]
[kuchi chara="migi" name="u"]

[eye chara="hidari" name="横"]
[eye chara="hidari" name="横"]

[wait time=2000]

[eye chara="hidari" name="普通"]
[eye chara="hidari" name="普通"]

[mayu_mabuta chara="migi" mayu="普通" mabuta="ウィンク"]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="にこ"]

[wait time=2000]

[eye chara="hidari" name="横"]
[eye chara="hidari" name="横"]

[mayu_mabuta chara="migi" mayu="普通" mabuta="にこ"]
[mayu_mabuta chara="hidari" mayu="普通" mabuta="ウィンク"]

[wait time=2000]

[wait time=5000]

@jump target=*pose_common

*pose_common


[eye chara="hidari" name="普通"]
[eye chara="hidari" name="普通"]

[say chara="hidari" kuchi="u"]

ここまでサービスしたんだから[r]
わかってるわね？

[_p]


[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="300"  width="600"   y="200"  text="わかってる。"  target="*a1"  ]
[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="300"  width="600"   y="300"  text="わかりました。"  target="*a1"  ]
[glink  color="btn_26_red"  storage="scene1.ks"  size="24"  x="300"  width="600"   y="400"  text="わかり申した。"  target="*a1"  ]

[s]

*a1

[web url="https://tyrano.booth.pm/items/2308762"]

[say chara="hidari" kuchi="u"]

はい、解散！

[_p]


[mask time="1000" storage="display_black.png"]
 
[s]
