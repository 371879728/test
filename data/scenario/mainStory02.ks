[_tb_system_call storage=system/_mainStory02.ks]

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

[image layer="base" storage="bg_machi01_rain.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0" badge="true"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]

[bgm mode="end"]

[weekCutIn title="火曜日" text="Tuesday"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[image layer="base" storage="bg_machi01_rain.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[playseEx storage="rain.ogg"]

[sceneTitle text="火曜日｜通学路"]
[message_day mode="show" day="火" text="通学路"]
[eval exp="sf.chapter_ttl['ch02'] = true"]

朝ごはんのカツ丼を食べて、家を出る。[ls][r]
天気はやっぱり雨だった。[pr]

[stopseEx mode="fadeout"]

[bgm id="nichijou_a" mode="play"]

[chara_img name="honoka" mode="face" me="hannme"]
雨の日はあまり好きじゃない。[ls][r]
足元が悪くて汚れやすいから戦いにくいのだ。[pr]

[chara_img name="ryman" mode="show" badge="true"]

[chara_img name="honoka" mode="face" me="normal"]
通りすがりのサラリーマンと目が合う。[ls][r]
その胸元には、スーツには不釣り合いな悪バッジが[r]
輝いていた。[pr]

[chara_img name="ryman" mode="face" mayu="kiri" kuti="henya"]
[message_name name="サラリーマン" mode="show"]
「出たな、善役！」[pr]

; リーマンカットイン
[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="ryman" move="left"]
[message mode="set"]

[chara_img mode="hide" type="heroine" name="honoka" time="300"]
[chara_img mode="show" type="heroine" left="-110" name="honoka_battle" time="300"]

[message_name name="主人公" mode="show"]
「出たな、悪役！」[pr]

; ほのかカットイン
[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="honoka" move="right"]
[message mode="set"]

[message_name mode="hide"]
少し判断が遅れ、相手から口火が切られた。[pr]

善バッジをつけているからには、いかなる状況でも[r]
勝負を引き受ける。[ls]それがヒーローごっこの流儀だ。[pr]

[chara_img name="ryman" mode="face" me="hannme" mayu="normal" kuti="normal" ase="true"]
[message_name name="サラリーマン" mode="show"]
「電車、間に合うかな……」[pr]

[bgm mode="end"]

[window_all_hide]

[bgm id="battle" mode="play"]

; 対戦演出開始
[battle_set mode="left" id="honoka" name="主人公" text="押忍"]
[battle_set mode="right" id="ryman" name="サラリーマン" text="仕事行きたくないなぁ"]
[battle_cutin]

; キャラ表示
[chara_img name="ryman" mode="show" time="0" badge="true"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[message_day mode="show" day="火" text="通学路" time="0"]
[message mode="show"]

[bgm mode="end"]

; 対戦演出おわり
[battle_cutin_off]

[bgm id="nichijou_b" mode="play"]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hohoemu" ase="true"]
接戦だった。[ls][r]
あの姿勢、恐らくは柔道の経験者だろう。全く隙がない。[pr]

しかし私も空手の使い手。状況は決して不利ではない。[pr]

[chara_img name="ryman" mode="face" me="hannme" ase="true"]
[message_name name="サラリーマン" mode="show"]
「やべ、遅刻する。降参です」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal" me="odoroki"]
[message_name mode="hide"]
次の手を考えていると、呆気なく幕切れが訪れた。[ls][r]
サラリーマンは慌てたように手を挙げると、[r]
私の言葉を待たずにバッジを差し出した。[pr]

[chara_img name="ryman" mode="face" me="normal" ase="false" badge="false"]
[chara_img name="honoka" mode="face" me="normal" ase="false"]
サラリーマンの悪バッジを手に入れた。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="toziru"]
あのまま戦い続けていたらどうなっていただろう。[ls][r]
すっきりはしないが、ルール上は降参も負けに含まれる。[r]
大人しく受け取ることにしよう。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「会社員の人ですよね？[r]ヒーローごっこやって大丈夫なんですか」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name mode="hide"]
昨今の悪いニュースの影響もあり、ヒーローごっこの[r]
世間的なイメージはあまりいいものじゃない。[pr]

私もそうだったけど、[r]
今でも喧嘩と同じだと思っている人も多いのだ。[pr]

会社によっては、禁止を明言されているところも[r]
あるらしい。[ls]兄ちゃんの会社は大丈夫らしいが。[pr]

[chara_img name="honoka" mode="face" me="normal"]
[chara_img name="ryman" mode="face" kuti="henya"]
[message_name name="サラリーマン" mode="show"]
「大丈夫だよ。僕みたいな末端の社員なんか、[r]
一々どんな趣味を持ってるかなんて調べられないから」[pr]

[message_name name="主人公"]
「そういうものなんですか」[pr]

[chara_img name="ryman" mode="face" kuti="normal"]
[message_name name="サラリーマン"]
「うちではね。もっと人道的な会社なら、[r]
ちゃんと管理してるだろうけど」[pr]

[chara_img name="ryman" mode="face" kuti="henya"]
「とにかく、こうやって体動かしてなきゃ[r]
やってらんないしさ。むしろ心の健康が保たれる[r]
ってもんだよ」[pr]

[message_name mode="hide"]
そう言って、彼はやつれた表情でへらりと笑った。[ls][r]
全身からくたびれた様子が伺える。[r]
余程過酷な仕事なのだろうか。[pr]

[message_name name="サラリーマン" mode="show"]
「おっと、ほんとに遅刻する。じゃあまた」[pr]

[message_name mode="hide"]
[chara_img mode="hide" name="ryman"]

落ちた鞄を拾い上げると、[r]
サラリーマンは駆け足で駅へと向かって行った。[pr]

[bgm mode="end"]

[jump target="*scene2"]
[s]
[_tb_end_tyrano_code]

*scene2

[tb_start_tyrano_code]

[eyecatch]
[image layer="base" storage="bg_school_step_a.jpg"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[chara_img name="honoka" mode="face" kuti="normal" badge="false"]
[eyecatch_off]

[bgm id="class_a" mode="play"]

[sceneTitle text="火曜日｜国立Ｓ学園・廊下"]
[message_day mode="show" day="火" text="国立Ｓ学園・廊下"]

[chara_img name="mob" cos="women" mode="show"]

[message mode="set"]

教室に向かう途中で、担任の先生に遭遇した。[pr]

[message_name name="担任" mode="show"]
「ああ、[浅利]さん。おはよう」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「おはようございます」[pr]

[message_name name="担任"]
「今日も早いわね。Ａクラスの担任として鼻が高いわ」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name mode="hide"]
ここ国立Ｓ学園は、授業成績に応じてクラス分けが[r]
されている。[ls]私が属しているＡクラスは最上位の[r]
クラスだ。[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="担任" mode="show"]
「ああ、本当に私なんかが担任でいいのかしら。[r]
あなたたちに教えられることなんて何もないし……」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「まあ……指揮を執る人はどんなチームにも[r]
必要だと思いますよ」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="担任"]
「そ、そうよね。優秀な子ばかりなのを喜ぶべきよね」[pr]

