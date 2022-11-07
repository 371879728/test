[_tb_system_call storage=system/_mainStoryRootA01.ks]

*start

[tb_start_tyrano_code]

[showmenubutton]

[_tb_end_tyrano_code]

*scene1

[tb_start_tyrano_code]
[message_name mode="hide"]

; 回想用
[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_machi01.jpg"]
[chara_img mode="show" name="yamato" mayu="normal" kuti="toziru" ase="true" time="0" badge="true"]
[chara_img mode="show" type="heroine" name="honoka" mayu="normal" me="odoroki" kuti="hiraku" ase="true" time="0"]

[message mode="show" time="0"]
[mask_off]

[sceneTitle text="木曜日｜通学路"]
[message_day mode="show" day="木" text="通学路"]

[else]

[bgm mode="end"]
[wait_skip time="500"]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru" ase="true"]
[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="hiraku" ase="true"]
[endif]

[eval exp="sf.chapter_ttl['root-P'] = true"]

[playseEx storage="kennka.ogg"]

近くの木に何かがぶつかるような音がした。[pr]

[message_name name="主人公" mode="show"]
「わっ」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="hannme" kuti="normal"]
[message_name mode="hide"]
咄嗟に構える。[ls][r]
周囲の安全を確認。異常なし。[pr]

[bgm id="nichijou_d" mode="play"]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hiraku" ase="false" naku="true"]
[message_name name="主人公" mode="show"]
「こわい」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「あんなに強いのに、こういうのは駄目なんだな」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name name="主人公"]
「武力じゃどうにもできない系は無理……」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" kuti="normal"]
[message_name name="桐生 ヤマト"]
「確かに、台風は太刀打ちできるできないの[r]
次元じゃないもんな」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「あー……あのさ。よかったら――」[pr]
[message_name mode="hide"]

[bgm mode="end"]

[wait_skip time="500"]
[playseEx storage="naguru.ogg"]

[chara_img name="yamato" mode="face" mayu="kiri" me="odoroki" kuti="hiraku"]
[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" naku="false" ase="true"]
桐生くんの言葉を遮るように、何かが崩れるような[r]
音がした。[ls]すぐ傍の路地の方から聞こえた気がする。[pr]

[bgm id="huonn" mode="play"]

[chara_img name="yamato" mode="face" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「待って。血の匂いがする」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
少し警戒した面持ちで言うと、[r]
桐生くんは慎重に路地裏を進んで行った。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_roji.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kuti="toziru" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="木曜日｜路地裏"]
[message_day mode="show" day="木" text="路地裏"]

[message mode="set"]
私も後に続くと、そこにはスーツの男性が[r]
倒れ込んでいた。[pr]

桐生くんと顔を見合わせ、男性の元に近寄る。[ls][r]
それは、いつぞやの悪役のサラリーマンだった。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="true"]
[message_name name="主人公" mode="show"]
「あ、近所の人……大丈夫ですか？」[pr]

[chara_img name="yamato" mode="move" posi="left" wait="false"]
[chara_img name="ryman" mode="show" posi="right"]

[chara_img name="ryman" mode="face" me="toziru" kuti="henya" ase="true"]
[message_name name="サラリーマン"]
「あ、空手ちゃん。奇遇だね……でも逃げた方がいいよ」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「何から……」[pr]

[bgm mode="end"]

[chara_img name="ryman" mode="face" me="normal" kuti="normal" ase="false"]
[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]

[chara_img name="ryman" mode="move" posi="right2" wait="false"]
[chara_img name="yamato" mode="move" posi="center" wait="false"]
[chara_img name="mob" cos="bad1" mode="show" posi="left2"]

[playseEx storage="kann.ogg"]
カラン、と何かが地面をたたく音がする。[ls][r]
振り返るとそこには、バットを持った３人組が[r]
立っていた。[pr]

[bgm id="ayashii" mode="play"]

[message_name name="不良Ａ" mode="show"]
「よお、姉ちゃん。[r]
あんたもヒーローごっこやってんの？」[pr]
[message_name name="不良Ｂ"]
「ん？　お前……昨日の犬じゃん」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「あ？」[pr]

[chara_img name="honoka" mode="face" ase="false"]
[message_name name="主人公"]
「あなたたちは？」[pr]

[message_name name="不良Ｃ"]
「あんたたちと同じ、喧嘩好きだよ。[r]
最近こういう遊び流行ってるんだろ？」[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「お前らがやってるのは、ただの喧嘩だ。[r]
遊びと一緒にするなよ」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="hannme"]
[message_name mode="hide"]
こういう輩がいるから、ヒーローごっこの印象が[r]
悪くなるのだ。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「立てますか？」[pr]

[chara_img name="ryman" mode="face" me="hannme" kuti="henya"]
[message_name name="サラリーマン"]
「逃げていいって……」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「遊び仲間でしょ」[pr]

[chara_img name="ryman" mode="face" me="toziru"]
[message_name name="サラリーマン"]
「……そうだね」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="sorashi_h" kuti="normal"]
[message_name mode="hide"]
不良たちはまだ暴れ足りないようだ。[r]
バットを手に、不敵な笑みを浮かべている。[pr]

路地裏は狭く、逃げるには分が悪い。[r]
しかしそれは人目に付かない場所とも言える。[pr]

[chara_img name="ryman" mode="hide"]
[chara_img name="yamato" mode="move" posi="right2" wait="false"]
[chara_img name="mob" cos="bad1" mode="move" posi="left"]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「仕方ない……やろうか、桐生くん」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「ただの喧嘩になるけど、大丈夫か？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「たぶん。身の守り方なら兄ちゃんに教わってるよ」[pr]

[message_name name="不良Ｂ"]
「バカなやつ。昨日の負けたこと、もう忘れたのかよ」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru"]
[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="不良Ａ"]
「その歳になって、ごっこ遊びなんか[r]
してるくらいだもんな」[pr]

[chara_img name="yamato" mode="face" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「ステゴロでタイマン張れねぇ奴よりはマシだよ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
桐生くんが呆れたようにそう返すと、[r]
不良たちは面白くなさそうに顔をしかめた。[pr]

何を言っているのかほとんどわからなかったけど、[r]
とりあえず挑発の言葉だったようだ。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_roji.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kuti="toziru" wait="false" badge="true"]
[message mode="show"]

[message_day mode="show" day="木" text="路地裏"]

[message mode="set"]

[bgm id="nichijou_d" mode="play"]

[message_name mode="hide"]
所詮は武器を持っているだけの素人だ。[ls][r]
３対１だったら確かに危なかっただろうけど、[r]
２人がかりならどうにかなるものだ。[pr]

立つ力を失っている３人を地面に転がし、息をついた。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「喧嘩って面白くないね」[pr]

[message_name name="桐生 ヤマト"]
「ただの傷つけ合いだからな」[pr]

[message_name mode="hide"]
転がっている３人から学生証を拝借する。[r]
近所にある中学校の生徒のようだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name name="主人公" mode="show"]
「学校と警察、どっちに通報しよう」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「あー……[r]
ただの喧嘩だし、そこまでしなくていいんじゃないか？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「そう？　立派な傷害事件だと思うけど」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「この辺りじゃそう珍しいことじゃないよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau" ase="true"]
[message_name name="主人公"]
「治安悪いなぁ」[pr]

