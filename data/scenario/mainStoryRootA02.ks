[_tb_system_call storage=system/_mainStoryRootA02.ks]

*start

[tb_start_tyrano_code]

[showmenubutton]

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

[image layer="base" storage="bg_kiryu_living.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]

[weekCutIn title="金曜日" text="Friday"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[image layer="base" storage="bg_kiryu_living.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[sceneTitle text="金曜日｜桐生家・リビング"]
[message_day mode="show" day="金" text="桐生家・リビング"]

[bgm id="nichijou_a" mode="play"]

[message mode="set"]
翌朝。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hohoemu" ase="true"]
昨日の話は、本当にヤマトくんに聞こえて[r]
いたのだろうか。はっきりしないから落ち着かない。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="normal" ase="false"]
しかし、姉妹たちと朝食をとり始めても[r]
ヤマトくんは起きてこなかった。[pr]

[chara_img name="asuka" mode="show"]

空いている席を見つめていると、アスカさんが言った。[pr]

[message_name name="桐生 アスカ" mode="show"]
「あいつ、朝弱いのよ。今日どこか遊びに行くの？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「はい。でもその前に一度家に帰りたいので、[r]
朝ごはんをいただいたらすぐお暇します」[pr]

[chara_img name="asuka" mode="face" kuti="hiraku"]
[message_name name="桐生 アスカ"]
「あら。じゃあヤマト起こして来るわ」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あ、いえ。どうせ後で合流するので大丈夫です」[pr]

[chara_img name="asuka" mode="face" kuti="normal"]
[message_name name="桐生 アスカ"]
「そう？　わかったわ」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_kiryu_genkan.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="asuka" mode="show" posi="left2" wait="false"]
[chara_img name="coconono" mode="show" posi="center" wait="false"]
[chara_img name="nanami" mode="show" posi="right2" wait="false"]
[message mode="show"]

[sceneTitle text="金曜日｜桐生家・玄関"]
[message_day mode="show" day="金" text="桐生家・玄関"]

[message mode="set"]

朝食を終えて、玄関に向かった。[ls][r]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
一晩だけとは言え、楽しい時間だった。[r]
帰るのが少し名残惜しい。[pr]

[chara_img name="coconono" mode="face" kuti="coco_warau"]
[message_name name="桐生 ココ" mode="show"]
「また遊びにきてね」[pr]

[chara_img name="coconono" mode="face" kuti="nono_warau"]
[message_name name="桐生 ノノ"]
「また泊りにきてね」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「うん。また来るね」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
[message_name mode="hide"]
後日また菓子折りを持ってお礼に伺おう。[ls][r]
姉妹たちに見送られながら、私は桐生家を後にした。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_asari_living_dark.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="金曜日｜自宅・玄関"]
[message_day mode="show" day="金" text="自宅・玄関"]

[message mode="set"]
家に戻ると、部屋の電気はついていなかった。[ls][r]
しかし玄関には兄ちゃんの靴がある。[r]
寝ているのだろうか。[pr]

電気をつけようとスイッチを押す。[r]
しかし何の反応もなかった。[pr]

[chara_img name="haruo" kuti="hohoemu" mode="show"]
[message_name name="はるお" mode="show"]
「おお、おかえり」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「兄ちゃんもおかえり。電気どうしたの？」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「なんか近くの電線が切れたみたいなんだ。[r]
復旧までにしばらくかかるって」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
昨日の台風はそれほど強いものだったのか。[r]
電線が切れるなんて初めてだ。[pr]

[message_name name="主人公" mode="show"]
「冷蔵庫とか大丈夫？」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「さっき氷買ってきて保冷ボックスに中身詰めた」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「さすが」[pr]

[chara_img name="haruo" mode="face" kuti="normal"]
[message_name name="はるお"]
「いつ復旧するかわからないし、[r]
しばらくは買い足すのやめた方がいいな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「外食？」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「食料の在庫を見るに……明後日辺りからそうなるな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「わかった」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_machi01.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" kuti="hohoemu" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜住宅街"]
[message_day mode="show" day="金" text="住宅街"]

[message mode="set"]
特に私が手伝うようなことはないと言うので、[r]
遠慮なく出かけることにした。[pr]