[message_name mode="hide"]
先生は少し安心したように笑った。[pr]

[message_name name="担任" mode="show"]
「あ、そうだ。ちょっと小耳に挟んだんだけど……[r]
Ｅクラスの生徒と一緒に下校しているって本当？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうですね。よく一緒に帰っています」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name mode="hide"]
桐生くんはＥクラスだから、彼のことで間違いない。[ls][r]
しかし誰に聞いたのだろう。[pr]

彼とは学校内で滅多に話すことがない。[ls][r]
ＡクラスとＥクラスはそもそも教室がある棟が違う。[r]
見掛けることすら稀なくらいだ。[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="担任" mode="show"]
「そ、そっか……Ｅクラスか……」[pr]

[message_name name="担任"]
「あのね……[r]
[浅利]さんも知ってると思うけど、[r]
Ｅクラスは無法地帯だから」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「無法地帯ですか」[pr]

[message_name mode="hide"]
Ｅクラスは成績評価における最下位のクラスだ。[ls][r]
不良が多いとは聞いていたが、そんなに目に見えて[r]
荒れているのだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="false"]
[message_name name="担任" mode="show"]
「喧嘩とか煙草とか……[r]
Ｅクラスはそういう子ばかりだから、[r]
先生たちも手を焼いているの」[pr]

[message_name name="担任"]
「[浅利]さんは真面目だから、[r]
悪い影響を受けたりはしないと思うけど……」[pr]

[message_name name="主人公"]
「はあ……」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name mode="hide"]
Ｅクラスは単に、学期末テストの点数が[r]
一定未満だった人の集まりだ。[ls][r]
別に全員が荒んでいるわけじゃないだろう。[pr]

Ａクラスだって同じように、[r]
ただテストの点数がよかっただけ。[ls][r]
中には危ない噂を持っている人だっている。[pr]

[chara_img name="honoka" mode="face" me="normal"]
素行と学力は比例するものじゃないはずなのに、[r]
この学校の先生たちは神話のように語る。[ls][r]
不思議だ。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「少なくとも、私の友達は大丈夫ですよ」[pr]

[message_name name="担任"]
「そうなの？」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「はい」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
私には先生たちが言う「真面目」や「不良」の線引きが[r]
分からない。[pr]

確かなのは、桐生くんはいいやつだということだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
具体性のある説明をしようとしたものの、[r]
咄嗟に言葉が見つからなかったのでやめた。[pr]

