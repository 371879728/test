[_tb_system_call storage=system/_mainStory01.ks]

*start

[tb_start_tyrano_code]

[mask time="1500" color="0xffffff"]
[cm]
[freeLayer]
[freeimage layer="0"]

[chara_img mode="hide_all" time="0"]

[eval exp="sf.eventcg_view['1'] = true"]
[image layer="base" storage="event/still1.jpg"]

[showmenubutton]
[endnolog]

[wait time="700"]
[mask_off]

[eval exp="f.root_people = 0"]
[eval exp="f.root_dog = 0"]
[eval exp="f.memoryMode = false"]

[_tb_end_tyrano_code]

*scene1

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

[image layer="base" storage="event/still1.jpg"]

[mask_off]
[endif]

[bgm id="opening" mode="play"]

[sceneTitle text="月曜日｜国立Ｓ学園・Ａクラス教室"]
[eval exp="sf.chapter_ttl['ch01'] = true"]

[message mode="show"]

退屈な時は、空を見るようにしている。[ls][r]
授業を聞くよりも、風に流される雲を[r]
見ている方が好きだ。[pr]

勉強は別に嫌いじゃないけど、楽しくはない。[ls][r]
早く放課後にならないかなと思いながら、[r]
なんとなくで日中を過ごしている。[pr]

時折不思議に思う。[ls][r]
先生たちは、私のどこを見て真面目だと言うのだろう。[pr]

[message_name name="教師" mode="show"]
「[浅利]さん。……[浅利]さん？」[pr]

[message_name mode="hide" wait="false"]

[bgimg storage="bg_school_class_a.jpg" method="fadeInRight"]
[chara_img type="heroine" name="honoka" mode="show"]

名前を呼ばれた気がして、意識が教室に戻る。[ls][r]
気が付くのが少し遅かったらしい。[r]
先生の視線は真っ直ぐこちらを向いていた。[pr]

黒板に問題が書いてある。[pr]

[message_name name="主人公" mode="show"]
[chara_img mode="face" name="honoka" kuti="hiraku"]
「はい。その問題の答えですよね」[pr]

[chara_img mode="face" name="honoka" kuti="normal"]
[message_name name="教師"]
「ええ、そうよ」[pr]

[message_name mode="hide"]
[chara_img mode="face" name="honoka" me="sorashi_h"]
話は全く聞いていなかったが、[r]
問題内容は古文の翻訳らしい。[ls][r]
素知らぬフリをして立ち上がる。[pr]


[message_name mode="show" name="主人公"]
[chara_img mode="face" name="honoka" me="normal" kuti="hiraku"]
「“ドラゴンの舌は旨いが、毒がある”」[pr]

[message_name name="教師"]
「正解よ」[pr]

[chara_img mode="face" name="honoka" kuti="normal"]
[message_name mode="hide"]
先生は満足気に頷くと、授業を続けた。[ls][r]
特に不審に思われはしなかったようだ。[pr]

[chara_img mode="face" name="honoka" me="toziru"]
私が授業を聞いていなかったとは思いもしないのだろう。[ls][r]
先生が言うには、私は“真面目な優等生”だから。[pr]

[bgm mode="end"]

[weekCutIn title="月曜日" text="Monday"]
[chara_img mode="face" name="honoka" me="normal"]

[playseEx storage="chime.ogg"]
[weekCutOut]

; 曜日表示
[message_day mode="show" day="月" text="国立Ｓ学園・Ａクラス教室"]

[message mode="set"]
チャイムが6限目の終わりを告げた。[pr]

[stopseEx mode="fadeout"]

[bgm id="nichijou_a" mode="play"]

ホームルームまでの時間潰しにと雑誌を取り出す。[ls][r]
うちのクラスは異様に風紀にうるさいが、[r]
これくらいは許されるだろう。[pr]

[chara_img mode="face" name="honoka" me="hart" kuti="warau" mayu="komaru" tere="true"]
あー、かわいい。柴犬かわいい。頬っぺたがかわいい。[ls][r]
まゆげがかわいい。目がかわいい。もふもふしたい。[pr]

[chara_img mode="face" name="honoka" me="normal" kuti="normal" mayu="normal" tere="false"]
ふと、前の席に座っている子がこちらを向いた。[ls][r]
名前は……忘れてしまった。[pr]

; 湯森さん

[message_name mode="show" name="女子生徒"]
「[浅利]さん、何を読んでいるの？」[pr]

[message_name name="主人公"]
[chara_img mode="face" name="honoka" kuti="hohoemu"]
「犬の雑誌だよ」[pr]

; いぬのきもち的な
[message_name name="女子生徒"]
「へえ。犬飼ってるの？」[pr]

[message_name name="主人公"]
「ううん」[pr]

[message_name mode="hide"]
[chara_img mode="face" name="honoka" me="sorashi" kuti="normal"]
今はね。[pr]

[chara_img mode="face" name="honoka" me="normal" kuti="hohoemu"]
[message_name mode="show" name="女子生徒"]
「そうなんだ。犬好きなんだね」[pr]

[message_name name="主人公"]
「うん」[pr]

[chara_img mode="face" name="honoka" kuti="normal"]
[message_name mode="hide"]
話していると、教室のドアが開いた。[ls][r]
ホームルームが始まるようだ。やっと放課後になる。[pr]

[chara_img mode="face" name="honoka" kuti="hohoemu"]
やっと今日が始まる。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="ch01-1"]

[jump target="*scene2"]
[s]
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