ヤマトくんには、いつもの場所で[r]
待ち合わせしようと連絡してある。[pr]

[bgm mode="end"]

台風が去った後は、なんとなく空気が綺麗な気がする。[ls][r]
心地よく歩いていると、前方に不良の集団が現れた。[pr]

[bgm id="ayashii" mode="play"]

[chara_img name="mob" cos="bad1" mode="show"]
[message_name name="不良Ａ" mode="show"]
「あッ、お前！」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「あ、昨日の」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
昨日サラリーマンをボコっていた少年３人組だ。[ls][r]
よく見ると、手元のバットが釘バットに進化していた。[pr]

[message_name name="不良Ｂ" mode="show"]
「昨日はよくもやってくれたな！　あの犬はどこだ？[r]
オレたちに会ったこと、後悔させてやる！」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
[message_name name="主人公"]（もうしてるよ……）[pr]

[message_name mode="hide"]
３人、しかも釘バット３本だ。[r]
１人で相手をするには分が悪い。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「決着は昨日ついたでしょ？[r]
もう忘れて、野球でもした方が楽しいよ」[pr]

[message_name name="不良Ｃ"]
「うるせぇ！　負けたまま引き下がれるか！」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="normal"]
[message_name mode="hide"]
どうしてそんなに執着するのだろう。[ls][r]
自分は強いと思うことが、自信に繋がっていたり[r]
するのだろうか。[pr]

喧嘩をしたがる人の心理は、私にはよくわからない。[ls][r]
だから追い返し方もわからない。困ったものだ。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「喧嘩しても、また痛い目見るだけだと思うけど……」[pr]

[message_name name="不良Ａ"]
「ふん、この状況でよくそんなこと言えるな」[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name name="主人公"]
（ダメそうだな）[pr]

[message_name mode="hide"]
自分たちが勝つと信じて疑わない目をしている。[pr]

無鉄砲な中学生ほど、何をしでかすかわからないものだ。[ls][r]
真っ向から相手をするのはやめておいた方がいいだろう。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
不良たちとの距離をじりじりと見極めていると、[r]
不意に３人が私の後ろに目を向けた。[pr]

つられて振り返るよりも先に、[r]
誰かが私の隣を抜けて不良の前に立ちふさがった。[pr]

[chara_img name="mob" cos="bad1" mode="move" posi="right" wait="false"]
[chara_img name="yamato" mode="show" mayu="kiri" kuti="toziru" posi="left2" badge="true"]

[message_name name="桐生 ヤマト" mode="show"]
「１人相手に３人掛かりなんて、恥ずかしくないのか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「ヤマトくん……」[pr]

[message_name mode="hide"]
挑発的というよりは、冷静に諭すような声。[ls][r]
やっぱり私は、この人に助けられてばかりだ。[pr]

[message_name name="不良Ａ" mode="show"]
「で、出やがったな！　探す手間が省けたぜ」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="hiraku" ase="true"]
[message_name name="桐生 ヤマト"]
「げ、釘バット……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「助けに来てくれたところ申し訳ないんだけど、[r]こういう状況なんだよね」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「なるほど……」[pr]

[message_name mode="hide"]
ヤマトくんの目にも、あの釘バット３本は[r]
禍々しく映っていることだろう。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" ase="false"]
[message_name name="主人公" mode="show"]
「私が今考えてること、わかる？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「そうだな。１つしかない」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「じゃあ、右ね」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「わかった」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hiraku"]
[message_name name="主人公"]
「――あっ、警察だ！」[pr]

[message_name name="不良Ａ"]
「！？」[pr]

[message_name mode="hide"]
[chara_img mode="hide_all"]

全員が勢いよく背後を振り返ったのを見計らい、[r]
２人で右の通路に駆け込んだ。[pr]

[bgm mode="end"]

; 回想終了
[memory_end chapter="root-P02-1"]

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