[message_name name="担任" mode="show"]
「もし危ないことがあったら、私や他の先生に[r]相談してね」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公"]
「……ありがとうございます」[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_rouka_a.jpg" method="fadeInLeft"]

[bgm id="nichijou_a" mode="play"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[message mode="show"]

[message_day mode="show" day="火" text="国立Ｓ学園・廊下"]

[message mode="set"]
教室に向かうまでの間、[r]
桐生くんのいいところについて考えていた。[pr]

もちろん桐生くんはいいやつだ。[ls][r]
ただ、改めて「どういうところが」と聞かれると、[r]
上手く言葉にならない。[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
桐生くんのいいところ。[r]
今考えてみて思い付くのは……[p]
[_tb_end_tyrano_code]

*select

[tb_start_tyrano_code]
[sceneTitle text="選択肢｜桐生くんのいいところは？"]

[nolog]
[current layer="message0"][er]
[nowait]
桐生くんのいいところ。[r]
今考えてみて思い付くのは……
[endnowait]
[endnolog]

; スキップ解除
[cancelskip]
[wait time="100"]

[select_set]
[select_btn id="select_num2_a" text="毛並みが綺麗" storage="mainStory02.ks" target="*select_root1"]
[select_btn id="select_num2_b" text="笑顔" storage="mainStory02.ks" target="*select_root2"]
[select_show]

[chara_img name="honoka" mode="face" me="sorashi"]
[s]


; ◆選択肢２－１｜毛並みが綺麗（犬度）
*select_root1
[select_hide title="毛並みが綺麗"]
[message_day mode="set" day="火" text="国立Ｓ学園・廊下"]
[message mode="set"]

[eval exp="f.root_dog += 1"]
[select_after_image mode="show" storage="../image/select_icon_d.png"]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
そういえば桐生くんは毛並みがとても綺麗だ。[ls][r]
きちんと栄養バランスの整った食事をしていて、[r]
丁寧なブラッシングがされていると見える。[pr]

きっと家庭環境が良いのだろう。[pr]

[select_after_image mode="hide"]

[jump target="*select_end"]
[s]


; ◆選択肢２－２｜笑顔（人間度）
*select_root2
[select_hide title="笑顔"]
[message_day mode="set" day="火" text="国立Ｓ学園・廊下"]
[message mode="set"]

[eval exp="f.root_people += 1"]
[select_after_image mode="show" storage="../image/select_icon_p.png"]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
桐生くんのことを考えると、笑顔ばかり浮かんでくる。[ls][r]
晴れやかで明るい、楽しそうな顔だ。[r]
だから一緒にいると私も楽しくなるのだろう。[pr]

桐生くんは太陽みたいな人だ。[pr]

[select_after_image mode="hide"]

[jump target="*select_end"]
[s]


; ◆合流
*select_end
[sceneTitle text="火曜日｜国立Ｓ学園・廊下"]

[chara_img name="honoka" mode="face" me="hannme" ase="true"]
いいところには違いないが、[r]
もう少し性格面に言及したいところだ。[pr]

[chara_img name="honoka" mode="face" me="normal" ase="false"]
だけどまあ、普段から意識していればいくらでも[r]
見つかるだろう。[ls]次にまた「いいやつだ」と思った時、[r]
もう少し深く考えてみることにしよう。[pr]

; 回想終了
[memory_end chapter="ch02-1"]


[bgm mode="end"]

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

[image layer="base" storage="bg_school_doar.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]
[eyecatch]
[image layer="base" storage="bg_school_doar.jpg"]
[message_day mode="hide" time="0"]
[eyecatch_off]
[endif]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="火曜日｜国立Ｓ学園・渡り廊下"]
[message_day mode="show" day="火" text="国立Ｓ学園・渡り廊下"]

[message mode="set"]

お昼休みになり、私はＥクラスに向かっていた。[ls][r]
無法地帯というのは本当なのだろうか。少し興味がある。[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
Ｃクラス以上の教室がある東棟は、別名“上位棟”。[ls][r]
Ｄクラス以下の教室がある西棟は、別名“下位棟”。[ls][r]
生徒の間では、便宜上そう呼ばれている。[pr]

その間を繋ぐ渡り廊下は、生徒が通ることは[r]
ほとんどない。[ls]関係者が通ることもそうないのだろう。[r]
その証拠に、ドアノブが酷くさび付いていた。[pr]

微かに動かせるものの、奥の方で固まっているのか[r]
途中で止まってしまう。[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公" mode="show"]
（もう少しなんだけどな）[pr]

[chara_img name="honoka" mode="face" me="sorashi_h"]
[message_name mode="hide"]
何度かぎしぎしとドアノブを鳴らしてから、[r]
どうしたものかと考える。[pr]

[chara_img name="honoka" mode="face" me="normal"]
考えて、まあいいか、と雑に判断した。[pr]

[chara_img name="honoka" mode="face"]
[message_name name="主人公" mode="show"]
「ふん」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]

[playseEx storage="kowasu.ogg"]

力任せに回してみれば、ドアノブはばきりと[r]
音を立てて呆気なく回り切った。[ls][r]
というか取れた。あるいは壊した。[pr]

私は人よりも力が強い。特に握力と腕力が強いそうだ。[ls][r]
体質的な問題で、先天的になっている人と[r]
後天的になる人がいる。私は後者だ。[pr]

力が付き始めたばかりの頃はうまくコントロール[r]
できなかったが、今はちゃんと扱えている。[ls][r]
だからヒーローごっこは楽しく遊べているのだ。[pr]

取れたドアノブを隅に置いて、[r]
私は下位棟に足を踏み入れた。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_rouka_e.jpg" method="fadeInLeft"]

[bgm id="ayashii" mode="play"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[message mode="show"]

[sceneTitle text="火曜日｜国立Ｓ学園・下位棟廊下"]
[message_day mode="show" day="火" text="国立Ｓ学園・下位棟廊下"]

[message mode="set"]
上位棟とはまるで空気が違う。別の学校に来たみたいだ。[pr]

なるほど確かに、無法地帯。[r]
床は抉れ壁は剥がれ、廃墟のようだ。[pr]

[message_name name="男子生徒Ａ" mode="show"]
「おい、あれって……」[pr]
[message_name name="男子生徒Ｂ"]
「Ａクラスの奴じゃん。何してんだ……？」[pr]

[message_name mode="hide"]
２－Ｅの教室を探し歩いていると、[r]
廊下に連鎖的に騒めきが広がって行く。[ls][r]
何してると言われても、歩いているだけだ。[pr]

この学校はクラスによってネクタイの色が違う。[ls][r]
普段見ない色が混じっていれば、[r]
確かに目立つのかもしれない。[pr]

ネクタイを外しておけばよかっただろうかと[r]
後悔していると、目の前に誰かが立ちふさがった。[pr]

[chara_img name="mob" cos="bad2" mode="show"]

[message_name name="ヤンキーＡ" mode="show"]
「よお。[r]
上位棟のエリート様がオレ達の下位棟に何の用だ？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「わあ……」[pr]

[message_name mode="hide"]
絡まれる、という言葉はまさにこんな時のために[r]
あるのだろう。[pr]

ピアスにネックレスにブレスレット。[r]
昔の兄ちゃんを見ているようだ。[pr]

この人たちも、後で兄ちゃんのように[r]
「青かった」と恥じたりするのだろうか。[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="false"]
[message_name name="ヤンキーＡ" mode="show"]
「ここは優等生のいい子ちゃんが遊びに来るような[r]
とこじゃないぜ」[pr]

[message_name name="ヤンキーＢ"]
「先生に嫌われたくなかったら、[r]
大人しく教室に戻って教科書でも読んでるんだな」[pr]

[message_name mode="hide"]
威嚇したい年頃なのだろう。[r]
人には、誰彼構わず噛み付きたくなる時期が[r]
あるのかもしれない。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「そんなことより、２年Ｅクラスって[r]
どこにあるかご存知ですか？」[pr]

[message_name name="ヤンキーＡ"]
「あァ？　チッ……馬鹿にしやがって」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「ご存知ないなら通してくれませんか」[pr]

[message_name name="ヤンキーＢ"]
「こいつ、わかってないんじゃねえか？[r]
オレ達に盾突くとどうなるかをなァ……」[pr]

[chara_img name="honoka" mode="face" me="hannme" ase="true"]
[message_name mode="hide"]
ヤンキーＢがどこかからバットを取り出した。[ls][r]
どこで盾突いたと判断されたのだろう。[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
しかし、まいったな。ドアノブとは訳が違う。[ls][r]
ここで力業で押し切るのはただの喧嘩だ。[r]
喧嘩をする趣味はない。[pr]

[bgm mode="end"]
[still mode="start" num="2"]

[message_name name="桐生 ヤマト" mode="show"]
「何してるんだ？」[pr]

[bgm id="nichijou_d" mode="play"]
[message_name mode="hide"]
どうしたものかと悩んでいると、[r]
ヤンキーの後ろから見覚えのある赤が見えた。[pr]

[message_name name="ヤンキーＢ" mode="show"]
「き……桐生センパイッ！」[pr]

[message_name name="ヤンキーＡ"]
「聞いてくださいよ！　この女が……！」[pr]

[message_name name="桐生 ヤマト"]
「あれ、[浅利]だ。[r]
こんなところで何してるんだ？」[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_school_rouka_e.jpg"]

[chara_img name="mob" cos="bad2" mode="show" posi="right" wait="false"]
[chara_img name="yamato" mode="show" posi="left2" badge="true" wait="false"]
[chara_img type="heroine" name="honoka" kuti="hohoemu" mode="show"]

[message_name name="ヤンキーＡ" mode="show"]
「え……あッ！[r]
Ａクラスの[浅利]って、まさか……！」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「友達だよ。ほら、前話しただろ」[pr]

[message_name name="ヤンキーＡ"]
「じゃあこいつがッ、この人があの[浅利]先輩……？」[pr]

[message_name name="ヤンキーＢ"]
「大学生５人相手に１人で、[r]
無傷で勝ったって言う……？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[chara_img name="honoka" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name mode="hide"]
ヤンキーたちの表情がみるみるうちに青くなって行く。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「いや、あれは……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
確かに５人と戦ったことはあるが、あれはただの[r]
ヒーローごっこだ。[ls]１人ずつ順番に戦ったし、[r]
バッジを取ればこちらの勝ちになる。[pr]

[message_name name="ヤンキーＡ" mode="show"]
「す、すいませんでしたッ！」[pr]

[message_name name="ヤンキーＢ"]
「胴回し回転蹴りだけは……ッ！」[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name mode="hide"]
詳しいな。[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公" mode="show"]
「桐生くん、どんな説明の仕方したの？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「見たままのこと話しただけだよ。[r]
あの時の蹴りがすごかったとか、[r]
あの技がかっこよかったとか」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="warau"]
[message_name mode="hide"]
ヒーローごっこをよく知らない人が聞いたら、[r]
そりゃあ喧嘩のようなものだと思うだろう。[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu"]
喜んでもらえるのは嬉しいけど、[r]
誤解されて変な噂になるのはちょっと困る。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="normal"]
[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公" mode="show"]
「私、喧嘩はしないからね。[r]
普通の人相手に技使って殴りかかったりしないよ」[pr]

[message_name name="ヤンキーＡ"]
「おお……！　話に聞いてた通り、懐が広い……！」[pr]

[message_name name="ヤンキーＢ"]
「頭が良くて喧嘩も強いなんて、超カッケーっス！」[pr]

[message_name name="ヤンキーたち"]
「邪魔してスイマセンでしたっ！」[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name mode="hide"]
手のひら返しがすごい。[pr]

[chara_img name="mob" mode="hide"]
[chara_img name="yamato" mode="move" posi="center"]

こちらが何か言う前に、ヤンキー２人組は[r]
そそくさと去って行った。[pr]

[chara_img name="yamato" mode="face" mayu="komaru"]
[message_name name="桐生 ヤマト" mode="show"]
「ごめんな。悪いやつらじゃないんだけど……[r]
どうも上のクラスのやつが気に入らないみたいで」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「そうなんだ。彼らとはどういう知り合いなの？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「前、あいつらが他校のやつと喧嘩してるところに[r]
遭遇したんだ。どうも向こうから一方的に[r]
ふっかけられてたみたいだから、手を貸したんだよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「それ以来、なんか懐かれてる」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「ああ……」[pr]

[message_name mode="hide"]
私との出会い方と似たようなものだ。[r]
よくあることなんだろう。[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「[浅利]はなんでこっちにいるんだ？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「桐生くんのいるクラスって[r]
どんな感じなのかなと思って」[pr]

[chara_img name="honoka" mode="face" me="sorashi" ase="true"]
[message_name mode="hide"]
まあ、下位棟の雰囲気は何となくわかったが。[pr]

[chara_img name="honoka" mode="face" me="normal" ase"false"]
[chara_img name="yamato" mode="face" mayu="kiri" me="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「おー、そっか！　じゃあ案内するよ！」[pr]

[message_name mode="hide"]
妙に張り切る桐生くんに腕を引かれ、[r]
Ｅクラスに案内された。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_class_e.jpg" method="fadeInLeft"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" posi="left2" wait="false" badge="true"]
[chara_img name="ririna" mode="show" posi="center" wait="false"]
[chara_img name="tatsumi" mode="show" posi="right2" wait="false"]
[message mode="show"]

[sceneTitle text="火曜日｜国立Ｓ学園・Ｅクラス教室"]
[message_day mode="show" day="火" text="国立Ｓ学園・Ｅクラス教室"]

[message mode="set"]

[message_name name="女子生徒" mode="show"]
「あ、お帰り……
[chara_img name="ririna" mode="face" kuti="hiraku"]
って、誰それ？」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「[浅利]だ」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="男子生徒"]
「ああ、横蹴りだけで５連勝したって言う」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
知らないところで私の情報が流れていて怖い。[ls][r]
しかも結構話が盛られていて怖い。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="false"]
[chara_img name="ririna" mode="face" me="warau" kuti="warau"]
[message_name name="女子生徒" mode="show"]
「あはは。とうとう拉致ってきたってわけ？」[pr]

[chara_img name="yamato" mode="face" me="normal"]
[message_name name="桐生 ヤマト"]
「いや。遊びに来たんだって」[pr]

[chara_img name="ririna" mode="face" me="normal" kuti="normal"]
[message_name name="女子生徒"]
「へー。あたしは里井りり奈。よろしくね」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="男子生徒"]
「俺は須賀たつみ。よろしく」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「[浅利][ほのか]です。よろしくね」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" ase="true"]
[message_name mode="hide"]
よろしくとは言いつつ、名前を覚えられる自信がない。[ls][r]
人の顔と名前を覚えるのは苦手なのだ。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="false"]
[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ" mode="show"]
「なあ。Ａクラス、ってか上位棟って[r]
どんな感じなんだ？　１回行ってみたいんだけど、[r]
絶対騒がれるだろ」[pr]

[chara_img name="ririna" mode="face" me="warau" mayu="komaru" kuti="warau"]
[message_name name="里井 りり奈"]
「あー、それあるわ。猛獣扱いみたいな？[r]
絶対ハズいよねー」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
今まさに私もそんな扱いを受けてきたところだ。[pr]

反対に彼らが上位棟に入ったとしたら、[r]
「何か騒ぎを起こすかも」なんて[r]
先生に通報されるかもしれない。[pr]

[chara_img name="ririna" mode="face" me="normal" mayu="normal" kuti="normal"]
[chara_img name="honoka" mode="face" me="sorashi" kuti="normal" ase="false"]
[message_name name="主人公" mode="show"]
「全然違う学校みたいだよ。[r]
静かだし、まさに進学校って感じ。[r]
こっちと比べるとつまんないところだと思うよ」[pr]

[chara_img name="tatsumi" mode="face" kuti="warau"]
[message_name name="須賀 たつみ"]
「へー。こっちの方が面白そうに見えんのか」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「うん。賑やかで楽しそう」[pr]

[chara_img name="ririna" mode="face" me="warau" kuti="warau"]
[message_name name="里井 りり奈"]
「あはは、確かに賑やかではある」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
下位棟は確かに荒れているしヤンキーも多そうだが、[r]
本当に害のある不良なんてその一部に過ぎないだろう。[pr]

校則違反という観点ではこの２人も大概だが、[r]
それだけなら可愛いものだ。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="toziru" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「どうだ。これが[浅利]だ」[pr]

[chara_img name="tatsumi" mode="face" me="hannme" kuti="normal"]
[message_name name="須賀 たつみ"]
「なんで桐生が威張んだよ」[pr]

[chara_img name="ririna" mode="face" me="normal" kuti="normal"]
[message_name name="里井 りり奈"]
「桐生、普段からケッコーあんたのこと話してんだよ。[r]
だから１回会ってみたいとは思ってたんだよね～」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「そ、そうなんだ……[r]
武勇伝的な話はかなり脚色されてそうだから、[r]
あんまり真に受けないでね」[pr]

[chara_img name="tatsumi" mode="face" me="normal"]
[message_name name="須賀 たつみ"]
「じゃあ、横蹴りだけで５連勝したって話も？」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="true"]
[message_name name="主人公"]
「間合いを作るために蹴りを入れることはあるけど、[r]
相手を蹴り倒してるわけじゃないよ」[pr]

[chara_img name="tatsumi" mode="face" me="hannme"]
[message_name name="須賀 たつみ"]
「だよな。桐生の表現ってなんか喧嘩臭いんだよ」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="normal"]
[message_name name="桐生 ヤマト"]
「確かにまあ、多少大袈裟に話すこともあるけど、[r]
[浅利]がすごいことは確かだからな」[pr]

[chara_img name="ririna" mode="face" kuti="warau" me="hannme"]
[message_name name="里井 りり奈"]
「はいはい」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" me="sorashi"]
[message_name mode="hide"]
２人は聞き飽きた様子で受け流している。[ls][r]
ひょっとして、いつもそんな風に私のことを[r]
話しているのだろうか。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h"]
嬉しくもあり、恥ずかしくもあり。[pr]

[bgm mode="end"]
[wait_skip time="500"]
[playseEx storage="chime.ogg"]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[chara_img name="tatsumi" mode="face" me="normal"]
[chara_img name="ririna" mode="face" kuti="hiraku" me="normal"]
[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="false"]
楽しく話していると、予鈴が鳴った。[pr]

[stopseEx mode="fadeout"]
[bgm id="nichijou_d" mode="play"]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「あ、そろそろ戻らないと」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「またいつでも遊びに来いよ」[pr]

[chara_img name="ririna" mode="face" mayu="komaru" kuti="warau"]
[message_name name="里井 りり奈"]
「もっと話したかったなー」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「また来るね」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hohoemu"]
[message_name mode="hide"]
私ももう少し話してみたいと思った。[r]
また今度遊びに来ることにしよう。[pr]

; 回想終了
[memory_end chapter="ch02-2"]

[bgm mode="end"]


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

[image layer="base" storage="bg_ramen.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0" badge="true"]
[chara_img name="yamato" mode="show" time="0" badge="true"]

[message mode="show" time="0"]
[mask_off]

; 通常
[else]
[eyecatch]
[image layer="base" storage="bg_ramen.jpg"]
[message_day mode="hide" time="0"]
[chara_img mode="hide_all" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[chara_img name="yamato" mode="show" time="0" badge="true"]
[message mode="show" time="0"]
[eyecatch_off]
[endif]

[bgm id="nichijou_a" mode="play"]

[sceneTitle text="火曜日｜ラーメン屋"]
[message_day mode="show" day="火" text="ラーメン屋"]

[message mode="set"]

放課後。[pr]

悪バッジ30個と引き換たラーメン無料券を手に、[r]
桐生くんとラーメン屋に来ていた。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="warau" ase="true"]
[message_name name="主人公" mode="show"]
「ど、どれにする？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" kuti="warau"]
[message_name name="桐生 ヤマト"]
「１杯無料だもんな……[r]
こっちの高いやつにして、半分こするか？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau" ase="false"]
[message_name name="主人公"]
「そうしよう」[pr]

[message_name mode="hide"]
このお店自慢の、１杯2000円のトッピング盛り盛り[r]
スペシャルしょうゆラーメンを注文した。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_ramen.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false" badge="true"]
[chara_img name="yamato" mode="show" wait="false" badge="true"]
[message mode="show"]

[message_day mode="show" day="火" text="ラーメン屋"]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「へえ、それで下位棟に来てたのか」[pr]

[message_name mode="hide"]
ラーメンを待っている間、今朝担任の先生に[r]
言われたことをかいつまんで話した。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「やんちゃな子が多そうな感じだったね」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「確かに無法地帯かもしれないな。[r]
校則なんて誰も守らないし……」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「あのね……よく言われるんだけど、[r]
私ってそんなに真面目に見える？」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「ん？　見た目の話なら、真面目に見えるよ。[r]
大人しそうだし、何よりＡクラスの制服だしな」[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name name="主人公"]
「制服かー……」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公"]
「自分では真面目じゃないって思ってるんだけどね」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「真面目って言われるの、嫌なのか？」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「嫌ってわけじゃないけど……[r]
真面目って言うのは、もっとさ」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公"]
「授業を真剣に聞いたり、先生に質問したり、[r]
予習と復習をしたり……そういう、ちゃんとしてる人の[r]
ことを言うべきなんじゃないかな」[pr]

[chara_img name="honoka" mode="face" me="normal" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公"]
「私はただ、テストの点数がいいだけだよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" mode="face" me="sorashi"]
[message_name name="桐生 ヤマト"]
「……俺は、学校での[浅利]のことは[r]
よく知らないけどさ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「[浅利]には真面目なところもあるし、[r]
そうじゃないところもあると思ってるよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「真面目なところって、例えば？」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生 ヤマト"]
「ハンカチ持ち歩いてるところ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="true"]
[message_name mode="hide"]
それは真面目の分類に入るのだろうか。[pr]

[chara_img name="honoka" mode="face" ase="false"]
[message_name name="主人公" mode="show"]
「じゃあ、真面目じゃないところは？」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「うーん、そうだな……」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「あ。この前自販機でおつりが出ない時、[r]
自販機を殴ってたところ」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="主人公"]
「あれは、詰まってるのかなと思って……」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="normal"]
[message_name name="桐生 ヤマト"]
「一撃でへこんでたよな、自販機。おもしろかったなー」[pr]

[chara_img name="honoka" mode="face" me="normal" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公"]
「面白がっていいところじゃないと思うよ」[pr]

[chara_img name="yamato" mode="face" me="normal"]
[message_name name="桐生 ヤマト"]
「周りのことはあんまり気にしないで、[r]
[浅利]は[浅利]の好きなようにしてて[r]
いいと思うぞ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「そっか……ありがと、桐生くん」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]

真面目と言われる度に、心のどこかで[r]
否定しなければいけないような心地になっていた。[pr]

だからだろうか。[r]
今のままでいいと後押しされたようで、[r]
不思議と心が落ち着いた。[pr]

そこまで深刻に悩んでいたつもりはなかったのだが、[r]
思っていたよりも気にしていたのかもしれない。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
やっぱり桐生くんはいいやつだ。[r]
話をちゃんと聞いてくれて、[r]
優しい言葉を見つけられるところが。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name name="大将" mode="show"]
「へいお待ち！」[pr]

[chara_img name="honoka" mode="face" kuti="warau" tere="true"]
[message_name mode="hide"]
不意に、前方から大きめの丼が降りて来た。[ls][r]
ものすごいボリュームだ。これが2000円のラーメン。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru" kuti="warau" tere="true"]
[message_name name="桐生 ヤマト" mode="show"]
「はあ……いい匂いだなぁ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="toziru"]
[message_name name="主人公"]
「だねー」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="toziru" tere="false"]
[message_name name="桐生 ヤマト"]
「ラーメンの香水とかあればいのにな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「香水？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal"]
[message_name name="桐生 ヤマト"]
「姉ちゃんがよく香水を使ってるんだけど、[r]
最近妹が興味持ち始めてさ……[r]
家がもう色んな匂いがして気持ち悪くなるんだ」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そうなんだ……３人兄弟なの？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="toziru"]
[message_name name="桐生 ヤマト"]
「いや、５人だよ。下にもう２人妹がいる」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「え、すごいね。賑やかで楽しそう」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi_h" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「下２人は可愛いんだけどなぁ……[r]
小学校のうちだけだろうなぁ……」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true"]
[message_name mode="hide"]
なんだか遠い目をし始めてしまった。[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="主人公" mode="show"]
「ラーメン食べよっか」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト"]
「ああ、そうだな。伸びる前に食べよう」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
そうして、２人でラーメンを食べ始める。[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]

