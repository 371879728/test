[_tb_system_call  storage="system/_mainStoryRootB02.ks"  ]
*start
[tb_start_tyrano_code  ]

[showmenubutton]

[_tb_end_tyrano_code  ]
*scene1
[tb_start_tyrano_code  ]
[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_asari_honoka.jpg"]
[chara_img mode="show" type="heroine" cos="pajama" kuti="hohoemu" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

[else]

[weekCutIn title="金曜日" text="Tuesday"]
[chara_img type="heroine" name="honoka" cos="pajama" kuti="hohoemu" mode="show" time="0"]
[image layer="base" storage="bg_asari_honoka.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[sceneTitle text="金曜日｜自宅・自室"]
[message_day mode="show" day="金" text="自宅・自室"]

[bgm id="nichijou_a" mode="play"]

翌朝。[ls][r]
相変わらず電気はつかないが、日差しのおかげで[r]
夜よりは明るい。日中は問題なさそうだ。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_asari_living.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜自宅・リビング"]
[message_day mode="show" day="金" text="自宅・リビング"]

[message mode="set"]
リビングに行くと、桐生くんはまだ夢の中だった。[r]
慣れない場所で眠り辛かったりしただろうか。[pr]

起こすのは忍びないので、[r]
先にご飯の支度をすることにした。[pr]

冷蔵庫を開けると、電気は切れているものの[r]
まだ冷たさが残っていた。[ls][r]
中のものは早めに処理した方がいいだろう。[pr]

[chara_img name="yamato" cos="oroshi" mayu="odoroki" me="toziru" kuti="okoru" mode="show" badge="true"]
ご飯をリビングに持って行くと、[r]
桐生くんが起き上がっていた。[ls][r]
大きなあくびを零しながら、こちらに目を向ける。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="hannme" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「んー……おはよう……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「おはよ。朝ご飯カレーで大丈夫？」[pr]

[chara_img name="yamato" mode="face" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「……朝から重くないか？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「そうかな？　朝しっかり食べないと[r]
お昼にお腹すいちゃうよ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="warau" ase="false"]
[message_name name="桐生 ヤマト"]
「たしかに」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
まだ眠いのか、桐生くんはふにゃりと[r]
力が抜けたように笑った。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_asari_mae.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" lost="true"]
[chara_img name="yamato" mode="show" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="金曜日｜自宅前"]
[message_day mode="show" day="金" text="自宅前"]

[bgm id="nichijou_b" mode="play"]

[message mode="set"]
支度を済ませて、隣町に向かうことにした。[ls][r]
もう一度ドッグタグを確認すると、[r]
隣町の４丁目であることまでは読み取れる。[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「バスで行った方が早そうだな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうなの？　詳しいね」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「友達の家がその辺にあるんだ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「そうなんだ。私、隣町まで行ったことないや」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「何もないところだからなー」[pr]

[message_name mode="hide"]
他愛もない話をしながら、バスで隣町へと向かった。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg"]
[wait_skip]
[bgimg storage="bg_inaka_machi01.jpg" method="fadeInLeft"]
[chara_img type="heroine" cos="shihuku" name="honoka" kuti="hohoemu" mode="show" wait="false" lost="true"]
[chara_img name="yamato" mode="show" wait="false" badge="true"]
[message mode="show"]

[sceneTitle text="金曜日｜隣町"]
[message_day mode="show" day="金" text="隣町"]

[message mode="set"]
モモの足取りが生き生きとしている気がする。[ls][r]
知っている道に出たのだろうか。[pr]

安心していると、前方から中学生くらいの女の子が[r]
走って来ているのが見えた。[pr]

[chara_img name="mob" cos="girl" posi="right" mode="show" wait="false"]
[chara_img name="yamato" mode="move" posi="left"]

[message_name name="女の子" mode="show"]
「そのバッジ、ヒーローごっこですね！？[r]
善役だ！　やっと出会った！」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" kuti="warau"]
[message_name name="桐生 ヤマト"]
「お、さては最近始めたな？」[pr]

[message_name name="女の子"]
「そうです！　お兄さんたち、この辺の人じゃ[r]
ないですよね？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「ああ。隣町から来たんだ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「この辺りって、ヒーローごっこやってる人[r]
あんまりいないの？」[pr]

[message_name name="女の子"]
「田舎ですからねー。[r]
隣町っていうと、あの不良が多い町ですかね？」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「う、うん。まあそうだな」[pr]

[message_name name="女の子"]
「やっぱり、不良の多いところで流行る遊び[r]
なんですかねー」[pr]

[message_name name="女の子"]
「って、そんなことより！　手合わせ願います！」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「応じてやりたいのは山々なんだけど……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
桐生くんはモモを気にしているようだ。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「じゃあ、私が先に行って飼い主探ししとくよ。[r]
あとで合流しよう」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「わかった。[r]
この道をまっすぐ行くと商店街があるから、[r]
その辺りを探しててくれるか？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「うん、わかった」[pr]

[message_name name="女の子"]
「よろしくお願いします！」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「おっと、その前に……」[pr]

[chara_img name="yamato" mode="hide"]
[chara_img name="yamato_battle" mode="show" left="80"]

[message_name name="桐生 ヤマト"]
「“出たな、悪役！”」[pr]

[message_name name="女の子"]
「あ……“出たな、善役！”」[pr]

[message_name mode="hide"]
ヒーローごっこの決まり文句だ。[r]
これがないとヒーローごっこは始まらない。[pr]

[chara_img name="honoka" mode="face" me="warau"]
私がヒーローごっこを始めたばかりの頃を思い出して、[r]
少し懐かしい気分になった。[pr]

この町にもヒーローごっこが正しく楽しく[r]
広まってくれるといいのだが。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_inaka_machi02.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜隣町・住宅街"]
[message_day mode="show" day="金" text="隣町・住宅街"]

[message mode="set"]
[message_name name="モモ" mode="show"]
「わん！」[pr]

[chara_img name="honoka" mode="face" ase="true"]
[message_name mode="hide"]
桐生くんと別れてから程なくして、[r]
モモが突然駆け出した。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「あ、ま、待って！」[pr]

[message_name mode="hide"]
知っている道だから喜んでいるだけならいいのだが、[r]
はぐれる訳には行かない。[pr]

モモを見失わないようにその背を追った。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_inaka_machi03.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜隣町・住宅街"]
[message_day mode="show" day="金" text="隣町・住宅街"]

[message mode="set"]
結構な距離を走ったように思う。[r]
こんなに長く走ったのは久しぶりだ。[ls][r]
モモが立ち止まったので、慌てて急ブレーキを踏む。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「はあ……はあ……どうしたの？」[pr]

[message_name mode="hide"]
くんくんと地面の匂いを嗅いでいる。[ls][r]
辺りを見渡すと、少し先に小さな男の子と[r]
男性の姿が見えた。[pr]

[chara_img name="mob2" cos="boy" posi="left" mode="show" wait="false"]
[chara_img name="mob" cos="men" posi="right" mode="show"]

[message_name name="男の子" mode="show"]
「モモ！！」[pr]
[message_name name="モモ"]
「わん！」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="false"]
[message_name mode="hide"]
男の子はモモを見るや否や、駆け寄って来る。[ls][r]
どうやら飼い主で間違いないようだ。[pr]

[eyecatch]
[message_name mode="hide" time="0"]
[chara_img mode="hide_all" time="0"]
[message_day mode="hide" time="0"]

[chara_img name="mob2" cos="boy" posi="left" mode="show" wait="false" time="0"]
[chara_img name="mob" cos="men" posi="right" mode="show" wait="false" time="0"]
[chara_img type="heroine" name="honoka" cos="shihuku" kuti="hohoemu" mode="show" time="0" lost="true"]
[eyecatch_off]

[sceneTitle text="金曜日｜隣町・住宅街"]
[message_day mode="show" day="金" text="隣町・住宅街"]

[message mode="set"]

[message_name name="男性" mode="show"]
「本当になんとお礼を言えばいいのか……」[pr]

[message_name name="主人公"]
「いえ、気にしないでください」[pr]

[message_name mode="hide"]
親子は朝からずっと探し回っていたらしい。[ls][r]
隣町で保護したこと、怪我はないことなどを伝えると、[r]
父親らしい男性は深々と頭を下げた。[pr]

モモは男の子と出会えたことが余程嬉しいのか、[r]
千切れんばかりに尻尾を振っている。[ls][r]
男の子も嬉しそうだ。[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公" mode="show"]
「会えてよかったね」[pr]
[message_name name="モモ"]
「わん！」[pr]
[message_name name="男の子"]
「おねーちゃん、ありがとー！」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「そうだ。ドッグタグが半分読めなくなっていたので、[r]
そろそろ交換された方がいいですよ」[pr]

[message_name name="男性"]
「そうでしたか……！[r]
本当に何から何まで、ありがとうございます」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]

[chara_img name="mob2" mode="hide" wait="false"]
[chara_img name="mob" mode="hide"]

男性は何度も頭を下げ、[r]
男の子とモモを連れて家に帰って行った。[pr]

[chara_img name="honoka" mode="face" me="warau"]
モモと男の子は駆けまわったりじゃれ合ったり、[r]
姿が見えなくなるまで楽しそうにしていた。[pr]
とても仲が良いのだろう。届けられて本当によかった。[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公" mode="show"]
（私も桐生くんのところに戻ろう）[pr]

[bgm mode="end"]

[message_name mode="hide"]
来た道を戻ろうと振り返る。[ls][r]

[chara_img name="honoka" mode="face" ase="true"]
そこには知らない道が広がっているばかりだった。[pr]

[bgm id="manuke" mode="play"]

[chara_img name="honoka" mode="face" mayu="kiri" me="sorashi" kuti="normal"]
モモを追いかけているうちに何度か曲がったように思う。[ls][r]
つまるところ、来た道がわからない。迷子だ。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal"]
[message_name name="主人公" mode="show"]（連絡……）[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name mode="hide"]
桐生くんに連絡しようとスマホを取り出したものの、[r]
電池が切れているのか電源が入らなかった。[ls][r]
停電のおかげで、昨日は充電ができなかったのだ。[pr]

とりあえず、覚えている範囲で[r]
来た道を引き返してみることにした。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_inaka_machi02.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜隣町・どこか"]
[message_day mode="show" day="金" text="隣町・どこか"]

[message mode="set"]
道の途中で、町の掲示板を見つけた。[ls][r]
「バス停の位置が変わりました」という案内と、[r]
簡単な地図が書いてある。[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="false"]
運がよかった。[ls][r]
バス停があるなら、バスに乗ってさっきのバス停に[r]
戻れるだろう。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_inaka_machi04.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[message mode="show"]

[sceneTitle text="金曜日｜隣町・どこか"]
[message_day mode="show" day="金" text="隣町・どこか"]

[message mode="set"]
地図を覚えて、バス停を目指して歩く。[pr]

周りの景色がどんどん山に向かっている気がする。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
（ま、まあ、もう少しでバス停が見えるはず……）[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="normal"]
こんなにも本格的な迷子は初めてだ。[ls][r]
子供の頃、商店街で兄ちゃんとはぐれたことは[r]
何度かあったが。[pr]

あの時は兄ちゃんが見つけてくれた。[ls][r]
困ったことがあった時、助けてくれるのはいつも[r]
兄ちゃんだった。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="normal"]
ともかく、今は自分にできることをしよう。[ls][r]
地図を頼りにバス停を目指すしかない。[pr]

[bgm mode="end"]


[memory_end chapter="root-D02-1"]

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

[image layer="base" storage="bg_bus.jpg"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" time="0" lost="true"]
[message mode="show" time="0"]
[mask_off]

[else]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_bus.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[message mode="show"]
[endif]

[sceneTitle text="金曜日｜バス停"]
[message_day mode="show" day="金" text="バス停"]

[message mode="set"]
[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]（あった……！）[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
程なくして、屋根の付いた停留所に辿り着いた。[ls][r]
移設に伴って新しくされたのか、ここだけ都会的な[r]
雰囲気を感じる。[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="false"]
時刻表に目を向ける。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="hohoemu" ase="true"]
[message_name name="主人公" mode="show"]（……２時間に１本か）[pr]

[message_name mode="hide"]
国立Ｓ学園は国が管理しているから[r]
近辺も整備されているが、元々この地域は田舎寄りだ。[ls][r]
この町は更に田舎なのだろう。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="false"]
まあ、バスが来るとわかっているだけマシだ。[ls][r]
私はバス停のベンチに腰を下ろした。[pr]

[bgm id="memory" mode="play"]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="normal"]
[message_name name="主人公" mode="show"]（……桐生くん、私のこと探してるかな）[pr]

[message_name mode="hide"]
商店街の辺りを探す、と言って別れたものの、[r]
結局モモを追いかけて別の方向に行ってしまった。[ls][r]
それを見つけ出せる確率は限りなく低いだろう。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
そもそも、私が迷子になっていると知る由もない。[ls][r]
ひょっとしたら今頃、他にもヒーローごっこを[r]
している人を見つけているかもしれない。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
（でも……探してくれてると嬉しいなぁ）[pr]

[message_name mode="hide"]
まるで子供に戻ったみたいだ。[pr]

昔迷子になった時も同じように、私のことを探す[r]
兄のことを考えて時間を潰していた。[pr]

兄ちゃんに迎えに来てほしいと思っていたし、[r]
兄ちゃんなら来てくれるとも思っていた。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
今もなんとなく、兄ちゃんなら何としてでも[r]
見つけ出そうとするだろうなと思える。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
だけど、どうしてだろう。[ls][r]
今は兄ちゃんよりも、桐生くんの姿が頭の中に[r]
浮かんでくる。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h"]
桐生くんに探してほしいと思っている。[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" me="toziru"]
理由はどうあれ、これは信頼とは違う。ただの願望だ。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
（……考えててもしょうがないな。[r]
頭文字被りなし制限しりとりでもしよう）[pr]

[message_name mode="hide"]
暇な時にたまにやる、一度使った頭文字は使えなくなる[r]
しりとりだ。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="hiraku"]
[message_name name="主人公" mode="show"]（あじさい、イカ、カラス……）[pr]

[message_name mode="hide"]
[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_bus.jpg"]

[chara_img type="heroine" name="honoka" cos="shihuku" mode="show" wait="false" lost="true"]
[message mode="show"]
[message_day mode="show" day="金" text="バス停"]

[message mode="set"]
[message_name name="主人公" mode="show"]
（……ラズベリー、リップ、ふくろ……ろ？）[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="toziru" ase="true"]
[message_name name="主人公"]
（ろ、ろ……ロッカー……いや、“か”はもう[r]
使ったっけ？）[pr]

[message_name mode="hide"]
だんだんわからなくなってきた。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" ase="false"]
集中力が途切れて来たころ、[r]
ふと雨が降り始めていることに気が付いた。[pr]

[bgimg storage="bg_bus_rain.jpg"]
[playseEx storage="rain.ogg"]

途端、雨足が強くなっていく。[r]
台風の影響でまだ天気が不安定のようだ。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi"]
[message_name name="主人公" mode="show"]
（バス、来ないな……）[pr]

[chara_img name="honoka" mode="face" me="toziru"]
[message_name mode="hide"]
だんだん時間の感覚がわからなくなってきた。[ls][r]
２時間経ったような気もするし、[r]
実は10分くらいな気もする。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="hiraku"]
また別のルールでしりとりするかなと思った時、[r]
ふと地面の水が跳ねる音が聞こえた。[ls][r]
バスが来たのだろうか。[pr]

[stopseEx mode="fadeout"]

[message_name mode="hide"]
[still mode="start" num="12"]

[bgm id="rain" mode="play"]

[message mode="set"]
[message_name name="桐生 ヤマト" mode="show"]
「――見つけた！」[pr]

[message_name name="主人公"]
「桐生くん……」[pr]

[message_name mode="hide"]
そこには、獣化した桐生くんがいた。[ls][r]
雨粒が滴るほど濡れていて、肩で息をしている。[pr]

[message_name name="主人公" mode="show"]
「だ、大丈夫？」[pr]

[message_name name="桐生 ヤマト"]
「それは、こっちの、台詞だよ……」[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_bus_rain.jpg"]

[chara_img name="honoka" type="heroine" cos="shihuku" ase="true" mode="show" wait="false" lost="true"]
[chara_img name="yamato_dog" me="toziru" kuti="toziru" ase="true" mode="show" lost="true"]

とりあえず私の隣に座ってもらい、息が整うまで待った。[pr]

[chara_img name="yamato_dog" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「はー……走った」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「どうしてそんなに走ってたの？」[pr]

[chara_img name="yamato_dog" mode="face" me="hannme"]
[message_name name="桐生 ヤマト"]
「雨で匂いが消えると追えなくなるから急いでたんだよ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「匂い？」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「商店街に行ったら、モモの飼い主の親子に会ったんだ。[r]
随分前に別れたって聞いたから、ひょっとしたら[r]
道端で迷子になってるんじゃないかと思って」[pr]

[chara_img name="yamato_dog" mode="face" me="normal"]
[message_name name="桐生 ヤマト"]
「[浅利]の匂いなら覚えてるから、[r]
それでずっと辿ってたんだ」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="normal" ase="false"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「いや、嗅覚が強いから勝手に覚えちゃうっていうか……[r]
その……変な意味じゃないからな引くなよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="warau" ase="true"]
[message_name name="主人公"]
「ひ、引いてないよ。ただ……」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="normal" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「探してくれてたの、嬉しくて」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「そりゃあ、探すだろ。[r]
この町来たの初めてって言ってたしさ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru"]
[message_name mode="hide"]
確かに、言った。それで心配してくれたのか。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
桐生くんはいつもそうだ。[ls][r]
私の言葉をひとつひとつ聞いてくれて、応えてくれる。[pr]

きっと私にだけじゃなく、誰に対してもそうなんだろう。[ls][r]
それが桐生くんのいいところだ。[pr]

桐生くんの、好きなところだ。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]（好き……）[pr]

[message_name mode="hide"]
ふと、昨日桐生くんが言っていた言葉を思い出した。[pr]

――犬の姿と同じくらい、人の時の……[r]
俺のことを好きになってほしいんだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="normal"]
私は桐生くんのことが好きだ。[ls][r]
優しいところも、一緒に遊んでくれるところも。[pr]

[chara_img name="honoka" mayu="syunn" mode="face" me="sorashi_h"]
桐生くんが望んでいる“好き”は、[r]
どんなものなんだろう。[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" kuti="hiraku" me="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「へっくし」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「あ、大丈夫？　寒いよね……ごめんね」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「謝らなくていいよ。俺が勝手に濡れてきたんだし」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name mode="hide"]
そうは言っても、私が迷子になったせいだ。[ls][r]

[chara_img name="yamato_dog" mode="face" kuti="toziru" ase="true" tere="true"]
ポケットからハンカチを取り出して、[r]
濡れている顔の辺りから拭こうと手を伸ばす。[pr]

[chara_img name="yamato_dog" mode="hide"]
[chara_img name="yamato" mode="show" mayu="kiri" me="sorashi_h" kuti="toziru" tere="true" ase="true" lost="true"]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
桐生くんは人型に戻り、私に手のひらを向けた。[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「じ、自分でできるから」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name name="主人公"]
「そう……？」[pr]

[bgm mode="end"]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru"]
[message_name mode="hide"]
そこそこ強い拒絶だったので、大人しく[r]
ハンカチを渡した。[ls][r]
一瞬触れ合った手が酷く冷たい。[pr]

[bgm id="odayaka" mode="play"]

[chara_img name="honoka" mode="face" mayu="syunn" kuti="hohoemu"]
こんな風になるまで、探してくれていたということだ。[ls][r]
きゅう、と胸が締め付けられる感覚がする。[r]
それはきっと罪悪感じゃない。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
好きなんだ。[ls][r]
私は、桐生くんのことが。[pr]

今までも好きだったけど、そういうのじゃなくて。[ls][r]
なんと言えばいいのだろう。[pr]

もっとずっと、深い気持ちだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……桐生くん。昨日、人間の自分のことも[r]
好きになってほしいって言ってたよね」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="hiraku" tere="true"]
[message_name name="桐生 ヤマト"]
「え？　う、うん……言った」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name name="主人公"]
「それって、どういう”好き”なの？」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「どう、って……」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「俺が犬の姿になった時、[r]
[浅利]って”好きだー”って顔するだろ？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="normal" tere="false"]
[message_name name="主人公"]
「……してる？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" tere="false"]
[message_name name="桐生 ヤマト"]
「してる。だからそれを、人間の時の俺にも[r]
してほしいと思ってるんだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" ase="true"]
[message_name name="主人公"]
「う、うーん……じゃあ違うのかな」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「なにが？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「いま桐生くんのこと好きだなーって思ったんだけど、[r]
桐生くんが求める好きとは違うのかなと思って」[pr]