[image layer="base" storage="bg_machi02.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]
[eyecatch]
[image layer="base" storage="bg_machi02.jpg"]
[chara_img mode="hide" type="heroine" name="honoka" time="0"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]
[message_day mode="hide" time="0"]
[eyecatch_off]
[endif]

[bgm id="nichijou_b" mode="play"]

[sceneTitle text="月曜日｜待ち合わせ場所"]
[message_day mode="show" day="月" text="待ち合わせ場所"]

[message mode="set"]
学校を出て右へ。最初の角をまた右へ。[ls][r]
少し進んで、古本屋の前。[pr]

[chara_img mode="show" name="yamato" badge="true"]

[message_name name="桐生 ヤマト" mode="show"]
[chara_img mode="face" name="yamato" me="warau" kuti="warau"]
「[浅利]ー！」[pr]

[chara_img mode="face" name="honoka" kuti="hohoemu"]
[message_name mode="hide"]
いつもの待ち合わせ場所には、[r]
既に桐生くんの姿があった。[pr]

[chara_img mode="face" name="yamato" me="normal" kuti="normal"]
桐生ヤマトくん。同じ国立Ｓ学園の２年生。[ls][r]
クラスは違うが、私の遊び友達だ。[pr]

[message_name name="桐生 ヤマト" mode="show"]
「準備はいいか？」[pr]

[message_name name="主人公"]
「うん。[ls]
[chara_img mode="face" name="honoka" kuti="hiraku"]
……あ、そうだ」[pr]

[message_name mode="hide"]
[chara_img mode="face" name="honoka" kuti="normal"]
バッジをつけ忘れていたことを思い出し、[r]
鞄から取り出した。[ls][r]
桐生くんの胸元についているのと同じ、“善役”の証。[pr]

[message_name name="主人公" mode="show"]
[chara_img mode="face" name="honoka" kuti="hohoemu" badge="true"]
「これで大丈夫」[pr]

[message_name name="桐生 ヤマト"]
[chara_img mode="face" name="yamato" me="warau" kuti="warau"]
「よっしゃー！　今日もやるぞ、ヒーローごっこ！」[pr]

[message_name name="主人公"]
「今日はどこに行くの？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img mode="face" name="yamato" me="sorashi" kuti="toziru"]
「そうだな……[ls]
[chara_img mode="face" name="yamato" me="normal" kuti="normal"]
商店街の方に行かないか？」[pr]

[message_name name="主人公"]
[chara_img mode="face" name="honoka" kuti="hohoemu"]
「いいよ」[pr]

[chara_img mode="face" name="honoka" mayu="kiri"]
[message_name mode="hide"]
昨日はほとんど悪役に出会えなかった。[ls][r]
商店街の付近なら人が多い分、[r]
悪役もそれなりにいるだろう。想像しただけで腕が鳴る。[pr]

[message_day mode="hide" wait="false"]
[chara_img mode="hide_all"]

[bgimg storage="bg_sky.jpg"]

この町では今、“ヒーローごっこ”が流行っている。[ls][r]
それは“善役”と“悪役”に分かれ、[r]
知恵と武力で互いのバッジを奪い合う遊び。[pr]

巷では、ただの喧嘩と噂されている。[pr]