[image layer="base" storage="bg_souko.jpg"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" time="0" lost="true"]
[chara_img name="yamato" mode="show" mayu="kiri" me="toziru" kuti="toziru" ase="true" time="0" badge="true"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_souko.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[chara_img name="yamato" mode="show" mayu="kiri" me="toziru" kuti="toziru" ase="true" wait="false" badge="true"]
[message mode="show"]
[endif]

[sceneTitle text="金曜日｜廃工場・小屋"]
[message_day mode="show" day="金" text="廃工場・小屋"]

[bgm id="nichijou_d" mode="play"]

[message mode="set"]
住宅街を駆け抜けて、その勢いのまま近くの廃工場にある[r]
小屋に飛び込んだ。[pr]

ここまで来れば振り切れただろう。[ls][r]
小屋のドアを力任せに閉じて、ようやく息を整える。[pr]

やや埃っぽく、油の匂いがする。[r]
環境は最悪だが致し方ない。[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「はー……ここなら大丈夫だね」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
ようやく喋れるようになってからヤマトくんへと[r]
目を向けると、まだ呼吸し辛そうにしていた。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku" ase="false"]
[message_name name="主人公" mode="show"]
「ヤマトくん、大丈夫？」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「油臭ぇ……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi"]
[message_name name="主人公"]
「ああ……最近潰れた工場だから、[r]
まだ残ってるんだろうね」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="normal"]
[message_name mode="hide"]
私でも感じられる程だ。[ls][r]
嗅覚の鋭いヤマトくんにとっては、[r]
尚のこと良くない環境だろう。[pr]

少し外の様子を伺おうと、扉に手をかける。[ls][r]
ビクともしなかった。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" ase="true"]
[message_name name="主人公" mode="show"]
「あ……あれ、あかない」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「さっき、どうやって閉めたんだ？」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「結構硬かったから、無理やり……」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hohoemu"]
[message_name mode="hide"]
夢中だったから気が付かなかったが、[r]
思えばかなりの力で無理やり閉めたように思う。[ls][r]
火事場の馬鹿力というやつだ。怪力上乗せの。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
他の脱出経路を探したほうがいいかもしれない。[ls][r]
その前に、ポケットからハンカチを取り出して[r]
ヤマトくんに差し出した。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name name="主人公" mode="show"]
「これ、口に当てとくといいよ。[r]
出口ないか探してみるから、座ってて」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="hannme" kuti="normal"]
[message_name name="桐生 ヤマト"]
「あ、ありがとう……」[pr]

[message_name mode="hide"]
[chara_img name="yamato" mode="hide"]

ヤマトくんは困ったように眉を下げると、[r]
近くの木材の上に座った。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal"]
ここは工場の作業道具などを保管する納屋らしい。[ls][r]
見渡すほどの広さはなく、小さな窓も木で[r]
打ち付けられている。[pr]

出口になりそうな場所といえば、[r]
やはりこの入口だけのようだ。[pr]

鉄製のドアはやや分厚くさび付いていて、[r]
中途半端な力で壊そうとすれば歪んで[r]
開かなくなってしまうだろう。[pr]

獣化したヤマトくんと私の力で粉々にするのが、[r]
一番安全な脱出方法かもしれない。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「ヤマトくん、大丈夫？」[pr]

[chara_img name="yamato" mayu="komaru" me="toziru" kuti="toziru" ase="true" mode="show" badge="true"]

[message_name name="桐生 ヤマト"]
「さっきよりは……でも、ちょっときつい」[pr]

[chara_img name="yamato" mode="face" me="hannme"]
[message_name name="桐生 ヤマト"]
「……[ほのか]、ちょっとここ座ってくれ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal" ase="true"]
[message_name mode="hide"]
ここ、と言われたのは、ヤマトくんの足の間だ。[r]
どうしてそんなことを言うのだろう。[ls][r]
首を傾げながら、大人しく言われた通りにする。[pr]

これでいいのかなと思いながら背を向けて座ると、[r]
後ろから手が回って来た。[pr]

[still mode="start" num="7"]

[message_name name="主人公" mode="show"]
「わ……」[pr]

[message_name name="桐生 ヤマト"]
「あー……こっちの方が落ち着く。[r]
ごめんな、しばらくこうしてていいか？」[pr]

[message_name name="主人公"]
「う、うん……でも汗臭くない？」[pr]

