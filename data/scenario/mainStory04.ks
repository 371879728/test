[_tb_system_call storage=system/_mainStory04.ks]

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

[image layer="base" storage="bg_school_ground.jpg"]
[chara_img mode="show" type="heroine" name="honoka" cos="jersey" time="0"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]
[weekCutIn title="木曜日" text="Thursday"]
[chara_img type="heroine" name="honoka" mode="show" cos="jersey" time="0"]
[image layer="base" storage="bg_school_ground.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[sceneTitle text="木曜日｜国立Ｓ学園・グラウンド"]
[message_day mode="show" day="木" text="国立Ｓ学園・グラウンド"]
[eval exp="sf.chapter_ttl['ch04'] = true"]

[bgm id="nichijou_a" mode="play"]

[message mode="set"]
午後。[ls][r]
朝よりも風が強くなり、台風が近づいて[r]
来ていることを肌で感じる。[pr]

それでもまだ警報が出ていないから、[r]
体育は予定通り屋外で行われることになった。[pr]

私は体育委員なので、少し早めに[r]
グラウンドに向かい授業の準備をする。[pr]

[chara_img name="mob" cos="men" mode="show"]

[message_name name="体育教師" mode="show"]
「[浅利]、ちょっといいか？」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「なんでしょうか」[pr]

[message_name name="体育教師"]
「ハードルが３つ足りないから、[r]
取りに行ってきてくれないか？[r]
[浅利]ならまとめて持って来れるだろう」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「わかりました」[pr]

[message_name mode="hide"]
１年生の頃に握力測定器を壊してからというもの、[r]
この人は私に力仕事を遠慮なく任せてくるようになった。[ls][r]
実際、ハードルを運ぶことくらい大した仕事じゃない。[pr]

先生から鍵を預かり、倉庫に向かった。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_ura.jpg" method="fadeInLeft" time="1000" wait="true"]
[chara_img type="heroine" name="honoka" mode="show" cos="jersey" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜国立Ｓ学園・校舎裏"]
[message_day mode="show" day="木" text="国立Ｓ学園・校舎裏"]

[message mode="set"]
倉庫は上位棟と下位棟の間辺りにある。[ls][r]
グラウンドは区切られているのだが、[r]
倉庫は全クラス共用だ。[pr]

校舎裏を抜けて倉庫に向かうと、[r]
扉の前に見覚えのある背中が立っていた。[pr]

[chara_img name="yamato" mode="show" badge="true"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「あれ、桐生くん？」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生ヤマト"]
「[浅利]！　こんなところで何してるんだ？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「授業で使うハードル取りに来たの。桐生くんは？」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「[浅利]も体育委員なのか？　俺もそうなんだ。[r]
今授業が終わって、片付けしてるところだよ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name mode="hide"]
そうだったのか。[ls][r]
桐生くんはいつもジャージを着ているから、[r]
服装からは判断できなかった。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生ヤマト" mode="show"]
「ハードルならさっき授業で使ったから、[r]
こっちのグラウンドにあるよ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうなんだ。ありがと」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生ヤマト"]
「手伝うよ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「１人でも大丈夫だよ」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「２人の方が早いだろ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そっか……そうだね。ありがと」[pr]

[message_name mode="hide"]
桐生くんは結構世話好きだ。[r]
大人しくお言葉に甘えることにしよう。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生ヤマト" mode="show"]
「ちょっと曇って来たなー」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「台風来てるからね」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
なんとなく空を見上げながら、[r]
のんびりグラウンドに向かう。[pr]

ふと、下位棟の窓の１つに目が留まった。[ls][r]
生徒が窓に背を向けて寄り掛かっていて、[r]
すぐ近くには植木鉢がある。少しでも押せば落ちそうだ。[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hiraku" ase="true"]
と思った瞬間、まさしく生徒の背中が鉢を押した。[ls][r]
鉢の落下地点は、桐生くんの歩行経路の延長線上にある。[pr]

咄嗟に桐生くんの腕を引いた。[r]
考えるよりも先に体が動いていた。[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="桐生ヤマト" mode="show"]
「うおっ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" ase="true"]
[message_name name="主人公"]
「わっ」[pr]

[message_name mode="hide"]
[chara_img mode="hide_all" wait="false"]
[bgimg storage="black.jpg" time="500"]
[wait_skip]

桐生くんを軌道から逸らすことに成功したものの、[r]
お互いにバランスを崩して体が傾むく。[pr]

[playseEx storage="shigemi.ogg"]
[quake count="3" time="300" hmax="20"]

雪崩れるように近くの茂みに倒れ込んだ。[ls][r]
鉢の割れる音と、茂みを押し潰す音が重なって聞こえた。[pr]

地面に着いた感覚はあるが、痛みは全くない。[ls][r]
何だろう。地面がやけにふかふかしている。[pr]

[message_name mode="hide"]
[still mode="start" num="4"]

[bgm id="nichijou_d" mode="play"]

見覚えのあるジャージが目前に広がっていた。[ls][r]
どうやら桐生くんの上に倒れ込んだらしい。[pr]

思っていたよりも強い力で引いてしまったようだ。[ls][r]
強い力で。[pr]

我に返り、勢いよく体を起こした。[pr]

[message_name name="主人公" mode="show"]
「ご、ごめん、力任せに掴んだ……！　腕痛くない？」[pr]

[message_name name="桐生ヤマト"]
「い、いや、それは全然……びっくりしたけど」[pr]

[message_name name="主人公"]
「そ、そっか。よかった……ごめんね」[pr]

[message_name mode="hide"]
心底ほっとして息をついた。[pr]

[message_name name="桐生ヤマト" mode="show"]
「あ、危ないところだったんだな。ありがとう」[pr]

[message_name name="主人公"]
「ううん。無事でよかった」[pr]

[message_name name="主人公"]
「……ところで、なんで獣化してるの？」[pr]

[bgimg storage="black.jpg" time="600"]

[message_name name="桐生ヤマト"]
「えっ……あ！」[pr]

[still mode="change" num="4_2"]

[message_name mode="hide"]
はっと目を丸くした次の瞬間、桐生くんの姿は[r]
人の形に戻っていた。[ls]それに従って、ふかふかしていた[r]
地面の感覚も硬いものに変わる。[pr]

[message_name name="桐生ヤマト" mode="show"]
「はあ……[r]
もうだいぶ制御できるようになったけど、[r]
まだ驚くと出たりするんだよな」[pr]

[message_name name="主人公"]
「出る、って……そんな感じなの？」[pr]

[message_name name="桐生ヤマト"]
「驚いた時声出るだろ？　そんな感じだよ」[pr]

[message_name mode="hide"]
そういうものなのか。[pr]

[still mode="change" num="4_3"]
[message_name name="桐生ヤマト" mode="show"]
「…………」[pr]

[message_name mode="hide"]
はた、と視線が合う。[ls][r]
そう言えばずっと乗りかかったままだ。[pr]

[message_name name="主人公" mode="show"]
「ごめん、重いよね。すぐ退くね」[pr]
[message_name name="桐生ヤマト"]
「え？　あ、いや……」[pr]
[message_name mode="hide"]

[still mode="end" storage="bg_school_shigemi.jpg"]

[chara_img type="heroine" name="honoka" cos="jersey" mode="show" wait="false"]
[chara_img name="yamato" me="sorashi_h" mayu="kiri" kuti="toziru" tere="true" ase="true" mode="show" wait="false" badge="true"]

[message_name mode="hide"]
立ち上がり、膝についた雑草を払う。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="normal"]
桐生くんに手を差し出すと、[r]
困ったように笑いながら手を取った。[pr]

[chara_img name="yamato" mode="face" me="normal" tere="false" ase="false"]
さっき掴んだ腕だ。[ls][r]
その手はしっかりと私の手を握っていて、[r]
痛みがある様子はなさそうだ。[pr]

[chara_img name="honoka" mode="face" mayu="syunn" kuti="warau"]
[message_name name="主人公" mode="show"]
「よかった、怪我させなくて」[pr]

[chara_img name="yamato" mode="face" mayu="komaru"]
[message_name name="桐生ヤマト"]
「ちょっと強く掴まれるくらい、平気だよ」[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
[message_name name="主人公"]
「そう、だね……」[pr]

[bgm id="memory" mode="play"]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru"]
[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公"]
「……昔、空手の試合で骨折させちゃったことがあるの」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「……力が強いから？」[pr]

[message_name name="主人公"]
「うん」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="normal"]
[message_name mode="hide"]

私は人よりも力が強い。[r]
壊そうと思えば、きっと何だって壊せる。[ls][r]
空手をやめることになったのも、それが原因だ。[pr]

幼い頃は普通だったのだが、[r]
成長するにつれてどんどん強くなって行った。[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="sorashi_h" kuti="toziru"]
[message_name name="桐生ヤマト" mode="show"]
「そうなのか……空手やってたのって、いつ頃なんだ？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「小学生の時だよ。中学校に入る時にやめちゃったけど」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「昔はどうやってコントロールすればいいか[r]
わからなくて……今はもう大丈夫なんだけどね」[pr]

[chara_img name="yamato" mode="face" me="sorashi"]
[message_name name="桐生ヤマト"]
「そっか……」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「ちょっと似てるな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「何に？」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="warau"]
[message_name name="桐生ヤマト"]
「俺に」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「昔……俺も小学生の頃、人間の姿と犬の姿を[r]
自分の意思で変えるのがうまくできなかったんだ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="true"]
[message_name name="桐生ヤマト"]
「さっきみたいに驚いたりすると、[r]
すぐ犬の姿になっちゃってさ……[r]
今は、基本的には大丈夫なんだけど」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="hannme" kuti="normal"]
[message_name name="主人公"]
「そうだったんだ……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi"]
[message_name name="主人公"]
「でも確かに、身体の組織と細胞を人体に寄せるか[r]
犬に寄せるかを意識的に操作することで[r]
変身してるんだとすると……」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="hiraku" ase="true"]
[message_name name="桐生ヤマト"]
「う、うん……？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「半獣ってすごいんだねってこと」[pr]