[eyecatch]
[image layer="base" storage="bg_machi01.jpg"]
[chara_img mode="show" name="yamato" badge="true" time="0"]
[chara_img mode="show" type="heroine" name="honoka" badge="true" time="0"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[sceneTitle text="月曜日｜住宅街"]
[message_day mode="show" day="月" text="住宅街"]

[message mode="set"]

[chara_img name="boy" mode="show" posi="right" wait="false" badge="true"]
[chara_img name="yamato" mode="move" posi="left"]

商店街へと向かっていると、[r]
前方から中学生らしき男の子が歩いて来ていた。[pr]

よく見ると悪バッジを身に付けている。[pr]

[chara_img name="boy" mode="face" kuti="hiraku"]
[message_name name="中学生" mode="show"]
「出たな、善役！」[pr]

[wait_skip]
[message_name mode="hide"]
[cutin name="boy" move="left"]
[message mode="set"]

[chara_img name="yamato" mode="hide"]
[chara_img name="yamato_battle" mode="show" left="80"]
[message_name name="桐生 ヤマト" mode="show"]
「出たな、悪役！」[pr]

[wait_skip]
[message_name mode="hide"]
[cutin name="yamato" move="right"]
[message mode="set"]

[chara_img mode="face" name="honoka" kuti="hohoemu"]
お互いのバッジを確認して、合言葉を言う。[ls][r]
これがヒーローごっこ始まりの合図だ。[pr]

[message_name name="桐生 ヤマト" mode="show"]
「どっちが行く？」[pr]

[message_name name="主人公"]
「桐生くんの方が反応早かったし、桐生くんでいいよ」[pr]

[chara_img mode="face" name="honoka" me="normal" kuti="normal"]

[chara_img name="boy" mode="face" kuti="normal"]
[message_name name="中学生" mode="show"]
「これから塾だから、手短に頼むよ」[pr]

[message mode="set"]
[message_name name="桐生 ヤマト" mode="show"]
「それは……やってみないと分からないな」[pr]

[message_name mode="hide"]
[chara_img name="yamato_battle" mode="hide"]
[chara_img name="yamato_dog" mode="show" posi="left" wait="true" badge="true"]

[message mode="set"]
[chara_img mode="face" name="honoka" me="hart" kuti="warau" mayu="komaru" tere="true"]
[message_name name="主人公" mode="show"]
（キャー！　出たー！　しばいぬー！）[pr]

[message_name mode="hide"]
桐生くんは半獣だ。柴犬の半獣。[pr]

半獣にも遺伝によって様々なタイプがいるそうだが、[r]
桐生くんは人間の姿と獣の姿を持っていて、[r]
変身することができる。[pr]

桐生くんは、普段は人間の姿で生活している。[ls][r]
だからこの姿が見られるのはヒーローごっこの時だけだ。[ls][r]
柴犬の時の方が身体能力が高くて戦いやすいらしい。[pr]

いつ見ても立派な毛並みだ。もふもふしたい。[pr]

[chara_img mode="face" name="boy" mayu="kiri" kuti="hiraku"]
[message_name name="中学生" mode="show"]
「その姿……！　君が“犬のヤマト”か。[r]
善役の中でも指折りの曲者なんだってね」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="hannme" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「犬って言うな。せめて半獣って言え」[pr]

[chara_img mode="face" name="boy" mayu="normal" kuti="normal"]
[message_name name="中学生"]
「最近勉強詰めでむしゃくしゃしてたんだ。[r]
犬をいたぶる趣味はないけど、遠慮なく行くよ」[pr]

[message_name name="桐生 ヤマト"]
「それ以上犬扱いしたら……アレだ、怖いことになるぞ」[pr]

[message_name mode="hide"]
[chara_img mode="face" name="honoka" me="normal" kuti="hohoemu" mayu="normal" ase="true" tere="false"]
相変わらず、桐生くんは脅し文句を考えるのが[r]
苦手なようだ。[pr]

[bgm mode="end"]

[window_all_hide]

[bgm id="battle" mode="play"]

; 対戦演出開始
[battle_set mode="left" id="yamato" name="桐生 ヤマト" text="手加減しないからな"]
[battle_set mode="right" id="boy" name="中学生" text="すぐに終わらせるよ"]
[battle_cutin]

; キャラ表示
[chara_img name="yamato" mode="show" posi="left" mayu="kiri" time="0" badge="true"]
[chara_img name="boy" mode="show" posi="right" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[message_day mode="show" day="月" text="住宅街" time="0"]
[message time="0" mode="show"]

[bgm mode="end"]

; 対戦演出おわり
[battle_cutin_off]

[bgm id="nichijou_a" mode="play"]

桐生くんは中学生の悪バッジを奪い取った。[pr]

[message_name name="桐生 ヤマト" mode="show"]
[chara_img name="yamato" mode="face"]
「どうだ、参ったか」[pr]

[chara_img mode="face" name="boy" kuti="hiraku" me="hannme" ase="true"]
[message_name name="中学生"]
「さすが犬……機敏な動きだ……」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="hannme" kuti="toziru"]
「喧嘩売りたいなら買うけど？」[pr]

[chara_img mode="face" name="boy" mayu="kiri" me="toziru"]
[message_name name="中学生"]
「ひい……覚えてろよー！」[pr]
[message_name mode="hide"]

[chara_img name="boy" mode="hide"]
[chara_img name="yamato" mode="move" posi="center"]

中学生はとぼとぼと家に帰って行った。[pr]

[message_name name="桐生 ヤマト" mode="show"]
[chara_img name="yamato" mode="face" me="toziru"]
「ふん」[pr]

[message_name mode="hide"]
中学生の言葉が余程気に障ったらしい。[r]
まだ少し不機嫌そうにしている。[pr]

桐生くんは“犬”と呼ばれることに抵抗があるそうだ。[ls][r]
それが理由で怒っているところは、[r]
これまで幾度となく見てきた。[pr]

[message_name name="主人公" mode="show"]
[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
「ずっと気になってたんだけど……[r]
犬って言われたくないなら、[r]
犬にならずに戦えばいいんじゃない？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="honoka" mode="face" me="normal"]
[chara_img name="yamato" mode="face" me="sorashi_h" mayu="odoroki" kuti="toziru"]
「でもなー……獣化してる時の方が強いし、[r]
戦いやすいんだよ」[pr]

[chara_img name="yamato" mode="face" me="normal" mayu="normal" kuti="normal"]
「[浅利]はいつも空手で戦ってるよな。[r]
それって、慣れた技で使いやすいからだろ？」[pr]

[chara_img mode="face" name="honoka" mayu="normal" kuti="hohoemu"]
[message_name name="主人公"]
「うん。昔習ってたし、勝つためにも[r]
使える武器は使った方がいいかなって」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「それと一緒だよ。[r]
遊びは全力でやらなきゃ楽しくないもんな」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="toziru"]
「見た目が犬なのは事実だし、[r]
犬って言われること自体は仕方ないとは[r]
思うんだけど……」[pr]

[chara_img name="yamato" mode="face" me="toziru" ase="false"]
「だからって犬扱いされたり、[r]
バカにされるのは気に入らないんだ。[r]
俺が遠慮する必要ないだろ」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「それもそうだね」[pr]

[message_name name="主人公" mode="show"]
[chara_img name="honoka" mode="face" me="sorashi" kuti="warau"]
[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
「ちなみに……ちょっともふもふしたいなー[r]
って言うのは、犬扱いに含まれる？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[chara_img name="yamato" mode="face" me="toziru" mayu="kiri" kuti="hiraku" ase="true"]
「それは……犬扱いか……？　くっ……[r]
でも、[浅利]がどうしてもって言うなら……！」[pr]

[message_name name="主人公"]
[chara_img name="honoka" mode="face" kuti="warau" mayu="komaru" ase="true"]
「ご、ごめんね。例えばの話だから気にしないで」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="normal" mayu="normal" kuti="normal"]
「そ、そっか。よかった」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="warau" mayu="normal" ase="false"]
[message_name name="主人公"]
「ちょっと残念だけど」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="hannme" kuti="toziru"]
「[浅利]は本当に犬が好きなんだな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「うん。昔飼ってたしね、柴犬」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" kuti="normal" me="toziru" mayu="komaru" kuti="toziru"]
「……複雑だ……」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name mode="hide"]
私が飼っていたのは普通の柴犬だ。[r]
四足歩行の、小さめの柴犬。[pr]

桐生くんにとっては、半獣とは言え[r]
自分と近しいものを感じたりするのだろうか。[pr]

私には想像することしかできない。[r]
デリケートな問題に言及するのはやめておこう。[pr]

