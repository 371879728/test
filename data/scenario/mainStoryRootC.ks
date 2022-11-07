[_tb_system_call  storage="system/_mainStoryRootC.ks"  ]
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

[image layer="base" storage="bg_asari_mae.jpg"]
[chara_img mode="show" name="haruo" cos="jacket" time="0" kuti="hohoemu"]
[chara_img mode="show" type="heroine" cos="shihuku" name="honoka" time="0" kuti="hohoemu" lost="true"]

[message mode="show" time="0"]
[mask_off]

[else]
[weekCutIn title="木曜日" text="Thursday"]
[chara_img mode="show" name="haruo" cos="jacket" time="0" kuti="hohoemu"]
[chara_img mode="show" type="heroine" cos="shihuku" name="honoka" time="0" kuti="hohoemu" lost="true"]
[image layer="base" storage="bg_asari_mae.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[sceneTitle text="木曜日｜自宅前"]
[message_day mode="show" day="木" text="自宅前"]

[eval exp="sf.chapter_ttl['root-C'] = true"]

[bgm id="nichijou_b" mode="play"]

[message mode="set"]
翌日。[pr]

[message_name name="はるお" mode="show"]
「携帯充電したか？」[pr]

[message_name name="主人公"]
「したよ」[pr]

[message_name name="はるお"]
「ハンカチ持ったか？」[pr]

[message_name name="主人公"]
「持ったよ」[pr]

[message_name mode="hide"]
いつもの確認作業をして、家を出た。[pr]

平日の朝、普段なら学校に行っている時間なのに、[r]
学校とは反対方向に向かっているなんて不思議な感覚だ。[pr]

[eyecatch]
[image layer="base" storage="bg_tokai.jpg"]
[chara_img mode="show" name="haruo" time="0" cos="jacket"]
[chara_img mode="show" type="heroine" name="honoka" cos="shihuku" time="0" lost="true"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[sceneTitle text="木曜日｜都心"]
[message_day mode="show" day="木" text="都心"]

[message mode="set"]
バス、電車、地下鉄などを経由して、[r]
半日ほどで都心に着いた。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「わー……都会だ」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「俺達が住んでる辺りは田舎寄りだけど、[r]
国全体で見れば栄えてるからな」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「ホテル予約してあるから、先に荷物置いて来るか」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「私が着いて来ること、昨日決まったよね？[r]
一緒に泊っても大丈夫なの……？」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「さっき電話したら、少し広い部屋に[r]
変えてくれるってさ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうなんだ。よかった」[pr]

[message_name name="はるお"]
「14時に取引先のところに行かないといけないから、[r]
昼まで観光するか」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name name="主人公"]
「なんか慌ただしいね」[pr]

[chara_img name="haruo" mode="face" me="toziru"]
[message_name name="はるお"]
「隙間時間を楽しむのが賢い社会人なんだぜ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「へー」[pr]

[message_name mode="hide"]
学校の休み時間に漫画を読む、みたいな話だろうか。[pr]

[bgm mode="end"]

[eyecatch]
[image layer="base" storage="bg_tokai.jpg"]
[chara_img mode="show" name="haruo" time="0" cos="jacket" kuti="hohoemu"]
[chara_img mode="show" type="heroine" name="honoka" cos="shihuku" kuti="hohoemu" time="0" lost="true"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[bgm id="nichijou_c" mode="play"]

[sceneTitle text="木曜日｜都心"]
[message_day mode="show" day="木" text="都心"]

[message mode="set"]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「兄ちゃん、あれ食べたい」[pr]

[chara_img name="haruo" mode="face" kuti="warau"]
[message_name name="はるお"]
「お、いいな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
最初は都会の街並みを楽しんでいたけど、[r]
気が付けば食べ歩きに移行していた。[pr]

都会には知らない食べ物がいっぱいだ。[ls][r]
私も兄ちゃんも食欲が底なしだから、[r]
これだけで１日潰せる。[pr]

他にも知らないお店があったり、大きな噴水があったり。[r]
初めて見るものばかりだった。[pr]

[bgm mode="end"]

[eyecatch]
[image layer="base" storage="bg_hotel.jpg"]
[chara_img mode="show" name="haruo" time="0" cos="jacket"]
[chara_img mode="show" type="heroine" name="honoka" cos="shihuku" time="0" lost="true"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="木曜日｜ホテル"]
[message_day mode="show" day="木" text="ホテル"]

[message mode="set"]
[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「じゃあ行ってくるけど、これから風強くなるから[r]
外には出るなよ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「はーい」[pr]

[chara_img mode="hide" name="haruo"]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
時間はあっと言う間に過ぎて、[r]
兄ちゃんは取引先とやらの元に行った。[pr]

１人ホテルに残され、スマホを取り出す。[ls][r]
桐生くんは、今はちょうどお昼休憩の時間だろう。[pr]


[lineMessageStart img="../image/line_message01.png"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_photo_ed3.png" text="【写真】" click="false"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="楽しそうだな。それどこだ？"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="いま都心に来てるの"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="兄ちゃんの出張のお供"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="じゃあ今日はヒーローごっこ休みだな"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="うん。また来週ね"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="おう"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="台風気をつけて"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="ありがと　桐生くんもね"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" image="line_stamp02.png" text="【スタンプ】ひゃっほー"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_stamp02.png" text="【スタンプ】ひゃっほー"]
[lineMessageEnd]


[message_day mode="show" day="木" text="ホテル" time="0"]
[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" time="300" wait="false" lost="true"]
[message mode="show" anim="fade" time="300"]
すっかりやることがなくなってしまった。[pr]

ベッドに寝転がりながら、[r]
備え付けのテレビをぼんやりと眺めた。[pr]

[bgm mode="end"]

[eyecatch]
[image layer="base" storage="bg_hotel.jpg"]
[chara_img mode="show" type="heroine" name="honoka" cos="shihuku" time="0" lost="true"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[bgm id="night" mode="play"]

[sceneTitle text="木曜日｜ホテル"]
[message_day mode="show" day="木" text="ホテル"]

[message mode="set"]
いつの間にか眠っていたらしい。[ls][r]
目を開くと、大きな窓は夕陽を映していた。[pr]

隣に目を向けると、兄ちゃんもベッドに寝転がっていた。[pr]

[message_name mode="hide"]
[still mode="start" num="15"]

[message_name name="主人公" mode="show"]
「もう仕事終わったの？」[pr]

[message_name name="はるお"]
「おう。思ってたより早く終わった」[pr]

[message_name name="主人公"]
「どうだった？」[pr]

[message_name name="はるお"]
「契約とれたぜ」[pr]

[message_name name="主人公"]
「へー、すごいね」[pr]

[message_name mode="hide"]
兄ちゃんは広告代理店の営業マンだ。[ls][r]
一昨年くらいまでは違う会社で働いていたけど、[r]
その時から営業職だった。肌に合っているのだそうだ。[pr]

[message_name name="主人公" mode="show"]
「今の会社、楽しい？」[pr]

[message_name name="はるお"]
「仕事量的にきつくないって意味じゃ、楽しいかな」[pr]

[message_name name="主人公"]
「前は出張も残業も多かったもんね」[pr]

[message_name name="はるお"]
「その分稼ぎはよかったけどな。[r]
でも、やっぱり毎日[ほのか]に会えるのが一番だな～」[pr]

[message_name name="主人公"]
「そうだね」[pr]

[message_name name="はるお"]
「……[ほのか]は学校どうだ？　楽しいか？」[pr]

[message_name name="主人公"]
「学校は普通」[pr]

[message_name name="はるお"]
「普通か」[pr]

[message_name name="主人公"]
「でもヒーローごっこは楽しいよ」[pr]

[message_name name="はるお"]
「はは、そうだな。毎日その話ばっかりだもんなー」[pr]

[message_name name="はるお"]
「楽しいこと見つかってよかったな」[pr]

[message_name name="主人公"]
「うん。勉強ばっかりしてた時よりずっと楽しいよ」[pr]

[message_name name="はるお"]
「そっかそっか」[pr]

[message_name mode="hide"]
中学生になる頃に空手をやめて、コロがいなくなって、[r]
行きついたのが勉強に逃げるという道だった。[pr]

兄ちゃんの仕事が忙しかったのも、ちょうどその頃だ。[l][r]
朝早く出かけて夜遅く帰って来て、[r]
ほとんど会えない期間もあったくらいだ。[pr]

[still mode="change" num="15_2"]
[message_name name="はるお" mode="show"]
「……あの頃、俺もどうしたらいいか[r]
よくわかんなかったんだ。忙しかったのは確かだけど、[r]
仕事に逃げてたのかもな」[pr]

[message_name name="はるお"]
「あんまり気に掛けてやれなくてごめんな」[pr]

[message_name name="主人公"]
「いいよ、謝んなくて。[r]
兄ちゃんが今元気ならそれでいいの」[pr]

[still mode="change" num="15"]
[message_name name="はるお"]
「おう、元気だぞ。[ほのか]はどうだ？」[pr]

[message_name name="主人公"]
「元気だよ。もし元気じゃなくなったら[r]
ちゃんと言うから、兄ちゃんもちゃんと教えてね」[pr]

[message_name name="はるお"]
「そうだな。隠しごとは無し」[pr]

[still mode="change" num="15_3"]
[message_name name="２人"]
「嘘も無し」[pr]

[message_name mode="hide"]
兄ちゃんと決めた約束ごとはたくさんある。[ls][r]
続く言葉はわかっていたから、[r]
兄ちゃんの声に重ねて言った。[pr]

[bgm mode="end"]

[still mode="end" storage="bg_hotel.jpg"]

[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" kuti="hohoemu" lost="true"]
[chara_img name="haruo" mode="show" cos="apron" kuti="hohoemu"]

[bgm id="nichijou_b" mode="play"]

[message_name name="はるお" mode="show"]
「台風は今日の夜いなくなるみたいだから、[r]
明日は１日遊びに行こうぜ」[pr]

[message_name name="主人公"]
「うん。どこに行くの？」[pr]

[message_name name="はるお"]
「食べ歩きの続きでもいいし、[r]
城を見に行くのも楽しそうだな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あ、お城見てみたい」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「おう。じゃあ、食べ歩きながらお城観光ツアーだな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「どっちも取るんだ」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「せっかく来たんだから堪能して行かねぇとな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="主人公"]
「そうだね」[pr]

[message_name mode="hide"]
ホテルの入口でもらった地図を広げて、[r]
明日の観光ルートを２人で練った。[pr]

[message_name mode="hide"]
[chara_img mode="hide_all"]
[bgimg storage="bg_sky.jpg"]

[message_name mode="hide"]
ずっと、兄ちゃんとコロと３人で生きていた。[ls][r]
コロはいなくなってしまったけど、[r]
兄ちゃんがいなくなるなんて想像できない。[pr]

だって、私の兄ちゃんだから。[pr]

[bgm mode="end"]

[_tb_end_tyrano_code  ]
*next
[tb_start_tyrano_code  ]

[tb_start_tyrano_code]
[eval exp="sf.chapter_end['ED3'] = true"]
[eval exp="sf.eventcg_view['16'] = true"]

[autostop]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[mask time="1500" color="0xffffff"]
[endif]

[hidemenubutton]
[hidesystembutton]

[cm]
[chara_img mode="hide_all" time="0"]
[freeLayer]
[freeimage layer="0"]

[if exp="tf.is_skip != true"]
[call storage="sys_credit.ks"]
[endif]

[cancelskip]

[if exp="tf.is_skip == true"]
[glyph line="none.gif" fix="true" left="980" top="540"]
[endif]

[mask time="1500" color="0xffffff"]
[wait time="300"]

[freeimage layer="0"]
[image layer="base" storage="../bgimage/event/still16.jpg"]

[message_current layer="message0" left="10" top="490"]
[nowait]
[font_color size="34" color="0xffffff" wait="10"]
ED3「兄妹」
[font_color_reset wait="10"]
[endnowait]

[mask_off time="1000"]

[l]

[memory_end chapter="root-C01-1"]

[bgm mode="end" time="1500"]

[mask time="1500" color="0x000000"]
[cm]

[layopt layer="message0" visible="false"]

[wait time="300"]

[eval exp="tf.title_fade = true"]
[jump storage="title_screen.ks" target="*back"]
[_tb_end_tyrano_code  ]