[chara_img name="yamato" mode="face" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="桐生 ヤマト"]
「……えっ？　そ……そうなのか？[r]
え、どういうところが？」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「優しいところ……ううん、そんなのじゃなくて、[r]
もっと……なんて言えばいいのかな」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
言葉を探していると、ふと桐生くんの手が目に留まった。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
空いているほうの手を取る。[ls][r]
ぎくりと強張ったその手を、包み込むように握った。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
[message_name name="主人公" mode="show"]
「冷たいね」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru" tere="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="hiraku"]
[message_name name="主人公"]
「迷子になった時、桐生くんが迎えに来てくれないかな[r]
って思ってたの。でもきっと難しいだろうし、がっかりも[r]
したくないから、考えないようにしてたんだ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" tere="true"]
[message_name name="主人公"]
「だから、来てくれて嬉しかった。[r]
本当に……どうしようもないくらい、嬉しかったの」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi_h" kuti="hiraku" tere="false"]
[message_name name="桐生 ヤマト"]
「……それは」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「俺が[浅利]のこと好きだからだよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="normal"]
[message_name name="主人公"]
「………」[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト"]
「迷子になって困ってないか心配になったのも、[r]
俺が見つけたいって思ったのも、必死で探したのも[r]
……ぜんぶ」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「だから、そういうところが好きって言われると、[r]
勘違いしそうになる」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「勘違い……？」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「俺の”好き”は……友達としてじゃないんだ。[r]
抱きしめたいし、キスしたいと思う。[r]
でも[浅利]の”好き”は違うかもしれないだろ」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="normal"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku" tere="true"]
[message_name name="主人公"]
「……えっと」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「私……恋愛ってしたことないからよくわかんないけど。[r]
桐生くんとだったら、キスできるよ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="okoru" ase="true" tere="true"]
[message_name name="桐生 ヤマト"]
「……え？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公"]
「他の人にはそんなこと思ったことないよ。[r]
兄ちゃんにも……だから、桐生くんは特別なんだと思う」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「だから……私も桐生くんのこと、好きだよ」[pr]