[message_name name="桐生 ヤマト" mode="show"]
[chara_img name="honoka" mode="face" me="normal"]
[chara_img name="yamato" mode="face" me="sorashi_h" mayu="normal" kuti="hiraku" ase="false"]
「あー……」[pr]

[chara_img name="yamato" mode="face" me="normal" me="normal"]
「あのさ。[浅利]は、もし俺が……」[pr]

[message_name name="主人公"]
「うん？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="toziru" mayu="kiri" kuti="toziru" ase="true"]
「いや、やっぱりいい。やめとく」[pr]

[message_name name="主人公"]
[chara_img name="honoka" mode="face" kuti="hiraku"]
「えー？　気になる」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" kuti="hiraku"]
「考えがまとまったら言う……」[pr]

[message_name mode="hide"]
どうやらこれ以上は話してくれないようだ。[pr]

[message_name name="主人公" mode="show"]
[chara_img name="honoka" mode="face" kuti="hohoemu"]
「そうだ。バッジ、これで何個目？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="normal" mayu="normal" kuti="normal" ase="false"]
「29個だな。あと1つで何かと交換できるぞ」[pr]

[message_name mode="hide"]
ヒーローごっこが広まるにつれて、[r]
地域活性の一環として活用される動きが出始めている。[pr]

そのひとつが、集めたバッジと景品を[r]
交換できるシステムだ。[pr]

[message_name name="主人公" mode="show"]
[chara_img name="honoka" mode="face" kuti="hiraku"]
「景品、何があったっけ」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
「30個だと……アイス増量券、牛丼無料券、[r]
ラーメン無料券、あたりか」[pr]

[message_name name="主人公"]
[chara_img name="honoka" mode="face" kuti="warau" mayu="kiri"]
「ラーメンがいいな」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" me="normal" kuti="warau" mayu="kiri"]
「だな」[pr]

[message_name name="主人公"]
[chara_img name="honoka" mode="face" me="sorashi" mayu="normal"]
「今日集めちゃって、明日の放課後食べに行かない？」[pr]

[message_name name="桐生 ヤマト"]
[chara_img name="yamato" mode="face" kuti="warau" mayu="kiri" me="warau"]
「いいな！　あと１人ならいけそうだ」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" me="normal" mayu="kiri"]
俄然やる気が出てきた。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="ch01-2"]

[jump target="*scene3"]
[s]
[_tb_end_tyrano_code]

*scene3

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

[message_name mode="hide"]
[wait_skip]
[chara_img mode="hide_all"]
[message_day mode="hide" wait="false"]
[bgimg storage="black.jpg" time="500"]
[wait_skip]
[endif]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="回想｜商店街"]

[message mode="set"]

桐生くんと出会ったのは、今から半年ほど前のことだ。[pr]

; ＊

[bgimg storage="bg_machi03.jpg"]

; 上下バー表示
[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[layopt layer="&sf.layFree" visible="true"]

[if exp="tf.is_skip == true"]
[image layer="&sf.layFree" name="battle_bar_top" storage="../image/battle_bar.png" top="-15"]
[image layer="&sf.layFree" name="battle_bar_bottom" storage="../image/battle_bar.png" top="551"]

[else]
[iscript]
$('.layer 3_fore').css({"z-index": 10});
[endscript]

[image layer="&sf.layFree" name="battle_bar_top" storage="../image/battle_bar.png" top="-40"]
[image layer="&sf.layFree" name="battle_bar_bottom" storage="../image/battle_bar.png" top="576"]
[anim name="battle_bar_top" top="+=25" time="500"]
[anim name="battle_bar_bottom" top="-=25" time="500"]
[wait time="500"][wa]
[endif]

[message mode="set"]

[chara_img name="mob" cos="bad1" mode="show" wait="false"]
[chara_img name="honoka" type="heroine" mode="show"]

[message_name name="不良Ａ" mode="show"]
「この道、オレ達の縄張りだぜ。[r]
通行料払ってもらおうか」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" ase="true"]
２年生になったばかりのある日、[r]
私は商店街の近くで不良３人組に絡まれていた。[pr]

この町は不良が多く、絡まれるのも[r]
初めてのことではない。[pr]

いつもは適当にあしらって逃げるのだが、[r]
今日は運悪く喧嘩に発展してしまった。[pr]

私は小学校６年間、空手を習っていた。[ls][r]
訳あって中学生になる頃にやめてしまったけど、[r]
護身には十分役に立つ。[pr]

[chara_img name="honoka" mode="face" me="hannme"]
とは言え、３人が相手では分が悪い。[ls][r]
どう切り抜けるか思案していた、その時だった。[pr]

[chara_img name="mob" cos="bad2" mode="move" posi="right" wait="false"]

[chara_img name="yamato" mode="show" posi="left2" me="warau" kuti="warau" badge="true"]
[message_name name="桐生 ヤマト" mode="show"]
「ヒーローごっこか？　ちゃんとタイマンでやれよ。[r]
どっちがどっちだ？」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" me="normal"]
駆け足で現れたその人は、嬉々とした表情でそう言った。[ls][r]
うちの学校のジャージだ。[r]
赤い色は、どこのクラスのものだっただろうか。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_machi03.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" wait="false" badge="true" mayu="kiri" me="toziru" kuti="toziru"]
[message mode="show"]

[message_name name="桐生 ヤマト" mode="show"]
「ったく……この辺りも治安悪いよな。[r]
せっかくヒーローごっこだと思ったのに」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「あれっ、人に戻った……」[pr]

[message_name mode="hide"]
事情を知るや否や加勢してくれたその人は、[r]
戦い始めた途端に柴犬の姿に変わっていた。[pr]

それに呆気にとられていたから、[r]
戦っていたのはほぼ彼だけだったと思う。[pr]

不良を追い払った今、彼はまた人間の姿に戻っていた。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi_h"]
[message_name name="桐生 ヤマト" mode="show"]
「あー……半獣って知ってるか？[r]
俺は人の姿と獣の姿を持ってるんだ。[r]
普段はこっちで生活してるから、ほぼ人間だけど」[pr]

[message_name mode="hide"]
この辺りでは、獣人はほとんど見かけない。[ls][r]
テレビなんかで見ることはあるけど、[r]
実際に見るのは初めてだ。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau" ase="false" tere="true"]
[message_name name="主人公" mode="show"]
「も、もう１回見たい……！」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="okoru" ase="true"]
[message_name name="桐生 ヤマト"]
「なんで？」[pr]