[message_name name="桐生 ヤマト"]
「いや……ほどよい」[pr]

[message_name name="主人公"]
「何その感想……」[pr]

[message_name mode="hide"]
ほどよい汗臭さってなんだろう。[pr]

こんな風に誰かと触れ合うのは初めてだ。[ls][r]
緊張して落ち着かないが、これで少しでも[r]
気分が良くなるのなら大人しくしているしかない。[pr]

[bgm mode="end"]

まあ、私も休憩したかったところだ。[r]
少し背中を預けさせてもらおう。[ls][r]
あんなに全速力で走ったのはいつ以来だろうか。[pr]

[bgm id="memory" mode="play"]

[still mode="change" num="7_2"]
[message_name name="主人公" mode="show"]
「……ふふ。また助けられちゃったね」[pr]

[message_name name="桐生 ヤマト"]
「あんな逃げ方で済んだくらいだし、[r]
１人でも大丈夫だっただろ」[pr]

[message_name name="主人公"]
「でも、ほんとはちょっと怖かったの。[r]
来てくれて安心した」[pr]

[message_name name="桐生 ヤマト"]
「俺は別に……」[pr]

[message_name mode="hide"]
ヤマトくんは言葉を止め、ぽつりと呟いた。[pr]

[still mode="change" num="7_3"]
[message_name name="桐生 ヤマト" mode="show"]
「……俺、そんなに[ほのか]のこと助けてるか？」[pr]

[message_name name="主人公"]
「うん」[pr]

[message_name name="主人公"]
「って、やっぱり昨日の話聞こえてた？」[pr]

[message_name name="桐生 ヤマト"]
「あー……うん。ごめん」[pr]

[message_name name="主人公"]
「いいよ。聞かれて困る話でもないし」[pr]

[message_name mode="hide"]
改まって話すには、少し恥ずかしいというだけだ。[pr]

[still mode="change" num="7_4"]
[message_name name="主人公" mode="show"]
「……助けられてるよ、たくさん。[r]
毎日こんなに楽しいの、本当にすごく久しぶりなんだよ」[pr]

[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name name="桐生 ヤマト"]
「気になってたんだけど……[r]
[ほのか]はもう、空手はやらないのか？」[pr]

[message_name name="主人公"]
「ん？　うん。もうあんまり興味ないし……[r]
もう試合には出られないだろうから、つまんないと思う」[pr]

[message_name name="桐生 ヤマト"]
「なんで？」[pr]

[message_name name="主人公"]
「私みたいに力が強い体質の人は、[r]
危険だし不公平なんだって。だから試合はできないし、[r]
大会にも出られないの」[pr]

[message_name name="桐生 ヤマト"]
「……そっか」[pr]

[message_name mode="hide"]
[still mode="change" num="8" time="600"]

[message_name name="主人公" mode="show"]
「空手を始めたばっかりの頃は、[r]
力も普通くらいだったんだよ」[pr]

[message_name name="主人公"]
「試合でも負けてばっかりで、[r]
なかなか１位になれなくて……悔しかったなぁ」[pr]

[still mode="change" num="8_2"]

[message_name name="主人公" mode="show"]
「だんだん強くなって、１位を取れるように[r]
なったんだけど……」[pr]

[message_name name="主人公"]
「空手の技術が上がった訳じゃなくて、[r]
ただ力が強くなっただけだったんだろうね」[pr]

[still mode="change" num="8_3"]

[message_name name="主人公" mode="show"]
「それでも、たくさん１番を取れるのが楽しくて、[r]
周りが見えなくなって、怪我させちゃって……[r]
誰も私と戦ってくれなくなっちゃった」[pr]

[message_name name="主人公"]
「ちょうどその頃、コロも寿命でいなくなっちゃってね」[pr]

[still mode="change" num="8_4"]
[message_name name="主人公" mode="show"]
「なんか……全部、もういいやって思ったの」[pr]

[hidesystembutton]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[eval exp="tf.time = 300"]

[anim name="message_window" opacity="0" time="&tf.time"]
[anim name="message_name" opacity="0" time="&tf.time"]
[anim name="name_icon" opacity="0" time="&tf.time"]
[anim layer="message1" opacity="0" time="&tf.time"][wa]