[chara_img name="yamato" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「ほんとに？」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「こんな冗談言わないよ」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi_h" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「あ、いや、疑ってるとかじゃなくて……[r]
びっくりしてるだけ、なんだけど」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「じゃあ……えっと、試してみる？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「試すって……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公"]
「抱き締めたりとか、そういうの」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
桐生くんはぽかんとした表情で私のことを見つめている。[ls][r]
またびっくりさせてしまったようだ。[pr]

[still mode="start" num="13"]

仕方ないので、私の方から抱き締めに行く。[ls][r]
ぎゅうと抱き着くと、頭上で息を飲む音がした。[pr]

まだ水気を帯びた服が冷たい。[r]
私の体温まで奪われそうだ。[pr]

でも、それで桐生くんが少しでも寒くなくなれば[r]
いいなと思う。[pr]

[message_name name="主人公" mode="show"]
「えへ……どうしよう。ドキドキする」[pr]

[still mode="change" num="13_2"]
[message_name name="桐生 ヤマト"]
「……俺もだよ」[pr]

[message_name mode="hide"]
そう言うと、桐生くんは私の背に腕を回した。[ls][r]
私よりも強く抱き締めてくる。[pr]

私ももう少し強めようかと思ったけど、[r]
どれくらいまで強めていいのかわからないので[r]
やめておいた。[pr]

[still mode="change" num="13_3"]
[message_name name="桐生 ヤマト" mode="show"]
「……[浅利]、好きだ」[pr]

[message_name name="主人公"]
「うん……私も、好きだよ」[pr]

[message_name mode="hide"]
そう答えると、抱き締める腕が更に強まる。[ls][r]
痛くはないけど、少し苦しい。だけど嫌じゃない。[pr]

[still mode="change" num="13_4"]
[message_name name="桐生 ヤマト" mode="show"]
「好きだ……」[pr]

[message_name name="主人公"]
「あ、あんまり何回も言われると、恥ずかしいよ」[pr]

[message_name name="桐生 ヤマト"]
「ごめん……ずっと、言うの我慢してたんだ。[r]
応えてもらえるとも思ってなかったし……」[pr]

[message_name name="主人公"]
「ずっと……？」[pr]

[message_name name="桐生 ヤマト"]
「自覚したのは最近だけど……[r]
たぶん、初めて会った頃から気になってたんだと思う」[pr]

[message_name name="桐生 ヤマト"]
「最初はただ友達として仲良くなりたくて、[r]
人間の俺にも興味を持ってほしいって思ってたけど……」[pr]

[message_name name="桐生 ヤマト"]
「だんだん、犬の姿だけじゃなくて、[r]
俺のことを好きになってほしいって思うように[r]
なったんだ」[pr]

[message_name name="主人公"]
「そうだったんだ……ぜんぜん気付かなかった」[pr]

[message_name name="桐生 ヤマト"]
「まあ……気づかれないようにしてたしな」[pr]

[message_name name="主人公"]
「なんで？」[pr]

[message_name name="桐生 ヤマト"]
「犬の姿にしか興味ないって言われたら[r]
絶対立ち直れないなと思って……[r]
だから、告白なんてする気なかったんだけど」[pr]

[message_name name="桐生 ヤマト"]
「犬の姿で会う度に、その顔を普通の時にも[r]
向けてほしいって……好きになってほしいって気持ちが、[r]
抑え切れなかったんだ」[pr]

[message_name name="主人公"]
「……そっか」[pr]

[message_name name="主人公"]
「大丈夫だよ。犬の姿が好きなのは確かだし、[r]
そこはどうにもできないけど……」[pr]

[message_name name="主人公"]
「桐生くんと一緒に遊んだり、[r]
ラーメン食べたりする時間も好きだよ」[pr]

[message_name name="主人公"]
「だから……犬の姿が好きなんじゃなくて、[r]
桐生くんのことが好きなの」[pr]

[still mode="change" num="13_5"]
[message_name name="桐生 ヤマト"]
「……そうかぁ」[pr]

[message_name mode="hide"]
桐生くんは噛み締めるように呟くと、[r]
背に回す腕を一層強くした。[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_bus.jpg"]

[chara_img name="honoka" type="heroine" cos="shihuku" mode="show" wait="false" lost="true"]
[chara_img name="yamato" kuti="toziru" mode="show" lost="true"]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「……あ」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「どうした？」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="toziru" ase="true"]
[message_name name="主人公"]
「……っくしゅん」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="warau" tere="true"]
[message_name name="主人公"]
「ごめん、我慢できなかった」[pr]