[message_name name="主人公"]
「私、柴犬好きなの。[r]
かっこよかったからもう１回見たい。ダメ？」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「えっ……かっこいい？」[pr]

[message_name mode="hide"]
幼い頃に柴犬の獣人がいると知った時から、[r]
一目見たいと思っていた。[ls][r]
こんなところで出会えるなんて。[pr]

興奮が抑え切れないまま言うと、彼は目を丸くした。[ls][r]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru"]
程なくして、はっと我に返ったように顔をしかめる。[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="okoru" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「いやだ。面白がられたり、[r]
犬扱いされたりするの嫌いなんだよ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「そ、そっか……気を悪くさせてごめんね」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="true"]
[message_name name="桐生 ヤマト"]
「えっ……あー、俺も強く言い過ぎたな、ごめん。[r]
はっきり言わないと食い下がって来るやつ、[r]
結構いるんだ」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name name="主人公"]
「そうなんだ。ごめんね……」[pr]

[message_name mode="hide"]
珍しいから、言い寄って来る人も相応にいる[r]
ということなのだろうか。[pr]

嫌な思いをすることもあったのかもしれない。[r]
軽率だった。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「あっ、せっかく助けてくれたのに、[r]
お礼もまだだったね。助けてくれてありがとう」[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「ああ、いや……気にしなくていいよ。[r]
でも、けっこう戦い慣れてるみたいだったけど、[r]
なんかやってるのか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「今はやってないけど、空手を習ってたの」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「なるほど。言われてみればそんな動きだったな……」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「ヒーローごっことかやってないかなと思ったけど、[r]
やっぱ違うよな。Ａクラスの子だし……」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「それって、確か殴り合ったりする遊びだよね……？[r]
喧嘩とどう違うの？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="okoru" ase="true"]
[message_name name="桐生 ヤマト"]
「違う。ぜんっぜん違う」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「そっか。普通のやつの認識ってやっぱりそうなんだな。[r]
うーん……」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" ase="true"]
ヒーローごっこ。名前くらいは聞いた事がある。[ls][r]
喧嘩のようなものだと思っていたけど、[r]
そんなに違うものなのだろうか。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「……よし！　ヒーローごっこ、やってみないか？」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「えっ？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「やってみればわかるって。すげー楽しいから！[r]
善役に来てもらえばいい戦力になりそうだし……」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name name="主人公"]
「で、でも、どういう遊びなのかわかんないし……」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「じゃあ、見学だけでもいいよ。[r]
喧嘩とは違うってことさえわかってもらえれば！」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「……ヒーローごっこ、好きなんだね」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「ああ、好きだ！　だから色んな人にやってほしいし、[r]
好きになってほしい！」[pr]

[message_name mode="hide"]
そう言って、彼は心底楽しそうな表情を浮かべた。[ls][r]
それだけヒーローごっこに熱中しているのだろう。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
私でもそんな風に思えるだろうか。[ls][r]
むかし、空手が楽しかった頃みたいに。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「じゃあ……ちょっとだけ見学してみようかな」[pr]

[message_name name="桐生 ヤマト"]
「ほんとか！　よっしゃ！」[pr]

[message_name mode="hide"]

[chara_img mode="hide_all"]
[bgimg storage="black.jpg"]

それから私は、桐生くんにヒーローごっこについて[r]
いろいろと教えてもらった。[pr]

肉体を使ったバッジの奪い合いで、[r]
チームの総合力を競う陣取り合戦。[ls][r]
武力と、戦術と、駆け引き。[pr]

確かにこれは喧嘩とは違う。それにスポーツとも違う。[ls][r]
これは“遊び（ゲーム）”なんだ。[pr]

だからきっと、勝った人も負けた人も、[r]
同じくらい楽しそうに笑っていたのだろう。[pr]

私がヒーローごっこの魅力を理解するまでに、[r]
そう時間はかからなかった。[pr]

半年経った今となっては、[r]
毎日放課後に桐生くんとヒーローごっこをしている。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="ch01-3"]

[jump target="*scene4"]
[s]
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

[image layer="base" storage="bg_asari_genkan.jpg"]
[chara_img type="heroine" name="honoka" mode="show" time="0" kuti="hohoemu" badge="true"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]
[eyecatch]

; 上下バー非表示表示
[freeimage layer="&sf.layFree"]
[iscript]
$('.layer 3_fore').css({"z-index": 13});
[endscript]