[chara_img name="mob" cos="men" mode="show" posi="left" wait="false"]
[chara_img name="yamato" mode="move" posi="right"]
ふと、桐生くんが隣の客へと目を向けた。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
隣の客も桐生くんを見る。[ls][r]
この視線の合い方はきっと。[pr]

[message_name name="男性" mode="show"]
「出たな、善役！」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「出たな、悪役！」[pr]

[message_name name="男性"]
「ここで会ったが百年目。[r]
お互いラーメンを美味しくいただいた後に[r]
空き地に集合だ！」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生 ヤマト"]
「望むところだ！」[pr]

[message_name mode="hide"]
善役も悪役も、ラーメンへの敬意は等しく同じなのだ。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_hiroba.jpg" method="fadeInLeft"]

[chara_img name="mob" cos="men" mode="show" posi="left" wait="false"]
[chara_img name="yamato_dog" mode="show" posi="right" wait="false" badge="true"]
[chara_img type="heroine" name="honoka" mode="show" wait="false" badge="true"]
[message mode="show"]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="火曜日｜広場"]
[message_day mode="show" day="火" text="広場"]

雨はすっかり上がっていたが、[r]
地面が少しぬかるんでいる。[pr]

最悪のコンディションだなと思っていたら、[r]
今回は桐生くんが戦うことになった。[pr]