[chara_img name="yamato" mode="face" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「あ、ごめんな。冷えたか」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「大丈夫だよ。しばらくしたらあったまるだろうから、[r]
もうちょっとこうしててもいい……？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" kuti="normal" ase="false" tere="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" me="toziru" mode="hide"]
[chara_img name="yamato_dog" mode="show" lost="true"]

[message_name name="桐生 ヤマト"]
「こっちの方があったかいか」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「そうなの？」[pr]

[message_name name="桐生 ヤマト"]
「犬の時の方が、ちょっと体温高いんだ」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「……ほんとだ。ちょっとあったかい気がする」[pr]

[chara_img name="yamato_dog" mode="face" mayu="syunn" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……これでもさ。[r]
昔よりは、犬の姿も結構悪くないと思ってるんだ」[pr]

[chara_img name="yamato_dog" mode="face" mayu="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「犬の時の俺にもいいところはあるんだよな。[r]
戦う時は強いし、さっきだって匂いで追ったりできたし」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「うん。たくさんあるの知ってるよ」[pr]

[chara_img name="yamato_dog" mode="face" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……[浅利]って、柴犬のどういうところが[r]
好きなんだっけ？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hart" tere="true"]
[message_name name="主人公"]
「頬っぺたがかわいいのと、まゆげがかわいいのと、[r]
目がかわいいのと、もふもふしてるところ……」[pr]

[message_name name="主人公"]
「でも桐生くんはかっこいい系だと思うよ。[r]
手も大きくて好き～」[pr]

[chara_img name="yamato_dog" mode="face" mayu="kiri" me="hannme" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
「…………」[pr]

[chara_img name="yamato_dog" mode="hide"]
[chara_img name="yamato" mayu="kiri" me="hannme" kuti="toziru" ase="true" mode="show" lost="true"]

[message_name name="桐生 ヤマト"]
「……やっぱりなんか悔しい」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「悔しい……？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「人型の俺にもその”好き～”って顔してほしい……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="normal" ase="true"]
[message_name name="主人公"]
「顔……はわかんないけど」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu" ase="false" tere="true"]
[message_name name="主人公"]
「好きだよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="odoroki" tere="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku"]
[message_name name="主人公"]
「口で言うんじゃダメかな……」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「……ダメじゃない」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「えへ……よかった」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="normal"]
[message_name name="主人公"]
「……あのね、桐生くん」[pr]

[chara_img name="yamato" mode="face" me="normal" tere="false"]
[message_name name="桐生 ヤマト"]
「なんだ？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="hiraku"]
[message_name name="主人公"]
「その……キスも、してみてもいい？」[pr]

[message_name name="主人公"]
「自分でも、よくわかんないんだけど……[r]
今、してみたいって思っちゃった」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="toziru" tere="true" ase="true"]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「う、うん」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name name="主人公"]
「えっと……どうすればいいんだろう」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「ええと……じゃあ、目閉じてじっとしてて」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「わかった」[pr]