[still mode="change" num="8_5"]
[wait_skip time="200"]

[message_name mode="hide"]
[endif]

[still mode="end" storage="bg_souko.jpg"]

[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" lost="true"]
[chara_img name="yamato" mayu="syunn" me="sorashi_h" kuti="toziru" mode="show" wait="false" badge="true"]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[eval exp="tf.time = 300"]
[anim name="message_window" opacity="255" time="&tf.time"]
[anim name="message_name" opacity="255" time="&tf.time"]
[anim name="name_icon" opacity="255" time="&tf.time"]
[anim layer="message1" opacity="255" time="&tf.time"][wa]
[endif]

[showsystembutton]
[message mode="set"]

[message_name name="桐生 ヤマト" mode="show"]
「そうだったのか……」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「スポーツって怪我をするためのものじゃないし、[r]
怪我したらつまんないんだよ」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="normal"]
[message_name name="主人公"]
「私も、誰かに怪我をさせたくて[r]
空手をやってたわけじゃない。[r]
だから、やめたの」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「今はもう抑えられるようになっただろ？[r]
ヒーローごっこだって楽しくできてるし」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「そうだね。でも……[r]
今はもう、ヒーローごっこの方が楽しいから」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……そっか」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="hannme" kuti="hohoemu"]
[message_name mode="hide"]
そう、今はすごく楽しいのだ。[ls][r]
中学生の頃を思うと、もうあの時には戻りたくないと[r]
思ってしまうくらい。[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" me="toziru"]
だからこそ。[ls][r]
今が楽しいと感じるからこそ、[r]
時々不安になることがある。[pr]

[bgm id="odayaka" mode="play"]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「あのね……ヤマトくん。変な話していい？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「なんだ？」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
[message_name name="主人公"]
「私は、今がすごく楽しくて……[r]
空手の時みたいにそれがなくなっちゃうのは、[r]
いやだなって思う」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「ヤマトくんは友達がたくさんいるし、いつか私より[r]
仲のいい人ができて、私とは遊ばなくなっちゃう[r]
かもしれないって思うと……」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="normal"]
[message_name name="主人公"]
「すごく、こわい」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「私……ヤマトくんにずっと一緒にいてほしい」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="sorashi_h"]
[message_name name="桐生 ヤマト"]
「それは……」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「友達として、ってことか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal" ase="true"]
[message_name name="主人公"]
「？」[pr]

[message_name mode="hide"]
“として”とは。[ls]
言葉の意味が分からずに首を傾げると、[r]
ヤマトくんは不意に顔を上げた。[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「例えば……もし俺が誰かと付き合うことになって、[r]
それはそれとして[ほのか]とは友達として[r]
今まで通り遊ぶって言ったら、それでいいと思うか？」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「ええと……」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="sorashi_h" kuti="normal" ase="false"]
[message_name mode="hide"]
恋愛についてはあまりよくわからない。[ls][r]
しかし、付き合うというのは、少なくとも[r]
友達よりも深い関係になるということだ。[pr]

そんな人が傍にいても、私と遊んでくれる。[r]
それは嬉しいと思う。[pr]

[chara_img name="honoka" mode="face" me="normal"]
なら、それでいいのか？[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……やだな」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
どうしてだろう。[r]
それでいいとは、到底思えなかった。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" naku="true"]
[message_name name="主人公" mode="show"]
「例え今の関係が全く変わらないんだとしても、[r]
私以外に、私より近いところに誰かがいるの、[r]
見たくない」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="odoroki" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「！」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name mode="hide"]
考えただけで、胸が苦しくなる。[pr]

だけどヤマトくんが誰と付き合うかは、[r]
ヤマトくんが決めることだ。[ls][r]
私がヤマトくんにお願いする権利はない。[pr]

