[_tb_system_call  storage="system/_mainStoryRootB01.ks"  ]
*start
[tb_start_tyrano_code  ]

[showmenubutton]

[_tb_end_tyrano_code  ]
*scene1
[tb_start_tyrano_code  ]
[message_name mode="hide"]

[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_machi01.jpg"]
[chara_img mode="show" name="yamato" mayu="normal" kuti="toziru" time="0"]
[chara_img mode="show" type="heroine" name="honoka" mayu="normal" me="sorashi" kuti="normal" time="0" badge="true"]

[message mode="show" time="0"]
[mask_off]

[sceneTitle text="木曜日｜通学路"]
[message_day mode="show" day="木" text="通学路"]

[else]
[bgm mode="end"]
[wait_skip time="500"]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru"]
[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="normal"]
[endif]

[eval exp="sf.chapter_ttl['root-D'] = true"]

[playseEx storage="dog.ogg"]

[message_name mode="hide"]
ふと、近くで犬の鳴き声がした。[ls][r]
低くてやや掠れた、やや怒りを帯びた鳴き声。[pr]

方向的には桐生くんがいる方だ。[pr]

[bgm id="nichijou_a" mode="play"]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="hiraku" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
「俺じゃないよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="warau" ase="true"]
[message_name name="主人公"]
「わかってるよ」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
どこかの家から聞こえて来たのなら、それでいい。[ls][r]
しかしもしこの台風の中、外にいたら大変だ。[pr]

[playseEx storage="dog.ogg"]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" ase="false"]
再び鳴き声がする。すぐ傍の路地の方からだ。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_roji.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" wait="false" kuti="toziru" badge="true"]
[message mode="show"]

[sceneTitle text="木曜日｜路地裏"]
[message_day mode="show" day="木" text="路地裏"]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku" ase="true"]

[playseEx storage="dog.ogg"]

[message mode="set"]
路地に駆け込むと、そこには風に舞うビニール袋に[r]
向かって吠えている柴犬がいた。[pr]

その姿はあどけなくも勇ましい。[ls][r]
なんて、なんて。[pr]

[bgm id="nichijou_c" mode="play"]

[chara_img name="honoka" mode="face" mayu="komaru" me="hart" kuti="warau" tere="true" ase="false"]
[message_name name="主人公" mode="show"]
「かわ……いや、かっこい……かわいい！」[pr]

[chara_img name="yamato" mode="face" ase="true"]
[message_name name="桐生 ヤマト"]
「お、おお……」[pr]

[message_name mode="hide"]
その柴犬に視線を合わせるようにしゃがみ込む。[ls][r]
近くで見ると凛々しい顔立ちをしていた。[r]
少しコロに似ている。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「こんにちは。こんなところで何してるの？」[pr]

[message_name name="柴犬"]
「わん」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公"]
「君、声かっこいいねぇ」[pr]

[message_name name="柴犬"]
「わん」[pr]

[chara_img name="honoka" mode="face" me="hart"]

[message_name mode="hide"]
本当にかっこいい柴犬だ。[r]
毛並みも綺麗だし、とても大切にされているのだろう。[ls][r]
首輪もついている。どこかの飼い犬に違いない。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" tere="false" ase="true"]
[message_name name="主人公" mode="show"]
「飼い主とはぐれたのかな……」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「……仕方ない。聞いてみよう」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「聞く？」[pr]

[message_name mode="hide"]

[chara_img name="yamato" mode="hide"]
[chara_img name="yamato_dog" kuti="toziru" mode="show" badge="true"]