[message_name mode="hide"]
[chara_img name="yamato" mode="hide" wait="false"]
[chara_img type="heroine" name="honoka" mode="hide" wait="false"]
[bgimg storage="black.jpg"]

[message_name mode="hide"]
言われた通り、大人しく目を閉じる。[ls][r]

頬に手が触れる感触がして、少し肩が跳ねる。[pr]

[message_name name="主人公" mode="show"]
「…………」[pr]
[message_name name="桐生 ヤマト"]
「…………」[pr]

[message_name mode="hide"]
少しの間を置いて、唇に柔らかいものが触れる。[ls][r]
次の瞬間にはすぐに離れていた。[pr]

[message_name mode="hide"]
[chara_img name="yamato" mode="show" me="sorashi_h" kuti="toziru" tere="true" wait="false" lost="true"]
[chara_img type="heroine" name="honoka" mode="show" cos="shihuku" mayu="normal" me="normal" ase="false" wait="false" tere="true" lost="true"]
[bgimg storage="bg_bus.jpg"]

[message_name name="主人公" mode="show"]
「…………」[pr]

[message_name name="桐生 ヤマト"]
「…………」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="warau"]
[message_name name="主人公"]
「キスってこんな感じなんだ……なんか不思議」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「うん……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「あ……私、唇乾燥してたね」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「気にしてる余裕なかったよ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="warau" kuti="warau"]
[message_name name="主人公"]
「えへ……私も」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="toziru" kuti="hohoemu"]
[message_name mode="hide"]
まだ心臓がドキドキしている。[ls][r]
不思議と体も温まってきた気がした。[pr]