誰とも付き合わないで、[r]
ずっと一緒にいてほしいなんて。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" naku="false" ase="true"]
[message_name name="主人公" mode="show"]（……ん？　あれ？）[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
それって、私と付き合って欲しいということなんじゃ[r]
ないだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" tere="true"]
[message_name name="主人公" mode="show"]
「そっか、私……遊べるかどうかじゃなくて[r]
ただ、ヤマトくんと一緒にいられなくなるのが嫌なんだ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="okoru" tere="true"]
[message_name name="桐生 ヤマト"]
「っえ？」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="hannme" kuti="normal" ase="false"]
[message_name name="主人公"]
「いつか今みたいに遊ばなくなったとしても、[r]
ずっと一緒にいたい」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「私……ヤマトくんのことが好き」[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……！！」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="normal"]
[message_name mode="hide"]
ずっと、いいやつだと思っていた。[pr]

一緒にいると楽しい。[ls][r]
だからいつまでも隣にいてほしい。[r]
いさせてほしい。[pr]

[chara_img name="honoka" mode="face" me="normal"]
他の誰かのところになんて、行かないでほしい。[ls][r]
こんな気持ちになるのは初めてだ。[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「…………」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「す、好きって、そんな、急に……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「だ、だって、今気づいたから……[r]
どうしよう。どうしたらいいのかわかんない……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" naku="true"]
[message_name name="主人公"]
「でも、好きなの」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" mayu="normal" me="odoroki" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……！！」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="normal"]
[message_name mode="hide"]
感情が溢れ出して止まらない。[r]
どう扱えばいいのかもわからない。[pr]

[message_name name="桐生 ヤマト" mode="show"]
「っ……」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" mayu="kiri" me="normal" kuti="okoru" ase="false"]
[message_name name="桐生 ヤマト"]
「俺も好きだ！」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="hiraku" naku="false"]
[message_name name="主人公"]
「！」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「楽しそうな顔も、困ってる顔も……[r]
犬のことが好きで仕方ないって顔も、[r]
全部好きなんだ」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「友達として遊ぶのも勿論楽しかったけど……[r]
やっぱり俺は、恋人として[ほのか]に[r]
選んでほしいって思ってたんだ」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="normal" kuti="hohoemu" naku="false"]
[message_name name="主人公"]
「そう……だったんだ」[pr]

[message_name mode="hide"]
桐生くんの言葉は、私みたいについさっき[r]
自覚したようなものには聞こえなかった。[pr]

ひょっとして、前からそう思ってくれて[r]
いたのだろうか。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h"]
その恋愛感情としての特別な“好き”を、[r]
ずっと持ってくれていたのだろうか。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
心臓がドキドキと音を立てる。[ls][r]
自覚するともう止まらない。[pr]

[chara_img name="honoka" mode="face" me="normal"]
もっと好きになりたい。もっと好きになってほしい。[ls][r]
私はこんなにもヤマトくんのことが好きだったのか。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「ヤマトくん、私……ヤマトくんと恋人になりたい。[r]
友達ってだけじゃなくて……特別な人になりたいの」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「俺で、いいのか」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「ヤマトくんがいい」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……そっか」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi_h" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「あの……あのさ」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「うん？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「キスしてもいいか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「うん」[pr]

[message_name mode="hide"]

[chara_img mode="hide_all" wait="false"]
[bgimg storage="black.jpg" time="800"]

ひとつ頷くと、桐生くんは私の頬に手を添えた。[pr]

他人の唇ってこんなに柔らかいんだなと、[r]
10数年生きて始めて知る。[ls]

目を閉じるか迷う間もなく、[r]
次の瞬間には唇が離れていた。[pr]

[chara_img type="heroine" name="honoka" cos="shihuku" mayu="komaru" kuti="hohoemu" tere="true" mode="show" wait="false" lost="true"]
[chara_img name="yamato" mayu="normal" me="sorashi_h" kuti="toziru" tere="true" mode="show" wait="false" badge="true"]

[bgimg storage="bg_souko.jpg" time="800"]

鼓動だけが取り残されたように存在を主張している。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「……えへ。キスしたのはじめて」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……俺もだよ」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
[message_name name="主人公"]
「心臓、すごくドキドキするね」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="toziru"]
[message_name name="桐生 ヤマト"]
「そうだな。走ったあとみたいだ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「ね」[pr]

[message_name mode="hide"]