[chara_img name="yamato" mode="move" posi="left" wait="false"]
[chara_img name="ryman" mode="show" posi="right"]

[message_name name="サラリーマン"]
「僕も、通報するのはやめておいた方がいいと思うよ。[r]
ヒーローごっこの立場が悪くなるだろうし」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「あ……そっか。それもそうですね」[pr]

[message_name mode="hide"]
そういえば、そういう問題も抱えているんだった。[ls][r]
確かに、この事件がヒーローごっこの問題として[r]
扱われるのは都合が悪い。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="okoru" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「今回は見逃してやるけど、[r]
次やったら酷い怪我しても知らないぞ」[pr]

[message_name name="不良Ａ"]
「……チッ、行くぞ」[pr]

; 立ち去る不良

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[chara_img name="honoka" mode="face" mayu="normal" kuti="normal"]
[message_name mode="hide"]
不良たちはよろよろと立ち上がると、[r]
恨めし気にこちらを一瞥して路地裏から去って行った。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「これっきりにしてくれるといいね」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「だといいけど……[r]
ああいうやつは、ちょっと痛い目見たくらいで[r]
引き下がったりしないからなぁ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
まるで心当たりがあるかのような言い方だ。[pr]

[chara_img name="honoka" mode="face" ase="false"]
[chara_img name="yamato" mode="face" me="normal" mayu="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「そういえば……怪我、大丈夫っすか？」[pr]

[chara_img name="ryman" mode="face" kuti="henya"]
[message_name name="サラリーマン"]
「上司の精神攻撃に比べれば、肉体的苦痛なんて[r]
可愛いもんだよ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
普段どんな相手と戦っているのだろう。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="false"]
[message_name name="主人公" mode="show"]
「こんなところで何をされていたんですか？」[pr]