[image layer="base" storage="bg_asari_genkan.jpg"]
[chara_img mode="hide_all" time="0"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0" kuti="hohoemu" badge="true"]
[eyecatch_off]
[endif]

[bgm id="night" mode="play"]

[sceneTitle text="月曜日｜自宅・玄関"]
[message_day mode="show" day="月" text="自宅・玄関"]

[message mode="set"]

無事に30個目のバッジを手に入れて、[r]
ラーメン無料券を入手することができた。[ls][r]
明日、桐生くんとラーメンを食べに行くのが楽しみだ。[pr]

[message_name name="主人公" mode="show"]
[chara_img type="heroine" name="honoka" mode="face" kuti="hiraku"]
「ただいまー」[pr]

[message_name mode="hide"]
[chara_img type="heroine" name="honoka" mode="face" kuti="normal"]
家に帰ると、玄関には兄ちゃんの靴があった。[pr]

兄ちゃんは会社員だが、残業が少ない時期は[r]
帰りが早い。[ls]こうして、私よりも早く帰っている[r]
ことの方が多いくらいだ。[pr]

靴を脱いでいると、ふと頭上に影が差した。[pr]

[chara_img name="haruo" mode="show" mayu="kiri" kuti="warau"]
[message_name name="？？？" mode="show"]
「出たな、善役！」[pr]

[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="haruo" move="left"]
[message mode="set"]

[chara_img mode="hide" type="heroine" name="honoka" time="300"]
[chara_img mode="show" type="heroine" left="-110" name="honoka_battle" time="300"]

[message_name name="主人公" mode="show"]
「出たな、悪役！」[pr]

[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="honoka" move="right"]
[message mode="set"]

[chara_img name="haruo" mode="face" mayu="normal" kuti="normal"]
[message_name name="はるお" mode="show"]
「…………」[pr]

[chara_img mode="hide" type="heroine" name="honoka_battle" time="300"]
[chara_img mode="show" type="heroine" name="honoka" time="300" badge="true"]

[message_name name="主人公"]
「…………」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「おかえり、[ほのか]」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ただいま、兄ちゃん」[pr]

[message_name mode="hide"]
出たなと言われると、咄嗟に出たなと返してしまう。[ls][r]
私もすっかり、ヒーローごっこに染まったものだ。[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
兄ちゃんはヒーローごっこの関係者だ。[ls][r]
“ヒーローごっこ連盟”の内部にある、悪役推進部の一員。[r]
私たちの間では幹部と呼ばれている。[pr]

そのことを知ったのは、半年前。[r]
私がヒーローごっこを始めたと話した時のこと。[pr]

兄ちゃん曰く、[pr]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[if exp="tf.is_skip != true"][mask time="500" color="0x000000"][endif]

[chara_img type="heroine" name="honoka" mode="hide" time="0"]
[chara_img name="haruo" mode="face" me="toziru" kuti="normal"]
[image layer="base" storage="black.jpg"]
[message_day mode="hide" time="0"]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[if exp="tf.is_skip != true"][mask_off time="500"][endif]

[message_name name="はるお" mode="show"]
「ヒーローごっこが流行り始めた頃は[r]
俺も喧嘩みたいなもんかと思ってたし、[r]
治安悪いなと思って警戒してたんだけどな」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「関係者に話聞いたら、案外ルールがしっかりしてる[r]
ゲームだったんだ。でも、それが一般層に伝わってない」[pr]

[chara_img name="haruo" mode="face" me="hannme" kuti="hiraku"]
[message_name name="はるお"]
「そりゃあプロモーションに問題があるんじゃねえか[r]
って口出ししてるうちに、気付いたら幹部に[r]
されてたんだよ」[pr]

[message_name mode="hide"]

だそうだ。[pr]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[if exp="tf.is_skip != true"][mask time="500" color="0x000000"][endif]

[chara_img type="heroine" name="honoka" mode="show" kuti="hohoemu" time="0" badge="true"]
[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[image layer="base" storage="bg_asari_genkan.jpg"]
[message_day mode="show" day="月" text="自宅・玄関" time="0"]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]
[if exp="tf.is_skip != true"]
[mask_off time="500"]
[wait time="500"]
[endif]


とは言え、完全に安全な遊びという訳でもないし、[r]
安易に関わらせようとは思っていなかったから、[r]
私には黙っていたらしい。[pr]

だけど、自分で知って自分で遊びたいと思うなら、[r]
好きにすればいいと言う。[ls][r]
私は兄ちゃんのそういうところが好きだ。[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「今日もヒーローごっこやってきたんだろ。[r]
どうだった？」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「いい感じ。楽しかったよ」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「楽しいか……！　そうかそうか」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="true"]
兄ちゃんは嬉しそうに笑うと、[r]
わしわしと乱暴に頭を撫でてきた。[ls][r]
相変わらず、犬と同じような扱い方をしてくる人だ。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_asari_living.jpg" method="fadeInLeft"]

[sceneTitle text="月曜日｜自宅・リビング"]
[message_day mode="show" day="月" text="自宅・リビング"]

[chara_img type="heroine" name="honoka" mode="show" wait="false" badge="true"]
[message mode="show"]

兄ちゃんがご飯を作っている間に、テレビをつける。[ls][r]
テレビの音は宿題のお供にちょうどいい。[pr]

; ニュース画面
[message_name name="アナウンサー" mode="show"]
「７時になりました。ニュースをお伝えします」[pr]

[message_name name="アナウンサー"]
「Ｎ町西区の住宅街で、”悪役”を名乗る少年が[r]
住宅に火を放ったと通報がありました」[pr]

[chara_img name="honoka" mode="face" mayu="komaru"]
[message_name name="アナウンサー"]
「警察はヒーローごっこ連盟との関連がないか、[r]
調べを進めています」[pr]

[message_name mode="hide"]
最近、テレビでヒーローごっこの名前を聞く機会が[r]
増えてきた。[ls]ヒーローごっこが話題になるのは嬉しいが、[r]
こうやって悪い意味で話題になることも多い。[pr]

人が増えると統率を取るのが難しくなってくる。[ls][r]
一部の人が目立つことで、それが全体としてのイメージに[r]
なってしまう。[pr]

一般の目に触れる話題が問題ばかりとあっては、[r]
印象が悪くなるのも無理はないことだ。[pr]

危険なイメージを払拭するには、[r]
それなりに時間がかかるだろう。[ls][r]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
そのために兄ちゃんたち大人が動いているのだ。[pr]

; ピッ

[chara_img name="honoka" mode="face" kuti="normal"]
適当な番組に変えて、鞄から宿題を取り出す。[ls][r]
ふと、机の端に見慣れない冊子が置いてあることに[r]
気が付いた。[pr]

表紙に書かれた「ヒーローごっこ」の文字に、[r]
思わず手に取る。[pr]

[chara_img name="haruo" mode="show" kuti="hiraku"]
[message_name name="はるお" mode="show"]
「それ、ヒーローごっこのマニュアルの改訂版なんだ。[r]
まだ校閲中だけどな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「幹部ってこういうこともするんだね。[r]
ルールが変わるの？」[pr]

[chara_img name="haruo" mode="show" kuti="normal"]
[message_name name="はるお"]
「基本ルールはそのままだけど、[r]
説明不足だったところを補完したり、[r]
禁止事項を増やしたりしたんだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公"]
「人が増えると問題も増えるもんね」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「ああ。こういうのは運営がしっかりしないとな」[pr]

[message_name name="はるお"]
「読むついでに、分かりにくいところがないか[r]
見てくれよ。俺より[ほのか]の方が初心者寄りの[r]
目になれるだろ」[pr]

[chara_img name="honoka" mode="face" mayu="normal"]
[message_name name="主人公"]
「いいよ」[pr]

; ＊＊＊

*select_back
[message_name mode="hide"]

[if exp="f.musicNow != 'nichijou_c'"]
[bgm mode="end"]
[endif]

どの項目を読もうかな。[p]

[_tb_end_tyrano_code]

*select

[tb_start_tyrano_code]
[sceneTitle text="選択肢｜ヒーローごっこマニュアル"]

; スキップ解除
[cancelskip]

; 目パチを上書きしておかないと、スキップで来たあとにセーブすると、サムネが変になった
[chara_img name="honoka" mode="face" me="normal"]

[select_set]
[select_btn id="select_num0_a" text="１．ヒーローごっこの遊びかた" storage="mainStory01.ks" target="*select_root1"]
[select_btn id="select_num0_b" text="２．バッジについて" storage="mainStory01.ks" target="*select_root2"]
[select_btn id="select_num0_c" text="３．禁止事項について" storage="mainStory01.ks" target="*select_root3"]
[select_btn id="select_num0_d" text="読み終わった" storage="mainStory01.ks" target="*select_root4"]
[select_show]
[if exp="f.musicNow != 'nichijou_c'"]
[bgm id="nichijou_c" mode="play"]
[endif]
[s]


; ◆ヒーローごっこの遊びかた
*select_root1
[message_day mode="set" day="月" text="自宅・リビング"]
[select_hide title="１．ヒーローごっこの遊びかた"]

[message mode="set"]

[rule_image num="1" mode="show" storage="../image/rule_01_1.png"]
「敵陣営のバッジをつけている人を見掛けたら、[r]
元気に合言葉を言おう！」[pr]

[rule_image num="2" mode="show" storage="../image/rule_01_2.png"]
「周りの人の迷惑にならないように、[r]
広い場所に移動して戦おう！」[pr]

[rule_image num="3" mode="show" storage="../image/rule_01_3.png"]
「バッジを奪い取るか、降参させたら、君の勝ちだ！」[pr]

ざっと読むと、そんな内容だった。[pr]

[rule_image mode="hide"]
[jump target="*select_back"]
[s]


; ◆バッジについて
*select_root2
[message_day mode="set" day="月" text="自宅・リビング"]
[select_hide title="２．バッジについて"]

[message mode="set"]
[rule_image num="1" mode="show" storage="../image/rule_02_1.png"]
「バッジは見やすい場所につけよう！」[pr]

[rule_image num="2" mode="show" storage="../image/rule_02_2.png"]
「敵のバッジを手に入れたら、[r]
自陣営の本部に送ろう！」[pr]

[rule_image num="3" mode="show" storage="../image/rule_02_3.png"]
「バッジを取られてしまったら、[r]
敵陣営から奪い返そう！」[pr]

その他、紛失時の対応などが書かれている。[pr]

[rule_image mode="hide"]
[jump target="*select_back"]
[s]

; ◆禁止事項について
*select_root3
[message_day mode="set" day="月" text="自宅・リビング"]
[select_hide title="３．禁止事項について"]

[message mode="set"]
[rule_image num="1" mode="show" storage="../image/rule_03_1.png"]
「武器（魔法道具を含む）の使用は禁止」[pr]

[rule_image num="2" mode="show" storage="../image/rule_03_2.png"]
「魔導書『月の書』第４版第２章以降の[r]
魔術の使用は禁止」[pr]

[rule_image num="3" mode="show" storage="../image/rule_03_3.png"]
「聖書『太陽の書』第２版第２章以降の[r]
神術の使用は禁止」[pr]

などなど、細かい規則や罰則が書かれている。[pr]

[rule_image mode="hide"]
[jump target="*select_back"]
[s]

; ◆読み終わった
*select_root4
[message_day mode="set" day="月" text="自宅・リビング"]
[select_hide title="読み終わった"]

[message mode="set"]
[jump target="*select_end"]
[s]

[_tb_end_tyrano_code]

*select_end

[tb_start_tyrano_code]

[bgm mode="end"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「軽くだけど読んだよ。わかりやすくていいと思う」[pr]

[bgm id="night" mode="play"]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「禁止事項の部分、前より細かくなったね」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「前からそこが曖昧で分かり辛いって[r]
言われてたからなー」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「あ、そう言えば桐生くんもこの間そう言ってたな」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「おお……桐生くんって言うと、[r]
[ほのか]をヒーローごっこに誘ったやつか」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「どんな感じのやつなんだっけ？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「桐生くんは……」[p]

[_tb_end_tyrano_code]

*select2

[tb_start_tyrano_code]
[sceneTitle text="選択肢｜桐生くんってどんなひと？"]

[nolog]
[current layer="message0"][er]
[nowait]
「桐生くんは……」
[endnowait]
[endnolog]

; スキップ解除
[cancelskip]
[wait time="100"]

[select_set]
[select_btn id="select_num1_a" text="半分柴犬のひと" storage="mainStory01.ks" target="*select2_root1"]
[select_btn id="select_num1_b" text="半分髪が赤いひと" storage="mainStory01.ks" target="*select2_root2"]
[select_show]

[chara_img name="honoka" mode="face" me="normal"]
[s]


; ◆選択肢｜半分柴犬のひと
*select2_root1
[select_hide title="半分柴犬のひと"]
[message_day mode="set" day="月" text="自宅・リビング"]
[message mode="set"]

[eval exp="f.root_dog += 1"]
[select_after_image mode="show" storage="../image/select_icon_d.png"]

[message_name name="主人公" mode="show"]
「半分柴犬のひとだよ」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「ああ、そっか。半獣なんだったな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そうそう」[pr]

[chara_img name="haruo" mode="face" me="toziru"]
[message_name name="はるお"]
「俺も１回見てみてぇな……」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
兄ちゃんも私と同じで柴犬が大好きだ。[ls][r]
見たらきっと私と同じような反応をするのだろう。[pr]

[select_after_image mode="hide"]
[chara_img name="honoka" mode="face" me="normal" ase="false"]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「まあいい。宿題終わったら飯にするぞー」[pr]

[jump target="*select2_end"]
[s]


; ◆選択肢｜半分髪が赤いひと
*select2_root2
[select_hide]
[message_day mode="set" day="月" text="自宅・リビング"]
[message mode="set" title="半分髪が赤いひと"]

[eval exp="f.root_people += 1"]
[select_after_image mode="show" storage="../image/select_icon_p.png"]

[message_name name="主人公" mode="show"]
「半分髪が赤いひとだよ」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「ああ、そういえば前も聞いたな。[r]
半分だけ染めてるって」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「全部赤にすると落ち着かないから、[r]
半分にしたって言ってたよ」[pr]

[chara_img name="haruo" mode="face" me="toziru" me="warau"]
[message_name name="はるお"]
「半分だけとは、反骨精神があってかっこいいなー」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name name="主人公"]
「ふーん……？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
反骨精神があるかは知らないが、[r]
確かにかっこいいと思う。[ls]桐生くんは赤が似合う人だ。[pr]

[select_after_image mode="hide"]

[chara_img name="haruo" mode="face" me="normal" mayu="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「まあいい。宿題終わったら飯にするぞー」[pr]

[jump target="*select2_end"]
[s]


; ◆合流
*select2_end

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「終わってないけど、いいや。明日学校でする」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「それ、間に合うのか？」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hiraku"]
[message_name name="主人公"]
「難しくないから大丈夫だよ」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「さすがだな、[ほのか]～」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
またわしゃわしゃと撫でられた。[pr]

[jump target="*scene5"]
[s]
[_tb_end_tyrano_code]

*scene5

[tb_start_tyrano_code]
[eyecatch]
[image layer="base" storage="bg_asari_honoka.jpg"]
[chara_img mode="hide_all" time="0"]
[message_day mode="hide" time="0"]
[chara_img type="heroine" name="honoka" cos="pajama" mode="show" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[sceneTitle text="月曜日｜自宅・自室"]
[message_day mode="show" day="月" text="自宅・自室"]

[message mode="set"]

[playseEx storage="message.ogg"]

お風呂から上がると、スマホにメッセージが届いていた。[ls][r]
桐生くんからだ。[pr]

[lineMessageStart img="../image/line_message01.png"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="明日は雨だ！傘忘れないようになー" click="false"]

[p]
[chara_img type="heroine" name="honoka" cos="pajama" kuti="warau" ase="true" mode="show" time="300" wait="false"]

[message mode="show" anim="fade" time="300" sysbtn="false"]
[message_name name="主人公" mode="show"]
「天気予報だ……」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" kuti="hohoemu"]
そういえば、この間大雨が降った時に[r]
傘を持っていなくて困ったことがあった。[pr]

今度は困らないようにと連絡してくれたのだろう。[pr]

[chara_img name="honoka" mode="face" me="hannme"]
兄ちゃんみたいだなと思う。[ls][r]
たぶん明日の朝兄ちゃんにも言われる。[pr]

[message_name mode="hide"]
[message_day mode="hide" wait="false" time="300"]
[chara_img mode="hide_all" wait="false" time="300"]
[message mode="hide" time="300"]

[lineMessageSet id="honoka" mode="left" name="主人公" text="ありがとー" click="false"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_stamp01.png" text="【スタンプ】雨だね"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="好きだなー柴犬"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="なんか見覚えあるけど、なんのキャラだっけ"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="私がノートに適当に描いてたやつだよ。<br>兄ちゃんが勝手にスタンプにしたの"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="スタンプショップにあるよ"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="&'あーそうだ、' + sf.myozi + 'の絵だ'"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" image="line_stamp02.png" text="【スタンプ】ひゃっほー"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="あった"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="これいいな"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="買ったんだ　はやい"]
[lineMessageSet id="honoka" mode="left" name="主人公" image="line_stamp02.png" text="【スタンプ】ひゃっほー"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="ありがと"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="じゃあまた明日。おやすみ"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="おやすも"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="み"]

[lineMessageEnd]

[message_day mode="show" day="月" text="自宅・自室" time="0"]
[chara_img type="heroine" name="honoka" cos="pajama" kuti="hohoemu" mode="show" time="300" wait="false"]
[message mode="show" anim="fade" time="300"]
桐生くんはいいやつだ。[pr]

; 回想終了
[memory_end chapter="ch01-4"]

[window_all_hide]
[wait_skip]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[jump storage="mainStory02.ks"]

[_tb_end_tyrano_code]