[message_name name="男性" mode="show"]
「覚えてろよー！」[pr]

[message_name mode="hide"]

[chara_img name="mob" mode="hide"]
[chara_img name="yamato_dog" mode="move" posi="center"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
桐生くんは悪バッジを手に入れた。[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="toziru" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「順調だな～。この分だと今年は善役優勢かな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公"]
「お疲れ。ちょっと汚れちゃったね」[pr]

[chara_img name="yamato_dog" mode="face" me="normal" mayu="normal"]
[message_name name="桐生 ヤマト"]
「ん？　ああ、大丈夫だよ。[r]
こういう時のために常にジャージを着てるんだ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
[message_name name="主人公"]
「なるほど」[pr]

[message_name mode="hide"]
確かに合理的だ。頭がいい。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hart" kuti="warau" tere="true"]
機嫌が良いのか忘れているのか、[r]
桐生くんはまだ獣化したままでいる。[pr]

いつもはすぐに獣化を解いてしまうから、[r]
こうしてじっくり見ることができるのは貴重だ。[pr]

; ミニスチル　ずいと顔をよせるほのかと、複雑な顔のヤマト

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="hannme" kuti="toziru" ase="true" ]
よく見ると人間の姿の時よりも質量が増えているらしく、[r]
ジャージが膨らんでいた。やわらかそうだ。[pr]

触りたいと言うと、気分を害してしまうかもしれない。[ls][r]
こっそり見て楽しませてもらうだけにしよう。[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" tere="true"]
[message_name name="桐生 ヤマト" mode="show"]
「…………」[pr]

; スチル終わり

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="warau" tere="false"]
[message_name name="主人公"]
「あ、そうだ。今朝ひとつバッジ手に入れたよ」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" me="normal" kuti="warau" ase="false" tere="false"]
[message_name name="桐生 ヤマト"]
「おー、[浅利]も順調だな」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「戦績の中間発表、そろそろだっけ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「そうだな。次の日曜日だったはずだ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「もう今週末か……今回は善役が優勢だといいね」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「そうだな」[pr]

[message_name mode="hide"]
戦績は、善役・悪役がそれぞれ集めたバッジの[r]
総数で決まる。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="normal" kuti="hohoemu"]
ここのところ、悪役の優勢が続いていると聞く。[ls][r]
しかし不利な状況の方が燃えるのは、[r]
私の昔からの性分だ。腕が鳴る。[pr]