[chara_img name="yamato" mode="face" me="warau"]
[chara_img name="honoka" mode="face" kuti="hohoemu"]
お互いになんとなく自分の心臓に手を当てながら、[r]
照れ隠しに笑い合った。[pr]

[bgm mode="end"]

[chara_img name="yamato" mode="face" me="normal" tere="false"]
[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu" tere="false"]
いつまでもこうしていたいけど、[r]
少しずつ頭が冷静になって行く。[pr]

いつまでも、こうして閉じ込められている訳には[r]
いかない。[pr]

[bgm id="nichijou_b" mode="play"]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「……じゃあ、今度こそ出ようか」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「そうだな……っていうか、結局出口見付かったのか？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ううん、出入口になりそうなのはあの扉だけ。[r]
壊すのが手っ取り早いから、手伝ってくれる？」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「力技だな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「ダメかな」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「いや。俺の得意分野だ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]

[chara_img name="yamato" mode="hide"]
[chara_img name="yamato_dog" mode="show" badge="true"]

ヤマトくんは不敵な笑みを浮かべると、獣化した。[ls][r]
２人で扉の前に立ち、視線を交わす。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="warau"]
[message_name name="主人公" mode="show"]
「じゃあ行くよ」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" kuti="warau"]
[message_name name="桐生 ヤマト"]
「せーのっ」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_koujou.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" cos="shihuku" wait="false" lost="true"]
[chara_img name="yamato" mode="show" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="金曜日｜廃工場"]
[message_day mode="show" day="金" text="廃工場"]

[message mode="set"]
扉の一点に向かって、ありったけの力を込めて[r]
蹴り倒した。[pr]

鉄製の扉が地面に倒れ伏し、視界が開けた。[r]
陽の光が目に突き刺さる。[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「はあ、やっとまともな空気が吸えた」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「動けそう？」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「バッチリだよ」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「じゃあ、絶好のヒーローごっこ日和だね」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「そうだな……」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「終わったら、どこか遊びに行かないか？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「遊びに？」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="hiraku" tere="true"]
[message_name name="桐生 ヤマト"]
「そう。ヒーローごっこじゃなくて……なんだろうな。[r]
商店街とか公園とか……どこでもいいけど」[pr]

[chara_img name="honoka" mode="face" me="odoroki"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau" tere="true"]
[message_name name="主人公"]
「デートってやつだ」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「そういうこと」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「えへ……うん。楽しみにしてる」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau"]
[message_name name="桐生 ヤマト"]
「……おう」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
[message_name mode="hide"]
ヤマトくんとヒーローごっこ以外で遊びに行くなんて、[r]
初めてだ。[ls]どこに行こうかなと考え出すと、[r]
そればかりに思考が奪われそうになる。[pr]

ヒーローごっこに集中できなくなりそうだから、[r]
一旦頭から追い出しておくことにした。[pr]

[chara_img name="honoka" mode="face" me="normal"]
でも。[ls][r]
ヤマトくんとなら、きっとどこに行っても楽しいはずだ。[pr]

[bgm mode="end"]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]
[eval exp="sf.chapter_end['ED1'] = true"]
[eval exp="sf.eventcg_view['9'] = true"]

; オート解除
[autostop]

; スキップ中はスキップ
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

; スキップ解除
[cancelskip]

[if exp="tf.is_skip == true"]
[glyph line="none.gif" fix="true" left="980" top="540"]
[endif]

[mask time="1500" color="0xffffff"]
[wait time="300"]

[freeimage layer="0"]
[image layer="base" storage="../bgimage/event/still9.jpg"]

[message_current layer="message0" left="10" top="490"]
[nowait]
[font_color size="34" color="0xffffff" wait="10"]
ED1「いつまでも一緒に」
[font_color_reset wait="10"]
[endnowait]

[mask_off time="1000"]

[l]

; 回想終了
[memory_end chapter="root-P02-2"]

[bgm mode="end" time="1500"]

[mask time="1500" color="0x000000"]
[cm]

[layopt layer="message0" visible="false"]

[wait time="300"]

[eval exp="tf.title_fade = true"]
[jump storage="title_screen.ks" target="*back"]
[s]
[_tb_end_tyrano_code]