[chara_img name="ryman" mode="face" me="hannme"]
[message_name name="サラリーマン"]
「色々あって会社から追い出されたんだ。[r]
早く帰れてラッキーと思ってたら、[r]
とんだアンラッキーだったってわけ」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[chara_img name="yamato" mode="face" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「それは災難っすね」[pr]

[chara_img name="ryman" mode="face" me="normal"]
[message_name name="サラリーマン"]
「助けてくれてありがとう。[r]
空手ちゃん足捻ったでしょ？　ごめんね」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" kuti="okoru" ase="true"]
[message_name name="桐生 ヤマト"]
「え、そうなのか？」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
言われてみれば、左足首の辺りがじんじんと痛みを[r]
持っていることに気が付いた。[pr]

戦っている時も無意識に庇っていたのだろう。[ls][r]
見てすぐに分かるとは、やはり只物ではない。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公" mode="show"]
「大丈夫です。そんなに酷くないみたいなので」[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[chara_img name="ryman" mode="face" me="hannme"]
[message_name name="サラリーマン"]
「そっか。じゃ、２人とも気をつけて帰ってね。[r]
台風と不良には特に」[pr]

[message_name name="主人公"]
「ありがとうございます」[pr]

[message_name mode="hide"]

[chara_img name="yamato" mode="move" posi="center" wait="false"]
[chara_img name="ryman" mode="hide"]

サラリーマンさんは落ちていた鞄を拾うと、[r]
よろよろと路地を出て行った。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「足、大丈夫か？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" ase="true"]
[message_name name="主人公"]
「大丈夫だよ。[r]
それより、桐生くんの方が怪我すごそうだけど……」[pr]

[message_name mode="hide"]
私は相手の動きを見切って懐に入る姿勢だから、[r]
少し足を捻ったくらいで済んだのだ。[pr]

桐生くんは攻撃を受けながら殴り込むスタイルだから、[r]
大なり小なり怪我が絶えない。[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「俺はすぐ治るから大丈夫だよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" ase="false"]
[message_name name="主人公"]
「そっか……」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「そういえば、さっき何か言おうとしてなかった？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「ん？」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「ああ、そうだ。[r]
今日うちに来ないか？　って言おうとしてたんだ。[r]
手当てもできるしさ」[pr]

[chara_img name="honoka" mode="face" me="odoroki"]
[message_name name="主人公"]
「え？」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生 ヤマト"]
「前にも言ったけど、うち５人兄弟なんだ。[r]
家で１人でいるより賑やかでいいと思うぞ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
さっき「今日は１人」と教えたから、[r]
気を遣ってくれているのだろう。[pr]

桐生くんはそういうところにも気が回る。[r]
いいやつだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" ase="true"]
急に押しかけるのは迷惑じゃないかとも思うが、[r]
できれば今日はお言葉に甘えたい、[r]
というのが本心だった。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="主人公" mode="show"]
「えっと……迷惑じゃなければ、お邪魔したいな」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「もちろん。じゃ、決まりだな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
[message_name mode="hide"]
桐生くんの５人兄弟は、たしかお姉さん１人と[r]
妹さん３人だっただろうか。[ls]どんな人たちなんだろう。[pr]

; 回想終了
[memory_end chapter="root-P01-1"]

[_tb_end_tyrano_code]

*scene2

[tb_start_tyrano_code]

; 回想用
[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_kiryu_mae.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]
[chara_img name="yamato" mode="show" mayu="kiri" me="hannme" kuti="toziru" ase="true" time="0" badge="true"]

[message mode="show" time="0"]
[mask_off]

[bgm id="nichijou_d" mode="play"]

; 通常
[else]
[window_all_hide]
[wait_skip]
[bgimg storage="bg_kiryu_mae.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" mayu="kiri" me="hannme" kuti="toziru" ase="true" wait="false" badge="true"]
[message mode="show"]
[endif]

[sceneTitle text="木曜日｜桐生家前"]
[message_day mode="show" day="木" text="桐生家前"]

[message mode="set"]

桐生くんは鞄から鍵を取り出してから、[r]
何か言いづらそうにこちらを向いた。[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「あー……ちょっと騒がれるかもしれないけど、[r]
気にしないでくれ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「？　うん」[pr]

[message_name mode="hide"]
４人もいるから賑やか、ということだろうか。[ls][r]
うなずくと、桐生くんは玄関のドアを開いた。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_kiryu_genkan.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kuti="toziru" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・玄関"]
[message_day mode="show" day="木" text="桐生家・玄関"]

[message mode="set"]
[message_name name="桐生 ヤマト" mode="show"]
「ただいま」[pr]

[chara_img name="yamato" mode="move" posi="left" wait="false"]
[chara_img name="nanami" mode="show" posi="right"]

[chara_img name="nanami" mode="face" mayu="kiri" me="hannme" kuti="hiraku"]
[message_name name="？？？"]
「あー、またボロボロになってる。家汚さないでよね」[pr]

[message_name mode="hide"]
ちょうど廊下を通るところだったのだろう。[ls][r]
中学生らしき女の子が、口を尖らせながら言った。[r]
妹さんだろうか。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「ナナミ。お客さん連れて来たから」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「お邪魔します」[pr]

[bgm mode="end"]

[chara_img name="nanami" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_name name="桐生 ナナミ"]
「…………」[pr]

[bgm id="nichijou_c" mode="play"]

[chara_img name="nanami" mode="face" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="桐生 ナナミ"]
「女だ！」[pr]

[chara_img name="yamato" mode="face" kuti="toziru" ase="true"]
[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
簡潔に叫ばれた。[pr]

[chara_img name="yamato" mode="move" posi="center" wait="false"]
[chara_img name="nanami" mode="hide"]

[message_name mode="hide"]
何と答えていいか迷っていると、[r]
少女は小走りで階段の上に消えて行った。[pr]

[message_name name="桐生 ナナミ" mode="show"]
「アスカお姉ちゃんー！　お兄が女連れて来たー！」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「おい、変な言い方は……」[pr]

[message_name name="桐生 アスカ"]
「えー？　里井ちゃんと須賀くん？」[pr]

[message_name name="桐生 ナナミ"]
「知らない女ー！」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru"]
[chara_img name="honoka" mode="face" me="warau" kuti="warau" ase="false"]

; (笑)
[message_name name="主人公"]
「あは……知らない女って」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="normal"]
[message_name name="桐生 ヤマト"]
「ごめんな、口が悪くて」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「ううん。面白い子だね」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
程なくして、階段の先から少し年上の女性が[r]
下りて来た。[pr]

[bgm mode="end"]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru" ase="false"]

[chara_img name="yamato" mode="move" posi="left2" wait="false"]
[chara_img name="asuka" mode="show" posi="center" wait="false"]
[chara_img name="nanami" mode="show" posi="right2"]

[bgm id="nichijou_d" mode="play"]

[message_name name="桐生 アスカ" mode="show"]
「あらやだ、ほんとだ。いらっしゃい。[r]
騒がしくてごめんなさいね」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「いえ……突然お邪魔してすみません。[r]
私、[浅利][ほのか]と言います」[pr]

[chara_img name="asuka" mode="face" me="warau"]
[message_name name="桐生 アスカ"]
「いいのよ。大したおもてなしはできないけど、[r]
ゆっくりして行ってね」[pr]

[chara_img name="asuka" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「でも、２人とも汚れてるわね～。[r]
どうせヤマトは怪我してるんでしょ？[r]
まずお風呂入ってきなさいな」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「あー……そうだな。[r]
[浅利]、先に行って来ていいよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau" ase="true"]
[message_name name="主人公"]
「え？　いや、そこまでお世話になる訳には……」[pr]

[chara_img name="asuka" mode="face" kuti="warau"]
[message_name name="桐生 アスカ"]
「いいのよ。[r]
５人もいるんだから、１人くらい増えたって[r]
変わらないし」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
そういうものなんだろうか。[pr]

[chara_img name="asuka" mode="face" kuti="normal"]
[message_name name="桐生 アスカ" mode="show"]
「ほら、こっちよ」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_kiryu_bath.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="asuka" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・脱衣所"]
[message_day mode="show" day="木" text="桐生家・脱衣所"]

[message mode="set"]
[message_name name="桐生 アスカ" mode="show"]
「お風呂場にあるもの、好きに使っていいからね。[r]
じゃあごゆっくり」[pr]

[message_name mode="hide"]
[chara_img name="asuka" mode="hide"]

[chara_img name="honoka" mode="face" ase="true"]
断り方を考えている間に、[r]
脱衣所に押し込まれてしまった。[pr]

確かに泥がすごい。[r]
このままでは周りを汚してしまうだろう。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu" ase="false"]
仕方がないので、お言葉に甘えて借りることにした。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_kiryu_living.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="karita" kuti="hohoemu" ase="true" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・リビング"]
[message_day mode="show" day="木" text="桐生家・リビング"]

[message mode="set"]
服まで借りてしまった。[pr]

お風呂から上がると、リビングに通された。[ls][r]
友達の家に行くという経験が全くないので、[r]
出されたお茶を飲むことにもためらってしまう。[pr]

; ココノノ表示
[iscript]
$('.layer.3_fore').css({"z-index": 150});
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[image layer="&sf.layFree" name="coconono_nozoku" storage="../image/coconono_nozoku.png" visible="true" left="310" top="65"]

[iscript]
$('.coconono_nozoku').css({"opacity": 0});
[endscript]
[anim name="coconono_nozoku" opacity="255" top="+=20" time="600" effect="easeOutExpo"]
[wait time="600"][wa]
[else]

[image layer="&sf.layFree" name="coconono_nozoku" storage="../image/coconono_nozoku.png" visible="true" left="310" top="85"]
[endif]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hohoemu"]
あと、さっきから視線を感じる。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal" ase="false"]
人物図を整理しよう。桐生家の５人兄弟は、[r]
上からアスカさん、桐生くん、ナナミさん。[pr]

あとの２人が、恐らくあそこにいる[r]
小さめの人影２つだろう。[pr]

[chara_img name="honoka" mode="face" me="normal"]
ひそひそと何かを話しているのが聞こえる。[pr]

[message_name name="？？？" mode="show"]
「こわいひとかな」[pr]
[message_name name="？？？"]
「かみつかないかな」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
珍獣かなにかと思われているらしい。[pr]

; ココノノ非表示
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[anim name="coconono_nozoku" opacity="0" top="+=20" time="400" effect="easeOutExpo"]
[wait time="400"][wa]
[endif]

[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 12});
[endscript]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
こちらからアクションを起こすのも逆に[r]
驚かせてしまいそうだ。[pr]

今はただただ視線に耐えることにしよう。[pr]

[bgm mode="end"]

[wait_skip time="500"]
[playseEx storage="kaminari.ogg"]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="normal" ase="false"]
窓の外は一層雨風が激しさを増している。[ls][r]
いつ帰ればいいのだろう。[r]
というか、この雨風の中帰れるだろうか。[pr]

[stopseEx mode="fadeout"]

[bgm id="nichijou_c" mode="play"]

[chara_img name="coconono" mode="show"]
[message_name name="？？？" mode="show"]
「こんにちは」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「わっ」[pr]

[chara_img name="coconono" mode="face" mayu="warau" kuti="hiraku" ase="true"]
[message_name name="？？？"]
「わっ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
いつの間にか、その２人は[r]
ソファのすぐそばに立っていた。[pr]

[chara_img name="coconono" mode="face" mayu="normal" kuti="coco_hiraku"]
[message_name name="？？？" mode="show"]
「ほえた」[pr]

[chara_img name="coconono" mode="face" kuti="nono_hiraku"]
[message_name name="？？？"]
「ほえたね」[pr]

[chara_img name="coconono" mode="face" mayu="komaru" kuti="coco_hiraku"]
[message_name name="？？？"]
「びっくりした」[pr]

[chara_img name="coconono" mode="face" kuti="nono_hiraku"]
[message_name name="？？？"]
「びっくりしたね」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あの、ごめんね。私もびっくりして」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
小学校低学年くらいの女の子だ。[ls][r]
一卵性の双子なのだろう。個々のパーツは[r]
そっくりだけど、少しずつ顔の印象が違うのが不思議だ。[pr]

[chara_img name="coconono" mode="face" mayu="normal" kuti="coco_warau" ase="false"]
[message_name name="？？？" mode="show"]
「あたし、ココ」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="？？？"]
「あたし、ノノ」[pr]

[chara_img name="coconono" mode="face" kuti="normal"]
[message_name name="桐生 ココ・ノノ"]
「お姉ちゃんはだれ？」[pr]

[chara_img name="honoka" mode="face"]
[message_name name="主人公"]
「あ、[浅利][ほのか]です」[pr]

[message_name mode="hide"]
子供への対応がわからなくて、つい敬語になってしまう。[pr]

[chara_img name="coconono" mode="face" kuti="hiraku"]
[message_name name="桐生 ココ・ノノ" mode="show"]
「だれのともだち？」[pr]

[chara_img name="honoka" mode="face" ase="false"]
[message_name name="主人公"]
「桐生くんの友達です」[pr]

[chara_img name="coconono" mode="face" kuti="coco_warau"]
[message_name name="桐生 ココ"]
「あたしもキリュウ」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「あたしも」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「あ、ええと。ヤマトくんの友達です」[pr]

[chara_img name="coconono" mode="face" kuti="normal"]
[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
確かにこの家の人は全員“桐生”だ。[ls][r]
だからと言って、急に名前で呼んでもいいものだろうか。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="hohoemu"]
うーん、わからない。[ls][r]
人はどんなタイミングで友達を[r]
名前で呼ぶようになるのだろう。[pr]

[bgm mode="end"]

[wait_skip time="500"]
[playseEx storage="kaminari02.ogg"]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
頭を捻っていると、突然雷が落ちた。[pr]

[message_name name="主人公" mode="show"]
「ほあっ」[pr]
[message_name mode="hide"]

[stopseEx mode="fadeout"]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" naku="true" ase="false"]
びっくりした。[pr]

[bgm id="nichijou_c" mode="play"]

[chara_img name="coconono" mode="face" kuti="coco_hiraku"]
[message_name name="桐生 ココ" mode="show"]
「[ほのか]ちゃん、かみなりこわいの？」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「ノノが手つないであげる」[pr]

[chara_img name="coconono" mode="face" kuti="coco_warau"]
[message_name name="桐生 ココ"]
「ココも」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" naku="false"]
[message_name name="主人公"]
「あ、ありがとう……」[pr]

[message_name mode="hide"]
[still mode="start" num="5"]

[message_name mode="hide"]
小さな手が、片方ずつ手を握り締めてくれた。[pr]

[message_name name="主人公" mode="show"]
「２人は雷怖くないの？」[pr]
[message_name name="桐生 ココ"]
「こわくないよ」[pr]
[message_name name="桐生 ノノ"]
「ちょっとびっくりするだけ」[pr]
[message_name name="桐生 ココ"]
「でも、かみなりって何でごろごろ言うの？」[pr]
[message_name name="桐生 ノノ"]
「雲のうえに住んでるドラゴンのおなかの音だよ」[pr]
[message_name name="桐生 ココ"]
「このへんにドラゴンなんていないよー」[pr]
[message_name name="主人公"]
「雷は、雲にたまった電気を地面に逃がす時に[r]
起こるものなんだけど、雷が落っこちる時に発生した[r]
エネルギーで空気が震えてごろごろ言うんだよ」[pr]

[message_name name="桐生 ノノ"]
「ドラゴンじゃないんだ。つまんないの」[pr]

[message_name name="主人公"]
「……でも、雷の日にドラゴンを見たって話、[r]
結構あるんだよ。だからほんとはドラゴンの音[r]
かもしれないね」[pr]

[message_name name="桐生 ノノ"]
「わあ、ほんと？」[pr]
[message_name name="桐生 ココ"]
「そうなんだー！」[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_kiryu_living.jpg"]

[chara_img type="heroine" name="honoka" cos="karita" mode="show" wait="false"]
[chara_img name="coconono" mode="show"]

[chara_img name="coconono" mode="move" posi="right" wait="false"]
[chara_img name="yamato" mode="show" cos="shihuku" posi="left"]

[message_name name="桐生 ヤマト" mode="show"]
「なんだ、もう友達になったのか」[pr]

[message_name mode="hide"]
程なくして、桐生くんがお風呂から戻って来た。[pr]

[chara_img name="coconono" mode="face" mayu="warau" me="warau" kuti="warau"]
[chara_img name="honoka" mode="face" kuti="hohoemu"]
ココちゃんとノノちゃんの表情が揃って笑顔になり、[r]
軽い足音を立てながら桐生くんの元に駆け寄る。[ls][r]
とても仲が良いのだろう。微笑ましい。[pr]

[message_name name="桐生 ココ・ノノ" mode="show"]
「友達なった！」[pr]

[message_name name="主人公"]
「なったみたい」[pr]

[chara_img name="coconono" mode="face" mayu="normal" kuti="coco_warau"]
[message_name name="桐生 ココ"]
「[ほのか]ちゃん、かみなりのことおしえてくれた」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「[ほのか]ちゃん、いいひと」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「よかったなー」[pr]

[chara_img name="coconono" mode="face" me="normal" kuti="normal"]
[chara_img name="yamato" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「[浅利]。足の具合はどうだ？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「温まったらだいぶマシになったよ。[r]
元々歩けない程ではなかったしね」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「えーと……そっちは？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「俺も治りかけてるよ。[r]
軽い打撲と切り傷くらいだったから」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「そっか。よかった」[pr]

[chara_img name="coconono" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ココ"]
「ヤマト兄ちゃん、ふじみ～」[pr]
[message_name name="桐生 ノノ"]
「ふじみ～」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「不死身だぞ～」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
３人が楽しそうにじゃれ合っている。[ls][r]
兄弟が多いと、やはり賑やかで楽しいだろう。[r]
少し羨ましい。[pr]

[chara_img name="coconono" mode="face" me="normal" kuti="coco_warau"]
[message_name name="桐生 ココ" mode="show"]
「ヤマト兄ちゃん、肩ぐるまして！」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru" ase="true"]
[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「あ、ノノも！　ノノも乗せてー」[pr]

[chara_img name="coconono" mode="face" kuti="warau"]
[chara_img name="yamato" mode="face" mayu="kiri" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「わかったわかった、順番な！[r]
２人一緒は危ないからダメだ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="normal"]
[chara_img name="coconono" mode="face" me="warau" kuti="coco_warau"]
[message_name name="桐生 ココ"]
「やだ！」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「いっしょに乗る！」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" ase="true"]
ちょっと大変そうだけど。[pr]

[chara_img name="coconono" mode="face" me="normal" kuti="normal"]
[chara_img name="yamato" mode="face" ase="false"]
[chara_img name="honoka" mode="face" mayu="normal" me="normal" ase="false"]

[chara_img name="asuka" mode="show" posi="left2" wait="false"]
[chara_img name="yamato" mode="move" posi="center" wait="false"]
[chara_img name="coconono" mode="move" posi="right2"]

[message_name name="桐生 アスカ" mode="show"]
「お父さんとお母さん、もうすぐ帰って来るって」[pr]

[message_name name="桐生 ヤマト"]
「そっか。よかった」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公"]
「あ、私そろそろお暇します。[r]
お風呂もお借りして、足の具合もよくなったので……」[pr]

[chara_img name="asuka" mode="face" kuti="hiraku"]
[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「外、ひどい嵐よ。今から出るのはやめておいた方が[r]
いいと思うわ」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「あー……そうですよね」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[chara_img name="asuka" mode="face" kuti="normal"]
[message_name name="桐生 アスカ"]
「今日は泊まって行きなさいな。[r]
ヤマトもそのつもりで誘ったんでしょうし」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「そうなの？」[pr]

[message_name name="桐生 ヤマト"]
「もちろん」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
私の方は、そんなつもりではなかったのだが。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" ase="false"]
しかし、確かにあの雨風の中で歩くのは危ない。[ls][r]
これもお言葉に甘えさせてもらおう。[r]
この家に来てから甘えてばかりだ。[pr]

[chara_img name="honoka" mode="face" me="warau" ase="false"]
[message_name name="主人公" mode="show"]
「すみません、いろいろとお世話になってしまって……[r]
一晩よろしくお願いします」[pr]

[chara_img name="asuka" mode="face" me="warau" kuti="normal"]
[message_name name="桐生 アスカ"]
「好きなようにくつろいでね」[pr]

[chara_img name="coconono" mode="face" mayu="warau" me="warau" kuti="coco_warau"]
[message_name name="桐生 ココ"]
「[ほのか]ちゃんお泊り？　やったー」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「あそぼー」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「いいよ」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" ase="true"]
[message_name name="桐生 ヤマト"]
「ココ、ノノ。あんまり困らせたらダメだからな」[pr]

[chara_img name="coconono" mode="face" mayu="normal" me="normal" kuti="warau"]
[message_name name="桐生 ココ・ノノ"]
「はーい」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" me="warau"]
本当に賑やかで楽しい家だ。[pr]

[bgm mode="end"]

[_tb_end_tyrano_code]

*scene3

[tb_start_tyrano_code]
[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_kiryu_bath.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="karita" mode="show" wait="false"]
[message mode="show"]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="木曜日｜桐生家・脱衣所"]
[message_day mode="show" day="木" text="桐生家・脱衣所"]

[message mode="set"]

スマホを制服のポケットに入れたままに[r]
していたことを思い出し、脱衣所に取りに戻る。[pr]

[chara_img name="nanami" mode="show"]

吊るされている私の制服の前に、[r]
ナナミさんが立っていた。[ls][r]
なぜか私の制服の匂いを嗅いでいるらしい。[pr]

[message_name name="桐生 ナナミ" mode="show"]
「……やっぱり」[pr]

[message_name mode="hide"]
何か確信を得たような呟きが聞こえた。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「なにしてるの？」[pr]

[chara_img name="nanami" mode="face" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="桐生 ナナミ"]
「うわっ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
声をかけると、ナナミさんは飛び上がるように[r]
驚いた。[ls]勢いよく振り返り、目を丸くしたまま[r]
こちらを凝視している。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
最初に会った時から思っていたけど、[r]
この子が一番ヤマトくんに似ている気がする。[ls][r]
目元が似ているのだろうか。[pr]

[chara_img name="honoka" mode="face" mayu="komaru"]
[message_name name="主人公" mode="show"]
「ごめんね、驚かせて。スマホ取りにきたんだけど……」[pr]

[chara_img name="nanami" mode="face" me="normal" kuti="normal" ase="true"]
[message_name name="桐生 ナナミ"]
「あ、いや、こっちこそごめんなさい。[r]
じろじろ見たりして」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「それはいいけど……何か気になることでもあった？」[pr]

[chara_img name="nanami" mode="face" kuti="hiraku" ase="false"]
[message_name name="桐生 ナナミ"]
「最近よくお兄から漂ってくる女子の匂いだなと思って」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal" ase="true"]
[message_name name="主人公"]
「？」[pr]

[chara_img name="nanami" mode="face" kuti="warau"]
[message_name name="桐生 ナナミ"]
「あの里井って人の匂いじゃないし、[r]
誰かなーと思ってたんです」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ええと……匂いって、そんなに分かるものなの？」[pr]

[chara_img name="nanami" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ナナミ"]
「お兄ほどじゃないけど、あたしもちょっと[r]
嗅覚が強い方なので」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「ああ、半獣だから……あっ！」[pr]

[chara_img name="nanami" mode="face" me="odoroki" kuti="normal" ase="true"]
[message_name name="桐生 ナナミ"]
「な、なんですか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi"]
[message_name name="主人公"]
「あの……失礼な質問だったら申し訳ないんだけど」[pr]

[chara_img name="honoka" mode="face" me="hart" kuti="warau" tere="true"]
[message_name name="主人公"]
「あなたやココちゃんたちも、[r]
柴犬の姿になれるの……？」[pr]

[chara_img name="nanami" mode="face" me="normal" ase="false"]
[message_name name="桐生 ナナミ"]
「なれないですよ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true" tere="false"]
[message_name name="主人公"]
「え、そうなの？」[pr]

[chara_img name="nanami" mode="face" kuti="hiraku"]
[message_name name="桐生 ナナミ"]
「はい。獣化できるのはお兄だけです」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「そうなんだ。でも、どうしてヤマトくんだけ……？」[pr]

[chara_img name="nanami" mode="face" me="toziru"]
[message_name name="桐生 ナナミ"]
「うち、おじいちゃんが獣型の獣人なんですけど、[r]
なんでかお兄にだけ強く遺伝したみたいなんです」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「ああ、遺伝の法則……」[pr]

[chara_img name="nanami" mode="face" me="normal"]
[message_name name="桐生 ナナミ"]
「まあ、あたしみたいにちょっとは[r]
影響してる場合もあるんですけど」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「そうなんだ」[pr]

[message_name mode="hide"]
遺伝子とは不思議なものだ。[pr]

[chara_img name="nanami" mode="face" me="hannme" kuti="normal"]
[message_name name="桐生 ナナミ" mode="show"]
「ところで、[浅利]さんって……[r]
あのお兄と付き合ってるんですか？」[pr]

[chara_img name="honoka" mode="face" ase="true"]
[message_name name="主人公"]
「え？　ううん、友達だけど……“あの”って何？」[pr]

[chara_img name="nanami" mode="face" mayu="kiri" me="toziru" kuti="hiraku"]
[message_name name="桐生 ナナミ"]
「口うるさいし、デリカシーに欠けるって言うか……[r]
いつまでも１人じゃ何もできないと思って……」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「な、なるほど……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
いろいろと不満があるらしい。[ls][r]
私が持っている印象とは全然違うけど、[r]
家族だから感じられる部分があるのだろう。[pr]

ひょっとしたら、ヤマトくんはナナミさんのことを[r]
気にかけ過ぎているのかもしれない。[pr]

優しさは人によって受け取り方が違う。[r]
どこからを過干渉と呼ぶのかも、人それぞれだ。[pr]

[chara_img name="nanami" mode="move" posi="right" wait="false"]
[chara_img name="yamato" mode="show" cos="shihuku" posi="left"]
[chara_img name="honoka" mode="face" ase="false"]

[message_name name="桐生 ヤマト" mode="show"]
「[浅利]。スマホ見つかったか？」[pr]

[chara_img name="nanami" mode="face" mayu="kiri" me="hannme" kuti="normal"]
[message_name name="桐生 ナナミ"]
「げ、お兄」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru" ase="true"]
[message_name mode="hide"]
ヤマトくんが洗面所のドアから顔を覗かせると、[r]
ナナミさんはあからさまに顔をしかめた。[pr]

なんとなく２人の間に微妙な空気が流れている。[pr]

[chara_img name="yamato" mode="face" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「この間のこと、まだ怒ってるのか？」[pr]

[chara_img name="nanami" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ナナミ"]
「別に！」[pr]

[message_name mode="hide"]
[chara_img name="yamato" mode="move" posi="center" wait="false"]
[chara_img name="nanami" mode="hide"]

口を尖らせて言うと、彼女は不機嫌そうな表情のまま[r]
脱衣所を出て行ってしまった。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal"]
[message_name name="桐生 ヤマト" mode="show"]
「なんだよ……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「何かあったの？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru" ase="false"]
[message_name name="桐生 ヤマト"]
「この前、リビングに落ちてたナナミの雑誌を[r]
部屋に届けたら怒られた」[pr]

[message_name name="主人公"]
「そ、そうなんだ……」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「勝手に雑誌に触ったのと、[r]
勝手に部屋に入ったのが悪かったんだろうなぁ……」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal"]
[message_name name="桐生 ヤマト"]
「にしても、最近やけに突っかかって来るんだよな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公"]
「難しい年頃なのかもしれないね」[pr]

[chara_img name="yamato" mode="face" me="toziru" ase="false"]
[message_name name="桐生 ヤマト"]
「だなー……[r]
[浅利]は兄ちゃんと喧嘩したりするのか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
[message_name name="主人公"]
「ないよ。[r]
うちは年が離れてるし、今更されて嫌なことも[r]思いつかないなぁ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「仲いいんだな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「うん」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
兄ちゃんは精神的にも落ち着いている方だと思う。[ls][r]
いまさら喧嘩するところなんて想像できないし、[r]
どういう時に喧嘩が起こるのかも見当が付かない。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「ナナミさんとは仲良かった時期ないの？」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「あー……俺が中学に入る前までかな。[r]
昔はよく俺の後ろにくっついてきてたよ」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そっか。[r]
ならきっと、落ち着いたらまた仲良くなれるよ」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「そうだな……ありがとな、[浅利]」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name mode="hide"]
兄妹は仲がいいのが１番だ。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="root-P01-2"]

[_tb_end_tyrano_code]

*scene4

[tb_start_tyrano_code]

; 回想用
[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="black.jpg"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]

[eyecatch]
[image layer="base" storage="black.jpg"]
[chara_img mode="hide_all" time="0"]
[message_day mode="hide" time="0"]
[eyecatch_off]

[endif]

[message mode="set"]
それから私は、桐生家の団らんに混ぜてもらい[r]
夕飯をいただいた。[pr]

少しこの家の空気に慣れてきたからか、[r]
親戚の家に遊びに来たような気分になっている。[ls][r]
まあ、親戚に会った事はないし、いるのかも知らないが。[pr]

[wait_skip]
[message mode="hide"]

[wait_skip]
[bgimg storage="bg_kiryu_yamato.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="karita" mayu="komaru" me="hannme" kuti="hohoemu" ase="true" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・ヤマトの部屋"]
[message_day mode="show" day="木" text="桐生家・ヤマトの部屋"]

[bgm id="night" mode="play"]

[message mode="set"]
[message_name name="主人公" mode="show"]（……疲れた）[pr]

[message_name mode="hide"]
楽しいことには楽しいのだが、[r]
やはり知らない人に囲まれるのは疲れる。[pr]

夕飯を終えたあと、私はヤマトくんの部屋に[r]
招かれていた。[ls]ベッドに腰を下ろすヤマトくんの[r]
隣に座り、ようやくほっと息をついた。[pr]

[message_name mode="hide"]
[still mode="start" num="6"]

[message_name name="桐生 ヤマト" mode="show"]
「ちょっと疲れたんじゃないか？[r]
友達の家族に会うのってちょっと緊張するよな」[pr]

[message_name name="主人公"]
「まさしく。ありがと、ヤマトくん」[pr]

[still mode="change" num="6_2"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name name="主人公"]
「どうかしたの？」[pr]

[message_name name="桐生 ヤマト"]
「いや、名前で呼ばれるの慣れないなと思って……」[pr]

[message_name name="主人公"]
「あ、ごめん。嫌だった……？」[pr]

[message_name name="桐生 ヤマト"]
「ぜ、ぜんぜん嫌じゃない。ちょっと新鮮だっただけ。[r]
そのまま名前で呼んでていいから」[pr]

[message_name name="主人公"]
「そっか、よかった。じゃあ私のことも名前で呼んでよ」[pr]

[message_name name="桐生 ヤマト"]
「うん……」[pr]

[still mode="change" num="6_3"]
[message_name name="桐生 ヤマト"]
「……[ほのか]」[pr]

[message_name name="主人公"]
「ヤマトくん」[pr]

[still mode="change" num="6_4"]
[message_name name="桐生 ヤマト"]
「……なんかいいな」[pr]

[message_name name="主人公"]
「そうだね」[pr]

[message_name mode="hide"]
確かに“友達”という感じがする。[r]
もちろん今までもそうだったけど。[pr]

[still mode="end" storage="bg_kiryu_yamato.jpg"]

[chara_img type="heroine" name="honoka" cos="karita" kuti="hohoemu" mode="show" wait="false"]
[chara_img name="yamato" cos="shihuku" mode="show"]

兄ちゃん以外に名前を呼ばれるのはいつ以来だろうか。[ls][r]
ヤマトくんと出会ってから、そんなことばかり思っている[r]
気がする。友達の家に泊まることだってそうだ。[pr]

[chara_img name="honoka" mode="face" mayu="komaru"]
[message_name name="主人公" mode="show"]
「ごめんね、急に泊まらせてもらって」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「いいって、最初からそのつもりで連れて来たんだし。[r]
ナナミの友達もよく急に泊まりに来るしな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「そうなんだ」[pr]

[message_name mode="hide"]
ますます賑やかそうだ。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「…………」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
ふと、ヤマトくんが何か新しいものを[r]
見るような目をした。[pr]

先ほどから時々こんな様子になっているのだが、[r]
どういう心情なのだろう。[pr]

[message_name name="主人公" mode="show"]
「さっきからどうしたの？」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki"]
[message_name name="桐生 ヤマト"]
「え？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「なんか、定期的に変な顔してるけど」[pr]

[message_name mode="hide"]
ひょっとして自覚がなかったのだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「何か気になることでもある？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi_h" kuti="toziru" tere="true"]
[message_name name="桐生 ヤマト"]
「あー……いや、匂いが」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「匂い？」[pr]

[message_name mode="hide"]
ナナミさんと同じことを言う。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="normal" ase="true"]
[message_name name="主人公" mode="show"]
「あ、ひょっとして焼肉の匂い残ってる？[r]
そんなに臭いかな」[pr]

[message_name mode="hide"]
確かに夕飯の焼肉では大量に肉を焼いたし、[r]
視界が白かったくらいだ。[ls][r]
匂いも結構移ったことだろう。[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「いや、どちらかと言うとシャンプーの匂いの方が[r]
気になるというか……[ほのか]からうちの[r]
匂いがするの、なんか混乱する」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「お風呂入ってから結構時間経ってると思うけど、[r]
そんなに匂いする？」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" tere="false"]
[message_name name="桐生 ヤマト"]
「俺、普通の人より嗅覚が強いんだ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「ナナミさんも言ってたね。[r]
それってどれくらい強いの？」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「まあ、獣化してる時ほどは強くないから、[r]
普通よりちょっと匂いに敏感ってくらいだと思う」[pr]

[message_name name="主人公"]
「そうだったんだ……[r]
でも、混乱するってどういうこと？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「リンゴからミカンの匂いがするみたいな」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="normal" ase="true"]
[message_name name="主人公"]
「それは混乱するね」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「だろ」[pr]

[message_name mode="hide"]
この上なく分かりやすい例えだ。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公" mode="show"]
「普段の私ってどんな匂いなの？」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「うーん……甘いんだけどすっきりしてる[r]
っていうか……なんていうか、落ち着く感じだな」[pr]

[message_name name="桐生 ヤマト"]
「まあ、シャンプーの匂いが一番印象に強いな。[r]
『シャローラ』の匂い」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「すごいね、銘柄までわかるんだ。[r]
教えたことあったっけ？」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="okoru" tere="true" ase="true"]
[message_name name="桐生 ヤマト"]
「……あ！」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「いや、たまたまなんだ！[r]
たまたま薬局に行ったときサンプルが置いてあって、[r]
たまたま嗅いでみたら、これだなーって」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうなんだ」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「そう。わざわざ探しに行ったわけじゃないから、[r]
引くなよ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「別に探しに行ってても引かないけど」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「え、そうなの？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「私も気になることあるよ。[r]
今すれ違った人いい匂いだな、どこのシャンプー[r]
使ってるのかなって」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そ……そうだよな！　普通だよな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「実際に薬局で確かめたりはしたことないけど」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" ase="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name name="主人公"]
「他に好きなシャンプーあるの？」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「他は……あー……あんまりよく知らない」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「そうなんだ。いい匂いだよね、シャローラ」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h"]
[message_name name="桐生 ヤマト"]
「うん……」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true"]
[message_name mode="hide"]
この話はあまり続けて欲しくなさそうだ。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公" mode="show"]
「そろそろ寝よっか」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="warau" tere="false" ase="true"]
[message_name name="桐生 ヤマト"]
「え、あ、ああ。そうだな」[pr]

[message_name mode="hide"]
時計を見ると、時刻は10時を回っていた。[ls][r]
寝るにはちょうどいい時間だろう。[pr]

[chara_img name="yamato" mode="face" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「明日は中間発表の前日だから、[r]
ラストスパートをかけようって連中が[r]
たくさんいるだろうな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「そうだね。中間発表とは言え、今後の戦績に[r]
影響があるし」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「ああ。だから明日は町に行かないか？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「うん。じゃあその前に、１回家に帰って[r]
着替えてくるね。制服で出歩くわけには行かないから」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「そうだったな。じゃあ、途中で合流するか」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「そうしよう」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name mode="hide"]
そういえば、私はどこで眠ればいいのだろう。[ls][r]
確認しようと口を開くよりも先に、ヤマトくんが[r]
何か思い出したように「ああ」と言った。[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「そうだ。姉ちゃんが、[ほのか]の寝る場所[r]
姉ちゃんの部屋でどうかって言ってたんだ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ええと、アスカさん……だよね？」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「そう。[ほのか]って他人と同じ部屋で寝るの[r]
平気な方か？　苦手だったら別の場所用意するけど」[pr]

[message_name name="主人公"]
「ううん、大丈夫だよ。[r]
アスカさんの部屋ってどこにあるの？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「ここを出てすぐ左の部屋だよ。[r]
もし姉ちゃんがいなくても、勝手に入って[r]
いいからな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「ありがと。じゃあ、おやすみ」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生 ヤマト"]
「おう。おやすみ」[pr]

[_tb_end_tyrano_code]

*scene5

[tb_start_tyrano_code]
[window_all_hide]
[wait_skip]
[bgimg storage="bg_kiryu_asuka_door.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="karita" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・アスカの部屋前"]
[message_day mode="show" day="木" text="桐生家・アスカの部屋前"]

[message mode="set"]
ヤマトくんの部屋を出て、言われた通り[r]
右隣の部屋のドアを見る。[pr]

そこには確かに「アスカ」と書かれた[r]
プレートがあった。[pr]

一応ノックしてみる。[pr]

[message_name name="桐生 アスカ" mode="show"]
「はーい」[pr]

[message_name mode="hide"]
どうやらもう部屋にいるようだ。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「[浅利]です。入ってもいいですか？」[pr]

[message_name name="桐生 アスカ"]
「どうぞ～」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_kryu_asuka.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="karita" mode="show" wait="false"]
[chara_img name="asuka" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜桐生家・アスカの部屋"]
[message_day mode="show" day="木" text="桐生家・アスカの部屋"]

[message mode="set"]
そっとドアを開くと、アスカさんがベッドの脇に[r]
布団を敷いているところだった。[ls][r]
私の寝る場所を作ってくれているのだろう。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「すみません、布団用意していただいて」[pr]

[chara_img name="asuka" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 アスカ"]
「いいのよ～。[浅利]ちゃん、ベッドの方が[r]
眠れるタイプ？　ベッド使ってもいいわよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「え！　いや、それは申し訳ないので、[r]
布団で大丈夫ですよ」[pr]

[chara_img name="asuka" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 アスカ"]
「あら、そう？　いっそ一緒にベッドで寝る？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「いや、いいです。[r]
緊張して眠れなくなってしまうので」[pr]

[chara_img name="asuka" mode="face" me="warau"]
[message_name name="桐生 アスカ"]
「ふふふ。やっぱりいいわぁ、女子高校生」[pr]

[message_name mode="hide"]
どうやら、からかわれたらしい。[pr]

[chara_img name="asuka" mode="face" me="normal" kuti="warau"]
[message_name name="桐生 アスカ" mode="show"]
「まあまあ、とりあえずここ座りなさいな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「はあ」[pr]


[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
ここ、と言われたので、布団の上にいるアスカさんの[r]
向かいに座る。[pr]

[chara_img name="asuka" mode="face" kuti="normal"]
[message_name name="桐生 アスカ" mode="show"]
「５人兄弟って聞いて、びっくりしなかった？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「はい。とても」[pr]

[chara_img name="asuka" mode="face" me="warau"]
[message_name name="桐生 アスカ"]
「そうよね、犬みたいよね～。ふふふ」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="true"]
[message_name name="主人公"]
「犬とまでは……」[pr]

[message_name mode="hide"]
笑っていいのかわからない。[pr]

[chara_img name="asuka" mode="face" me="normal"]
[message_name name="桐生 アスカ" mode="show"]
「[浅利]ちゃんもヒーローごっこやってるの？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「はい。ヤマトくんに誘われて始めました」[pr]

[chara_img name="asuka" mode="face" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「そうなの。ヤマトってあんまり外で何があったとか[r]
話してくれないのよねー」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name mode="hide"]
アスカさんは少し不思議そうに言った。[ls][r]
意外だ。ヤマトくんは結構お喋り好きな方だと[r]
思っていたが、家ではそうではないのだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
いや、妹さんの聞き手に回ることの方が[r]
多いのかもしれない。[ls][r]
それはそれでヤマトくんらしいなと思う。[pr]

[message_name name="桐生 アスカ" mode="show"]
「[浅利]ちゃんから見て、[r]
ヤマトってどんな感じなの？」[pr]

[chara_img name="asuka" mode="face" kuti="normal"]
[message_name name="桐生 アスカ"]
「髪を染めるなら、てっぺんまで染め切れよって[r]
思わない？」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="true"]
[message_name name="主人公"]
「えっ、いや……髪は特徴的で覚えやすいし、[r]
赤が似合う人だなと思ってます」[pr]

[chara_img name="asuka" mode="face" me="warau"]
[message_name name="桐生 アスカ"]
「あら……ふふ」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「……元気で明るくて、優しい人だと思いますよ。[r]
友達がたくさんいるのもよくわかります」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「ヤマトくんと一緒に遊ぶの、すごく楽しいです」[pr]

[chara_img name="asuka" mode="face" kuti="warau"]
[message_name name="桐生 アスカ"]
「そうなの……よかったわ」[pr]

[chara_img name="asuka" mode="face" me="toziru"]
[message_name name="桐生 アスカ"]
「一時は喧嘩ばっかりしてて、[r]
高校に入る時に半分だけ赤くなって、もう行くとこまで[r]
行っちゃうのかと思ってたけど……」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
髪を半分だけ染めていること、[r]
そんなに気になるのだろうか。[pr]

[chara_img name="asuka" mode="face" me="warau" kuti="normal"]
[message_name name="桐生 アスカ" mode="show"]
「やっぱり、根はそう変わらないのね。[r]
ちょっと安心したわ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「家にいる時のヤマトくんって、[r]
どんな感じなんですか？」[pr]

[chara_img name="asuka" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「大人しいっていうか、根暗っていうか、[r]
言いなりっていうか、便利っていうか……使いっ走りね」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「は、はあ」[pr]

[chara_img name="asuka" mode="face" me="warau" kuti="normal"]
[message_name name="桐生 アスカ"]
「下３人はまだ任せられることも少ないし、[r]
手が離せない時はヤマトにいろいろ頼むのよね～」[pr]

[chara_img name="asuka" mode="face" me="normal"]
[message_name name="桐生 アスカ"]
「ほとんど引き受けてくれるのよ。[r]
まあ突っかかって来ても、“は？”って言えば[r]
それ以上何も言って来ないし」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そ、そうなんですか……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
こんなに優しそうなお姉さんに威圧されたら、[r]
そりゃあ黙ってしまいそうなものだ。[pr]

[chara_img name="honoka" mode="face" me="hannme"]
聞く限りだと、何かと便利にこき使われているらしい。[ls][r]
ヤマトくんもいろいろと苦労しているようだ。[pr]

[chara_img name="asuka" mode="face" me="warau"]
[message_name name="桐生 アスカ" mode="show"]
「[浅利]ちゃんも、困ったことがあったら[r]
ヤマトに言っていいからね」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「ふふ……もういろいろと助けてもらってますよ」[pr]

[chara_img name="asuka" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「あら、そうなの？」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hohoemu"]
[message_name name="主人公"]
「はい。初めて会った時も、不良に絡まれてるところを[r]
助けてもらったし……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme"]
[message_name name="主人公"]
「……少し前まではいろいろあって、[r]
あんまり楽しくなかったんですけど」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="toziru"]
[message_name name="主人公"]
「今が楽しいのは、きっとヒーローごっこを[r]
やってるからってだけじゃなくて……」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「ヤマトくんと一緒にいるからなんだろうなって、[r]
最近思うんです。助けられてばっかりですよ」[pr]

[chara_img name="asuka" mode="face" me="toziru" kuti="normal"]
[message_name name="桐生 アスカ"]
「そう……よかったわ。[r]
ふふ、本人が聞いたら喜ぶでしょうね」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu" tere="true"]
[message_name name="主人公"]
「そうですね……」[pr]

[message_name mode="hide"]
確かに簡単に想像できる。[ls][r]
改めて言うのは少し恥ずかしいけど、[r]
今度伝えてみてもいいかもしれない。[pr]

ヤマトくんも同じように、私と一緒に遊ぶことが[r]
楽しいと思ってくれているだろうか。[pr]

[chara_img name="asuka" mode="face" me="toziru" kuti="normal"]
[message_name name="桐生 アスカ" mode="show"]
「……いけない、もうこんな時間。[r]
私お風呂に行ってくるから、[浅利]ちゃんは[r]
先に寝てていいからね」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu" tere="false" ase="false"]
[message_name name="主人公"]
「あ、そうですね。長話になってすみません」[pr]

[chara_img name="asuka" mode="face" me="normal"]
[message_name name="桐生 アスカ"]
「いいのよ」[pr]

[message_name mode="hide"]
優しく笑うと、アスカさんは立ち上がった。[ls][r]
使いっ走り云々はさておき、やはりヤマトくんのことを[r]
気に掛けているのだろう。優しいお姉さんだ。[pr]

部屋を出る直前、何か思い出したように[r]
こちらを振り返る。[pr]

[chara_img name="asuka" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 アスカ" mode="show"]
「うち壁薄いから、全部ヤマトに聞こえてると思うわ。[r]
それじゃあ、おやすみなさい」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「え゛ッ」[pr]

[message_name mode="hide"]

[chara_img name="asuka" mode="hide"]
[bgimg storage="bg_kryu_asuka_dark.jpg"]

去り際に電気を消して、アスカさんは部屋を後にした。[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
暗闇にぽつんと取り残される。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="warau" ase="true" tere="true"]
[message_name name="主人公" mode="show"]
「……あー……」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]

[message_name mode="hide"]
聞かれてまずいようなことは言ってない。[ls][r]
ただ、少し恥ずかしいなと思った矢先のことだ。[pr]

本人に言うのは、もう少し心の準備をしてからに[r]
したかった。[pr]

ひょっとしたら、ヤマトくんはもう眠っている[r]
かもしれない。[pr]

でも確かめる気にはなれず、[r]
誤魔化すように布団を頭まで被った。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="root-P01-3"]

[window_all_hide]
[wait_skip]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[jump storage="mainStoryRootA02.ks"]

[_tb_end_tyrano_code]