首を傾げていると、桐生くんは獣化した。[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「飼い主はどうした？」[pr]
[message_name name="柴犬"]
「わん」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「そうか……家の場所はわかるか？」[pr]
[message_name name="柴犬"]
「わんわん」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" ase="true"]
[message_name mode="hide"]
何と言っているのか私にはわからないが、[r]
どうやら会話はできているらしい。[ls][r]
羨ましい。[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「やっぱり飼い主とはぐれたらしい。[r]
家の場所は、少なくともこの辺りじゃないみたいだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="normal"]
[message_name name="主人公"]
「そっか……飼い主の人、きっと探してるよね」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「大分風も強くなってきたし、[r]
これ以上ここにいるのも危険だな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「じゃあ、うちにおいで」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" kuti="warau"]
[message_name name="桐生 ヤマト"]
「決断が早い」[pr]

[message_name mode="hide"]
迷子の犬を保護するのは当然の務めだ。[pr]

万が一どこかに逃げてしまったり、[r]
風に飛ばされてしまってはいけない。[pr]

おいで、と手を広げると大人しく寄って来てくれたので、[r]
抱きかかえて家まで連れて行くことにした。[pr]


[bgm mode="end"]

[memory_end chapter="root-D01-1"]

[_tb_end_tyrano_code  ]
*scene2
[tb_start_tyrano_code  ]

[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_asari_living.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]
[chara_img name="yamato_dog" mode="show" time="0" badge="true"]

[message mode="show" time="0"]

[bgm id="nichijou_d" mode="play"]
[mask_off]

[else]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_asari_living.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato_dog" mode="show" wait="false" badge="true"]
[message mode="show"]

[bgm id="nichijou_d" mode="play"]
[endif]

[sceneTitle text="木曜日｜自宅・リビング"]
[message_day mode="show" day="木" text="自宅・リビング"]

[message mode="set"]
[message_name mode="hide"]
桐生くんにドアを開けてもらい、柴犬を玄関におろす。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
食料はあるだろうかと冷蔵庫を確認すると、[r]
何食分かの料理と野菜類が揃っていた。[pr]

台風で外に出られないことを考えて、[r]
兄ちゃんが多く備蓄しておいてくれたようだ。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「野菜も果物もあるから、ご飯は大丈夫だよ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そっか、よかった」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「そういえばこの子、名前はなんて言うんだろう」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru"]
[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
ふと疑問を口にすると、桐生くんは柴犬の首輪を調べた。[ls]
よく見ると小さなドッグタグがついている。[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「“モモ”って書いてあるな……[r]
お、裏に住所が書いてある」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「わあ、よかった」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「あー……擦れてて後半読めないな。[r]
でも隣町だからそう遠くなさそうだ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そっか……ねえモモ、飼い主ってどんなひと？」[pr]

[message_name name="モモ"]
「わんわん」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「小さい人間、ともだち……って言ってるから[r]
子供なんだろうな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「犬の言葉ってあんまり文章的じゃないんだね」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「人間の言葉とは違うからな。[r]
楽しい、嬉しい、とかそういう単純な意味の言葉しか[r]
ないみたいだ」[pr]

[message_name name="桐生 ヤマト"]
「俺が汲み取れないだけで、本当はもっといろいろ[r]
喋ってるのかもしれないけど」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そうなんだ。犬の言葉がわかるってすごいなぁ」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「まあ、役立ってよかった」[pr]

[message_name name="モモ"]
「……くうん」[pr]

[chara_img name="yamato_dog" mode="face" me="normal" kuti="toziru" ase="false"]
[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name mode="hide"]
モモはどこか不安げに窓の外を見つめていた。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「ともだちのこと、心配なの？」[pr]

[message_name name="モモ"]
「わん」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「明日一緒に探してあげるから、大丈夫だよ。[r]
その子にはお父さんやお母さんはいる？」[pr]

[message_name name="モモ"]
「わん」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「家族がたくさんいるって」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「そっか。なら心強いね」[pr]

[message_name mode="hide"]
私が微笑むと、モモは同調するように[r]
わんと元気に声を上げた。[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト" mode="show"]
「[浅利]は、言葉がなくても大丈夫そうだな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal"]
[message_name name="主人公"]
「そんなことないよ。答え合わせができないと、[r]
わかったつもりになるだけだから」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そうだな……[r]
でも、心が通じるのはすごいことだと思うぞ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
[message_name name="主人公"]
「ありがと」[pr]

[message_name mode="hide"]
モモは初めて来る家に少し落ち着かない様子だった。[ls][r]
桐生くんと２人でソファに座り、[r]
そんなモモの様子をそっと見守る。[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" mayu="syunn"]
この家に柴犬がいるのを見るのは、すごく久しぶりだ。[ls][r]
少し感慨深くて、少し切ない。[pr]

[bgm id="sizuka" mode="play"]

[chara_img name="yamato_dog" mode="face" mayu="syunn" kuti="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「[浅利]の飼い犬……[r]
コロがいたのって、いつ頃のことなんだ？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal"]
[message_name name="主人公"]
「私が生まれた時から、中学生になる頃までだよ」[pr]

[chara_img name="yamato_dog" mode="face" me="hannme"]
[message_name name="桐生 ヤマト"]
「そうなのか……」[pr]

[message_name mode="hide"]
桐生くんは少し視線を落とした。[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「今はもう思い出したり話したりできるから大丈夫だよ」[pr]

[chara_img name="yamato_dog" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「そっか」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="hannme"]
[message_name mode="hide"]
きっとそれは、桐生くんに出会ったことも[r]
影響しているのだと思う。[pr]

桐生くんと出会うまでは、きっと無意識に[r]
コロのことを思い出すことを避けていた。[pr]

いなくなったことを受け容れたつもりでいても、[r]
それはただ見ないフリをしていただけ。[ls][r]
懐かしむこともなく、ただ時間が過ぎていただけだ。[pr]

だけど桐生くんと出会ってからは、[r]
コロとの楽しい記憶を思い出す機会が増えた。[ls][r]
あの時、コロもあんな顔をしていたな、なんて。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
桐生くんはどう思うだろう。[r]
それを聞いたとして、嫌な気持ちになるだろうか。[ls][r]
私はこんなにも、救われた心地がしているのに。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……あのね、桐生くん」[pr]

[bgm mode="end"]

[message_name mode="hide"]
[chara_img name="yamato_dog" mode="hide" time="400" wait="false"]
[bgimg storage="black.jpg" time="400"]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="normal" ase="true"]
口を開いた途端、部屋の明かりの全てが消えた。[pr]

[message_name name="桐生 ヤマト" mode="show"]
「うおっ……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「な、なに？」[pr]

[message_name name="桐生 ヤマト"]
「電線が切れたのかもしれないな」[pr]

[chara_img name="honoka" mode="face" me="normal" naku="true" ase="false"]
[message_name name="主人公"]
「ど、どうしよう……」[pr]

[message_name name="桐生 ヤマト"]
「復旧するまで待つしかないな……あ、そうだ」[pr]

[message_name mode="hide"]
隣にいるのに全く見えない暗闇の中、[r]
桐生くんは何やらごそごそと動いている。[pr]

程なくして、その手元に光が現れた。[r]
スマホの光だ。[pr]

[bgimg storage="bg_asari_living_dark.jpg" time="600"]
[chara_img name="yamato_dog" mode="show" badge="true"]

[bgm id="rain" mode="play"]

[message_name name="桐生 ヤマト" mode="show"]
「これで少しは見えるか？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" naku="false"]
[message_name name="主人公"]
「うん、さっきよりは……ありがと」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name mode="hide"]
スマホのライトは小さく、[r]
部屋の隅までを照らすほどの力はない。[ls][r]
机の上に置かれたそれは、極小さな範囲を照らしている。[pr]

ないよりはずっといい。[ls][r]
ただ、心細さを晴らすにはまだ少し足りなかった。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……桐生くん。手繋いでいい？」[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku" ase="true" tere="true"]
[message_name name="桐生 ヤマト"]
「え！？　あ、おう」[pr]

[message_name mode="hide"]
[still mode="start" num="10"]

[message_name mode="hide"]
少し目が暗闇に慣れてきた。[ls][r]
うっすらと見える手を取り、感触を確かめる。[pr]

[message_name name="主人公" mode="show"]
「あ、肉球……ふふ」[pr]

[message_name name="桐生 ヤマト"]
「……くすぐったい」[pr]

[message_name mode="hide"]
暗闇の中で、ついその手の感触を楽しんでしまう。[pr]

[still mode="change" num="10_2"]
[playseEx storage="kaminari.ogg"]

束の間心が安らいだが、窓の外は雷雨が轟いている。[ls][r]
風も強いのか、部屋の中のドアまでガタガタと[r]
音を立てていた。[pr]

[stopseEx mode="fadeout"]

[message_name name="主人公" mode="show"]
「こわい」[pr]

[message_name name="桐生 ヤマト"]
「[浅利]、あんなに強いのにこういうの苦手なのか？」[pr]

[message_name name="主人公"]
「仮に今背後に誰がいても気づけない……」[pr]

[message_name name="桐生 ヤマト"]
「怖いこと考えるから怖いんじゃないか」[pr]

[message_name name="主人公"]
「だって……」[pr]

[message_name mode="hide"]
暗闇の中にいると、どうしてもそういう考えに[r]
及んでしまうのだ。[pr]

[still mode="end" storage="bg_asari_living_dark.jpg"]

[chara_img name="honoka" type="heroine" mayu="komaru" me="hannme" mode="show" wait="false"]
[chara_img name="yamato_dog" kuti="toziru" mode="show" badge="true"]

[playseEx storage="kaminari02.ogg"]
一瞬窓から強い光が届き、途端にごろごろどしゃんと[r]
けたたましく鳴り響いた。こういう光は求めていない。[pr]

[stopseEx mode="fadeout"]

[chara_img name="yamato_dog" mode="face" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
「外、だいぶ荒れて来たな……」[pr]

[chara_img name="honoka" mode="face" me="normal" naku="true"]
[message_name name="主人公"]
「桐生くん……」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「大丈夫だよ。台風なんて毎年来るだろ？[r]
今まではどうしてたんだ」[pr]

[chara_img name="honoka" mode="face" me="hannme" naku="true"]
[message_name name="主人公"]
「布団にくるまったりして、どうにか……」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「そ、そっか」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku" naku="false"]
[message_name name="主人公"]
「モモ、大丈夫かな……よく見えないや」[pr]

[chara_img name="yamato_dog" mode="face" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「落ち着いて座ってるよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name mode="hide"]
そういえば、犬は夜目が効くと聞いたことがある。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公" mode="show"]
「そっか、桐生くんは見えてるんだ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「ああ……まあ。獣化してるしな」[pr]

[chara_img name="honoka" mode="face" mayu="normal"]
[message_name name="主人公"]
「じゃあ、後ろに何かいたら教えてね」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「だから怖いこと言うなって」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「よかった、桐生くんがいてくれて」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
桐生くんがいれば、もし背後から誰かが来ても[r]
気が付けるだろう。[pr]

心の底から安心していると、桐生くんが不意に[r]
「んー」と悩まし気に唸った。[pr]


[chara_img name="yamato_dog" mode="face" me="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「信頼されてるっていうか、[r]
まったく意識されてないっていうか……」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「なんの話？」[pr]

[chara_img name="yamato_dog" mode="face" me="hannme" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「こんな暗闇で、ちゃんと見えてるのは俺だけだろ」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「モモも見えてるんじゃない？」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「今は人類の話だ」[pr]

[chara_img name="yamato_dog" mode="face" me="hannme" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「とにかく、今俺はどんな不意打ちもできるんだ。[r]
ちょっとは、こう……警戒したりしないのか？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「よく知らない人だったら警戒するよ。[r]
でも、桐生くんだから」[pr]

[bgm mode="end"]

[chara_img name="yamato_dog" mode="face" mayu="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……その俺に対する警戒心のなさは何なんだ？[r]
俺の見た目が犬だからか？」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「犬だから、何もしてこないだろうと思ってるのか？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「ち、違うよ。ただ前に不意打ちは嫌いだって[r]
言ってたから」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「それはまあ、そうなんだけど……」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal" ase="false"]

[bgm id="memory" mode="play"]

[message_name mode="hide"]
桐生くんは、私が桐生くんのことを犬の面でしか[r]
見ていないと思っているのだろうか。[pr]

あるいは私が気が付いていないだけで、[r]
私は本当は桐生くんのことが見えていないのだろうか。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
自分ではわからない。[r]
だけど桐生くんがそう感じているということは、[r]
そうなんだろう。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……ごめんね。桐生くんが犬扱いされたくないって[r]
わかってるから、気をつけてるつもりではいるんだけど」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公"]
「どうしても犬が好きっていう気持ちを[r]
抜きにはできなくて……だからもし私が嫌なことを[r]
言ってたら、ちゃんと教えて欲しい」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" me="normal"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato_dog" mode="face" mayu="syunn" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「……ごめん、[浅利]のこと責めたかった[r]
わけじゃないんだ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「嫌なことなんか何もないよ。[浅利]が犬好き[r]
ってことはよく知ってるし、俺に対してはあんまり[r]
態度に出さないようにしてくれてるのも知ってる」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「ほんとに……？」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「もちろん。[浅利]は面白がったり[r]
してるわけじゃない。ただただ犬が好きで、[r]
それが顔に出ちゃってるだけだろ」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hiraku"]
[message_name name="主人公"]
「そう、だけど……それで傷つけたりしたくないの」[pr]

[chara_img name="yamato_dog" mode="face" mayu="syunn" kuti="normal"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
微かに、微笑むような息遣いが聞こえた。[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal"]
[message_name name="桐生 ヤマト" mode="show"]
「俺が犬扱いされたくないっていうは……[r]
面白がられたり、犬の姿だけで判断されるのが[r]
嫌いってだけだよ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「前にちょっと話したけど、昔は姿を変えるのが[r]
うまくコントロールできなかったんだ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「この辺じゃ獣人ってぜんぜんいないだろ。[r]
だから、昔からすごく目立ってたんだ」[pr]

[message_name mode="hide"]
[still mode="start" num="11" time="600"]

[message_name name="桐生 ヤマト" mode="show"]
「からかってくる奴もいたし、[r]
”かわいいね”なんて撫でてくる奴もいた」[pr]

[message_name name="桐生 ヤマト"]
「別に悪意ばっかりじゃないっていうのは[r]
分かってたけど……人と違うところを指さされて[r]
面白がられてるみたいで、すごく居心地が悪かったんだ」[pr]

[still mode="change" num="11_2"]

[message_name name="桐生 ヤマト"]
「ある程度自分で姿を変えられるようになってからは、[r]
犬の姿に少しでも触れられたくなくて、[r]
できるだけ人の姿でいるようにしてた」[pr]

[message_name name="桐生 ヤマト"]
「勉強を頑張ってみたり、体育で活躍してみたりして……[r]
犬以外の部分を見てもらおうとしてたな。[r]
あんまり意味なかったけど」[pr]

[still mode="change" num="11_3"]

[message_name name="桐生 ヤマト"]
「俺を驚かせてわざと犬にさせようとしたり、[r]
どっかから聞きつけて写真撮りに来たりさ……」[pr]

[message_name name="桐生 ヤマト"]
「いろいろうんざりして、中学の時はかなり荒れてたよ。[r]
須賀たちから聞いたかもしれないけど」[pr]

[message_name name="桐生 ヤマト"]
「売られた喧嘩は全部買ったけど……[r]
虚しい時間だったな。自分を守るために戦ってる[r]
気がしてたけど、面白くもなんともなかった」[pr]

[still mode="change" num="11_4"]

[message_name name="桐生 ヤマト"]
「でも……中３の頃、喧嘩してた俺に[r]
声をかけてくれた人がいた」[pr]

[message_name name="桐生 ヤマト"]
「その人がヒーローごっこの善役でさ。[r]
喧嘩なんかしなくても、お前を受け容れる世界なんか[r]
いくらでもあるぞって教えてくれたんだ」[pr]

[message_name name="桐生 ヤマト"]
「ヒーローごっこを始めて、色んな奴に会って……[r]
俺は狭い世界しか知らなかったんだって思ったよ」[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_asari_living_dark.jpg"]

[chara_img type="heroine" name="honoka" mayu="komaru" mode="show" wait="false"]
[chara_img name="yamato_dog" mode="show" badge="true"]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「おかげで、犬の姿も俺の一部なんだって[r]
思えるようにはなったけど……[r]
確かにまだ、人目を気にしてる部分はある」[pr]

[chara_img name="yamato_dog" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「でも、[浅利]のは好意だってわかってるし、[r]
嫌じゃないんだ。むしろ……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「うん……？」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau" tere="true"]
[message_name name="桐生 ヤマト"]
「好きって言ってくれるのは、その……[r]
嬉しいんだ。すごく」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「ただ……あー…俺はさ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「うん」[pr]

[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name mode="hide"]

[chara_img name="yamato_dog" mode="hide"]
[chara_img name="yamato" mayu="kiri" me="toziru" kuti="toziru" tere="true" mode="show" badge="true"]

[chara_img name="honoka" mode="face" mayu="normal"]

[message_name mode="hide"]
繋いでいる手の感覚が、柔らかな肉球から[r]
少し骨ばった温かい手に変わる。[pr]

ぼんやりとした視界の中で、桐生くんの輪郭が[r]
人型になっていた。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「犬の姿と同じくらい、人の時の……[r]
俺のことを好きになってほしいんだ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「……？　好きだと思ってるよ。大事な友達だから」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「そ、そういう意味じゃなくて……」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" ase="false" tere="false"]
[message_name name="桐生 ヤマト"]
「……いや、うん。[r]
俺も[浅利]のこと、大事な友達だと思ってるよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi" kuti="normal"]

[message_name mode="hide"]
他にどういう意味があるのだろう。[ls][r]
答えがわかるよりも先に、[r]
桐生くんは話を切り上げるように笑った。[pr]

[bgm mode="end"]

[message_name name="モモ" mode="show"]
「わん！」[pr]

[bgm id="nichijou_d" mode="play"]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="桐生 ヤマト"]
「うわ、どうした？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「あ……お腹すいたのかな？」[pr]

[message_name name="モモ"]
「わん」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「らしいな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「もう夕飯時だもんね。暗いけどご飯にしようか」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「電線が切れたんだったら、[r]
今日明日じゃ復旧しないな……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「桐生くん、今日泊まって行っていいよ」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="odoroki" kuti="okoru" ase="true"]
[message_name name="桐生 ヤマト"]
「へっ」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="toziru" tere="true"]
[message_name name="桐生 ヤマト"]
「いや、それは……でも……」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「できれば帰りたい……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku"]
[message_name name="主人公"]
「でも……外、すごいことになってるよ。[r]
出歩くの危ないと思う」[pr]

[message_name mode="hide"]
窓の外は台風のピークを迎えているのか、[r]
木々はなぎ倒され雷鳴が轟いていた。[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="warau" tere="false"]
[message_name name="桐生 ヤマト" mode="show"]
「うわ……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="normal"]
[message_name name="主人公"]
「それに……心細いから、できればいてほしいな」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru" tere="true"]
[message_name name="桐生 ヤマト"]
「ううー……」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" tere="false" ase="false"]
[message_name name="桐生 ヤマト"]
「……仕方ない。じゃあ、泊まらせてもらうよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「ほんと？　ありがと。[r]
今ご飯の準備するから、モモと遊んでてね」[pr]

[message_name mode="hide"]
[chara_img type="heroine" name="honoka" mode="hide"]

友達が家に泊まるなんて初めてだ。[ls][r]
少し心躍らせながら、私はキッチンに向かった。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru" ase="true"]
[message_name name="モモ" mode="show"]
「わん」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「……しりとりでもするか？」[pr]

[_tb_end_tyrano_code  ]
*scene3
[tb_start_tyrano_code  ]
[bgm mode="end"]

[eyecatch]
[image layer="base" storage="bg_asari_living_dark.jpg"]
[message_name mode="hide" time="0"]
[chara_img mode="hide_all" time="0"]
[message_day mode="hide" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[eyecatch_off]

[bgm id="night" mode="play"]

[sceneTitle text="木曜日｜自宅・リビング"]
[message_day mode="show" day="木" text="自宅・リビング"]

[message mode="set"]

食事を終えて、順番にお風呂に入ることにした。[ls][r]
桐生くんが先に入りたいと言うので、[r]
モモと一緒にリビングで待つ。[pr]

相変わらず電気はつかないままだ。[r]
念のため兄ちゃんに連絡しておこう。[ls][r]
停電しちゃった、と簡潔にメッセージを送る。[pr]

[playseEx storage="message.ogg"]
３秒と経たないうちに既読がついた。[pr]

[lineMessageStart img="../image/line_message01.png"]
[lineMessageSet id="haruo" mode="right" name="兄ちゃん" text="大丈夫か？" click="false"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="うん。でも電線切れたのかも"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="冷蔵庫とかどうしよう"]
[lineMessageSet id="haruo" mode="right" name="兄ちゃん" text="そのままで大丈夫だ"]
[lineMessageSet id="haruo" mode="right" name="兄ちゃん" text="昼頃には家に戻るから、俺がなんとかする"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="わかった。ありがと"]
[lineMessageSet id="haruo" mode="right" name="兄ちゃん" text="何かあったらすぐ電話しろよ"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_stamp03.png" text="【スタンプ】わかりました"]
[lineMessageSet id="haruo" mode="right" name="兄ちゃん" text="おやすみ"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="おやすみ"]
[lineMessageEnd]

[message_day mode="show" day="木" text="自宅・リビング" time="0"]
[chara_img type="heroine" name="honoka" mode="show" kuti="hohoemu" time="300" wait="false"]
[message mode="show" anim="fade" time="300"]

思っていたよりも早く帰って来るようだ。[ls][r]
こういうのは兄ちゃんに任せておけば[r]
大体何とかしてくれる。頼もしいものだ。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_asari_living_dark.jpg"]
[chara_img type="heroine" name="honoka" cos="pajama" kuti="hohoemu" mode="show" wait="false"]
[chara_img name="yamato_dog" mode="show" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="木曜日｜自宅・リビング"]
[message_day mode="show" day="木" text="自宅・リビング"]

[message mode="set"]
桐生くんと交代で、私もお風呂に入った。[ls][r]
リビングに戻ると、桐生くんは犬の姿になっていた。[r]
暇つぶしにモモと話していたらしい。[pr]

[chara_img name="honoka" mode="face"]
[message_name name="主人公" mode="show"]
「桐生くんの寝る場所だけど……[r]
兄ちゃんのベッドかそこのソファが開いてるよ。[r]
どっちがいい？」[pr]

[chara_img name="yamato_dog" mode="face" mayu="syunn" ase="true"]
[message_name name="桐生 ヤマト"]
「勝手に借りるのもアレだし、ソファでいいよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru"]
[message_name name="主人公" mode="show"]
「気にしなくていいのに」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「でも、このソファけっこう寝心地いいよ。[r]
私も時々こっちで寝るんだ」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="hannme" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そ、そうなのか……[r]
通りで[浅利]の匂いが強いわけだ……」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「わかるの？」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「ま、まあ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
犬の姿をしていると、やはり嗅覚も鋭くなるのだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「モモはどうする？」[pr]

[message_name name="モモ"]
「わん」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" me="normal" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト"]
「[浅利]について行くって」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「ふふ、いいよ。一緒に寝よっか」[pr]

[message_name name="モモ"]
「わん」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「明日はそいつの飼い主探しだな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hiraku"]
[message_name name="主人公"]
「そうだね。きっと心配してるだろうから、[r]
早く連れて行ってあげたいな」[pr]

[chara_img name="yamato_dog" mode="face" mayu="syunn" kuti="warau"]
[message_name name="桐生 ヤマト"]
「だな……」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「それが終わったら、ヒーローごっこに行こうか。[r]
中間発表の前日だから、普段より白熱してるだろうな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="warau"]
[message_name name="主人公"]
「晴れるといいね」[pr]

[chara_img name="yamato_dog" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そうだな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「おやすみ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「おやすみ」[pr]

[message_name mode="hide"]
[chara_img name="yamato_dog" mode="hide"]

[chara_img name="honoka" mode="face" me="normal"]
足元に寄り添うモモと一緒に、部屋に戻った。[pr]

[bgm mode="end"]

[memory_end chapter="root-D01-2"]

[window_all_hide]
[wait_skip]

[_tb_end_tyrano_code  ]
*next
[tb_start_tyrano_code  ]

[jump storage="mainStoryRootB02.ks"]

[_tb_end_tyrano_code  ]