[chara_img name="yamato" mode="face" kuti="warau" ase="true"]
[message_name name="桐生ヤマト"]
「そ、そうだな」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="normal" ase="false"]
[message_name name="桐生ヤマト"]
「でも、そのおかげで丈夫なんだ。[r]
昨日の怪我だってもう完全に治ったしな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「ほんとだ……すごい自然治癒力だね」[pr]

[chara_img name="yamato" mode="face" me="normal"]
[message_name name="桐生ヤマト"]
「だから俺はそう簡単にケガしないし、[r]
してもすぐ治るから大丈夫だよ」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「……ありがとう」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「おう」[pr]

[message_name mode="hide"]
優しい人だ。[pr]

[bgm mode="end"]

[wait_skip time="500"]
[playseEx storage="chime.ogg"]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="normal"]
[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
不意にチャイムが鳴り響いた。[ls][r]
途端に我に返る。そう言えばハードルを取りに行く[r]
途中だった。[pr]

[stopseEx mode="fadeout"]

[bgm id="nichijou_d" mode="play"]

[chara_img name="yamato" mode="face" kuti="hiraku" ase="true"]
[message_name name="桐生ヤマト" mode="show"]
「あっ、そうだった。急いだほうがいいよな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「貧血で休憩してましたって言えば大丈夫だよ」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生ヤマト"]
「それ、ひょっとしてよくやってるのか？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「うん。だからよく貧血起こす人だと思われてる」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau" ase="true"]
[message_name name="桐生ヤマト"]
「強引だなぁ」[pr]

[message_name mode="hide"]
他愛もない言葉を交わしながら、[r]
下位棟側のグラウンドに向かった。[pr]

; 回想終了
[memory_end chapter="ch04-1"]

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

[image layer="base" storage="bg_school_class_a.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]

[bgm mode="end"]
[eyecatch]
[image layer="base" storage="bg_school_class_a.jpg"]
[chara_img name="yamato" mode="hide" time="0"]
[chara_img name="honoka" mode="face" cos="normal" kuti="normal"]
[message_day mode="hide" time="0"]
[eyecatch_off]
[endif]

[sceneTitle text="木曜日｜国立Ｓ学園・Ａクラス教室"]
[message_day mode="show" day="木" text="国立Ｓ学園・Ａクラス教室"]

[bgm id="nichijou_a" mode="play"]

[message mode="set"]
[message_name name="担任" mode="show"]
「夜にかけて台風が酷くなるので、寄り道せず[r]
帰ってくださいね。[ls]明日は祝日ですが、出かける際は[r]
強風に十分注意してください」[pr]

[message_name name="担任"]
「それでは、ホームルームを終わります」[pr]

[message_name mode="hide"]
教室の窓ががたがたと音を立てている。[ls][r]
木々は大きく揺れ動き、時折ビニール袋か何かが[r]
宙を舞っていた。[pr]

さっき桐生くんと話し合い、今日はさすがに[r]
ヒーローごっこもお休みだな、ということになった。[ls][r]
予定のない放課後なんていつ以来だろうか。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="warau" ase="true"]
[message_name name="主人公" mode="show"]（帰りたくないなー）[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
兄ちゃんからも「今日は帰れない」と連絡があった。[ls][r]
家に帰ったら１人になるだけだ。[pr]

昨日はなんとなく大丈夫な気がしていたけど、[r]
いざ１人になると思うとやはり心細い。[ls]風の音は苦手だ。[r]
心が不安定になる。雨の音も雷の音も。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_machi01.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="木曜日｜通学路"]
[message_day mode="show" day="木" text="通学路"]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message mode="set"]
とぼとぼと家路を歩いていると、前方に桐生くんの[r]
姿が見えた。[ls]今日は会うのは２度目だなと思いながら、[r]
駆け足で追いかける。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「桐生くん！」[pr]

[message_name mode="hide"]

[chara_img name="yamato" mode="show" me="odoroki" kuti="hiraku" ase="true" badge="true"]

[message_name name="桐生ヤマト" mode="show"]
「うお、びっくりした。元気だな」[pr]

[message_name mode="hide"]
桐生くんとは途中まで帰り道が同じだ。[r]
一緒に帰らせてもらおう。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="warau" ase="false"]
[message_name name="桐生ヤマト" mode="show"]
「さては、[浅利]も台風でテンションが[r]
上がるタイプか？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「逆だね。全くの逆」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「あれ、そうなのか。珍しく意見が割れたな」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「窓とか取れそうで怖い」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生ヤマト"]
「はは。確かにな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「今日、兄ちゃんが帰ってこないから１人なんだ」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「そうなのか。大丈夫か？」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hiraku"]
[message_name name="主人公"]
「微妙なところ」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" kuti="normal"]
[message_name name="桐生ヤマト"]
「なんだそれ」[pr]

; 回想終了
[memory_end chapter="ch04-2"]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[if exp="f.root_people > f.root_dog"]
[jump storage="mainStoryRootA01.ks"]

[else]
[jump storage="mainStoryRootB01.ks"]
[endif]
[s]

[_tb_end_tyrano_code]