[chara_img name="yamato_dog" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「中間発表までに、できるだけ多くバッジ集めに[r]
行かないとな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「うん。一緒に頑張ろうね」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name mode="hide" wait="false"]
[chara_img name="yamato_dog" mode="hide"]
[chara_img name="yamato" mode="show" me="sorashi_h" kuti="toziru" ase="true" badge="true"]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
桐生くんは少し黙り込んだ後、変身を解いた。[pr]

[chara_img name="yamato" mode="face" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「[浅利]はさ……あー……」[pr]

[message_name mode="hide"]
言葉を選んでいるのか、少し言い辛そうにしている。[ls][r]
そう言えば、昨日も何かを言いかけていた。[r]
その話の続きだろうか。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「もし……俺が柴犬じゃなかったら、どう思う？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" ase="true"]
[message_name name="桐生 ヤマト"]
「いや、俺はどちらかと言うと人間なんだけど。[r]
そういう意味じゃなくて」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「まだまとまってないんだね？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru"]
[message_name name="桐生 ヤマト"]
「なんて聞けばいいのかわからない……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal"]
[message_name mode="hide"]
一体何が聞きたいのだろうか。[pr]

[chara_img name="honoka" mode="face" me="sorashi" ase="false"]
[message_name name="主人公" mode="show"]
「うーん……[r]
“ポメラニアンだったらどう思う？”って解釈でいい？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru" ase="false"]
[message_name name="桐生 ヤマト"]
「じゃあ、それで」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「可愛いだろうなと思うけど」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「ううーん……」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
求めていたものと違ったのだろうか。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト" mode="show"]
「[浅利]は柴犬以外の犬も好きなんだな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「犬が好きで、その中でも特に好きなのが柴犬って感じ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「じゃあ……もし俺が犬じゃなかったら？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「いや、俺は犬じゃない」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「半獣じゃなかったらってこと？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト"]
「そう。半獣じゃなかったらどう思う？」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「桐生くんが半獣じゃなかったら……」[p]

[_tb_end_tyrano_code]

*select2

[tb_start_tyrano_code]
[sceneTitle text="選択肢｜桐生くんが半獣じゃなかったら"]

[nolog]
[current layer="message0"][er]
[nowait]
「桐生くんが半獣じゃなかったら……」
[endnowait]
[endnolog]

; スキップ解除
[cancelskip]
[wait time="100"]

[select_set]
[select_btn id="select_num3_b" text="想像できない" storage="mainStory02.ks" target="*select2_root2"]
[select_btn id="select_num3_a" text="ちょっと残念" storage="mainStory02.ks" target="*select2_root1"]
[select_show]

[chara_img name="honoka" mode="face" me="sorashi"]
[s]


; ◆選択肢３－１｜ちょっと残念（犬度）
*select2_root1
[select_hide title="ちょっと残念"]
[message_day mode="set" day="火" text="広場"]
[message mode="set"]

[eval exp="f.root_dog += 1"]
[select_after_image mode="show" storage="../image/select_icon_d.png"]
[wait time="10"]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「私は……ちょっと残念って思っちゃうかな」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi_h" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「やっぱり……」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hiraku"]
[message_name name="主人公"]
「毛ヅヤがいいし、体格がよくて顔立ちもかっこいいし、[r]
会えないなんて勿体ない……」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" tere="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「……ダメだ。喜び切れない……」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「普通の時に言ってくれれば……いや、ダメだよなぁ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="normal" ase="true"]
[message_name mode="hide"]
なにやらぼそぼそと呟いているが、よく聞き取れない。[pr]