だけど、よくわかった。[ls][r]
桐生くんのことが好きだから、こんなにも[r]
ドキドキするんだ。[pr]

[bgm mode="end"]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" tere="false"]
ふと空を見上げると、雨はすっかり止んでいた。[pr]

[bgm id="nichijou_b" mode="play"]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「桐生くん、帰り道わかる？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="warau" ase="true" tere="false"]
[message_name name="桐生 ヤマト"]
「あ、覚えてない……匂いだけ追ってたから、[r]
景色まで気にしてなかったな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「じゃあ、やっぱりバス待とうか。[r]
きっともうそろそろ来るよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「そうだな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「頭文字被りなし制限しりとりする？」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「なんだそれ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「一度使った頭文字はもう使えないしりとり」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「難しくないか？」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false"]
[message_name mode="hide"]
そんな他愛もない話をしながら、バスが来るのを待った。[pr]

[message_name mode="hide"]
[chara_img mode="hide_all"]
[bgimg storage="bg_sky.jpg"]

心細さはもうない。退屈さもない。[pr]

桐生くんと２人でいる時は、何をしていても楽しいのだ。[ls][r]
それはもちろん、桐生くんが柴犬の姿を[r]
持っているからじゃない。[pr]

桐生くんだから、楽しいんだ。[pr]

[bgm mode="end"]

[_tb_end_tyrano_code  ]
*next
[tb_start_tyrano_code  ]
[eval exp="sf.chapter_end['ED2'] = true"]
[eval exp="sf.eventcg_view['14'] = true"]

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
[image layer="base" storage="../bgimage/event/still14.jpg"]

[message_current layer="message0" left="10" top="490"]
[nowait]
[font_color size="34" color="0x0fabb2" edge="0xffffff" wait="10"]
ED2「あなただから」
[font_color_reset wait="10"]
[endnowait]

[mask_off time="1000"]

[l]

[memory_end chapter="root-D02-2"]

[bgm mode="end" time="1500"]

[mask time="1500" color="0x000000"]
[cm]

[layopt layer="message0" visible="false"]

[wait time="300"]

[eval exp="tf.title_fade = true"]
[jump storage="title_screen.ks" target="*back"]
[s]
[_tb_end_tyrano_code  ]