[chara_img name="honoka" mode="face" ase="false"]
[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru" ase="false" tere="false"]
桐生くんはひとしきり頭を抱えたあと、[r]
一区切りついたように顔を上げた。[pr]

[select_after_image mode="hide"]

[jump target="*select2_end"]
[s]


; ◆選択肢３－２｜想像できない（人間度）
*select2_root2
[select_hide title="想像できない"]
[message_day mode="set" day="火" text="広場"]
[message mode="set"]

[eval exp="f.root_people += 1"]
[select_after_image mode="show" storage="../image/select_icon_p.png"]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name name="主人公" mode="show"]
「それは……うーん、どうなんだろう」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="hannme" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「そんなに残念なのか」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公"]
「そうじゃなくて……なんかうまく想像できないの」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「もし半獣じゃなかったとして……[r]
今と同じ桐生くんになってるのかな」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「え？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal"]
[message_name name="主人公"]
「柴犬に変化できることで経験してきたことって、[r]
色々あるんじゃない？」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name name="主人公"]
「それがなくなると、その分価値観や考え方にも[r]
影響が出ると思う」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「なるほど……」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「もし気弱で声が小さくて勉強好きになってたら、[r]
出会ってなかったかもしれないし」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「それは……確かに想像できないな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「それを思うと、私は今の桐生くんと出会えて[r]
よかったって思ってるよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="warau" ase="false" tere="true"]
[message_name name="桐生 ヤマト"]
「そ、そうか……？[r]
それはなんていうか、俺もよかった」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
桐生くんは少し満足気に笑った。[pr]

[select_after_image mode="hide"]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false" tere="false"]
[jump target="*select2_end"]
[s]


; ◆合流
*select2_end
[sceneTitle text="火曜日｜広場"]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「それにしても、急にどうしたの？」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……[浅利]ってさ。[r]
俺が犬に変化した時嬉しそうだろ」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「うん」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「あ、ごめん、ひょっとしてそれも嫌だった……？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="toziru" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「それはまあ、どっちかと言えば嬉しい方なんだけど」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" ase="false"]
[message_name mode="hide"]
嬉しいのか。それはよかった。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「それはそれとして、[r]
だからこそ気になったというか……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「うん……？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「まあ、いい。ひとまず話が聞けてよかった」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
よくわからないが、桐生くんは一段落したような表情で[r]
頷いていた。[pr]

; 回想終了
[memory_end chapter="ch02-3"]


[bgm mode="end"]

[window_all_hide]
[wait_skip]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[jump storage="mainStory03.ks"]

[_tb_end_tyrano_code]

