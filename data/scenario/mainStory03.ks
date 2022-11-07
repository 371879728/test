[_tb_system_call  storage="system/_mainStory03.ks"  ]
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

[image layer="base" storage="bg_machi01.jpg"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[chara_img name="ryman" mode="show" time="0" lost="true"]

[message mode="show" time="0"]
[mask_off]

[else]

[weekCutIn title="水曜日" text="Wednesday"]
[chara_img type="heroine" name="honoka" mode="show" time="0" badge="true"]
[chara_img name="ryman" mode="show" time="0" lost="true"]
[image layer="base" storage="bg_machi01.jpg"]
[message mode="show" time="0"]
[weekCutOut]
[endif]

[sceneTitle text="水曜日｜通学路"]
[message_day mode="show" day="水" text="通学路"]
[eval exp="sf.chapter_ttl['ch03'] = true"]

[bgm id="nichijou_a" mode="play"]

[message mode="set"]
翌朝。[pr]

学校に向かっていると、[r]
通りすがりのサラリーマンと目が合った。[ls][r]
昨日の、くたびれたサラリーマンだ。[pr]

[chara_img mode="face" name="honoka" kuti="hohoemu"]
胸元には、無所属を示すロストバッジがついている。[ls][r]
前回私が彼の悪バッジをとってから、[r]
誰とも戦っていないんだろう。[pr]

自陣営のバッジを取り返すには、[r]
無所属の状態で敵陣営のバッジを奪い、[r]
本部で自陣営のバッジと交換してもらうルールだ。[pr]

[chara_img mode="hide" type="heroine" name="honoka" time="300"]
[chara_img mode="show" type="heroine" left="-110" name="honoka_battle" time="300"]

[message_name name="主人公" mode="show"]
「出たな、ロスト！」[pr]

[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="honoka" move="right"]
[message mode="set"]

[chara_img name="ryman" mode="face" mayu="kiri" kuti="henya"]
[message_name name="サラリーマン" mode="show"]
「出たな、善役！」[pr]

[message_name mode="hide"]
[wait_skip time="500"]
[cutin name="ryman_lost" move="left"]
[message mode="set"]

[message_name name="主人公" mode="show"]
「今日は時間あるんですか？」[pr]

[chara_img name="ryman" mode="face" mayu="normal"]
[message_name name="サラリーマン"]
「まあ昨日と同じくらいの時間しかないけど、[r]
たぶん足りると思う」[pr]

[message_name name="主人公"]
「なるほど」[pr]

[message_name mode="hide"]
勝つ気満々、ということらしい。それは面白い。[pr]

[bgm mode="end"]

[window_all_hide]

[bgm id="battle" mode="play"]

[battle_set mode="left" id="honoka" name="主人公" text="押忍"]
[battle_set mode="right" id="ryman_lost" name="サラリーマン" text="仕事行きたくないなぁ"]
[battle_cutin]

[chara_img name="ryman" mode="show" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[chara_img name="ryman" mode="show" time="0" lost="true"]
[message_day mode="show" day="水" text="通学路" time="0"]
[message mode="show"]

[bgm mode="end"]

[battle_cutin_off]

[bgm id="nichijou_b" mode="play"]

[chara_img name="ryman" mode="face" mayu="kiri" me="ka" kuti="warau"]
[chara_img name="honoka" mode="face" mayu="kiri" ase="true"]

[message_name name="サラリーマン" mode="show"]
「ふはははは！　見たか！」[pr]

[message_name mode="hide"]
サラリーマンの手には、私の善バッジが握られていた。[ls][r]
一瞬の隙をまんまと射止められた。私の負けだ。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="主人公" mode="show"]
「すごいですね……[r]
こちらの動きが全部わかっているみたいでした」[pr]

[chara_img name="ryman" mode="face" mayu="normal" me="normal" kuti="henya"]
[message_name name="サラリーマン"]
「僕は、柔道をやる前は空手も習っていたんだ」[pr]

[message_name name="サラリーマン"]
「君の姿勢は空手の基本形そのものだから、[r]
知っている人には読みやすい型だよ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「なるほど……」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
私の戦い方は、空手を習っていた頃に培ったもので[r]
構成されている。[ls]同じ道を歩んだことがある人であれば、[r]
確かに読みやすい戦い方だろう。[pr]

彼の戦い方は、恐らくは空手と柔道の要素を含んだ[r]
自由形だ。[ls]柔軟で的確。今まで出会った中で[r]
一番厄介な相手かもしれない。[pr]

こんなに強い人がご近所にいたなんて。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
[message_name name="主人公" mode="show"]
（……面白い）[pr]

[message_name mode="hide"]
久しぶりに負けた。[ls][r]
やっぱり、相手が強ければ強いほど心が躍る。[pr]

[message_name name="サラリーマン" mode="show"]
「まあ今回は僕の勝ちってことで」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「またお願いします」[pr]

[message_name name="サラリーマン"]
「あはは。また会ったらね」[pr]

[message_name mode="hide"]
[chara_img name="ryman" mode="hide"]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
そう言って、サラリーマンは颯爽と[r]
駅に向かって行った。[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="toziru"]
まだ気持ちが高揚している。[ls][r]
今すぐにでも、もう一度戦ってみたい。[r]
だけど今やったって同じ結果になるだけだろう。[pr]

私に隙があったのは確かだけど、[r]
もっと根本的な部分を解決しなければ勝てそうにない。[pr]

もっとヒーローごっこの戦い方を学んでいく必要が[r]
ありそうだ。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal"]
[message_name name="主人公" mode="show"]（……楽しい）[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name mode="hide"]
負けて学んで、また強くなる。[r]
私は空手のそういうところが好きだった。[ls][r]
ヒーローごっこもそれと同じだ。[pr]

[memory_end chapter="ch03-1"]

[bgm mode="end"]

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

[image layer="base" storage="bg_school_rouka_e.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]

[else]
[eyecatch]
[image layer="base" storage="bg_school_rouka_e.jpg"]
[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_day mode="hide" time="0"]
[eyecatch_off]
[endif]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="水曜日｜国立Ｓ学園・Ｅクラス廊下"]
[message_day mode="show" day="水" text="国立Ｓ学園・Ｅクラス廊下"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message mode="set"]
昼休みになり、ふと今日も下位棟に行ってみようと[r]
思い立った。[pr]

[chara_img name="mob" cos="men2" mode="show"]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
Ｅクラスのドアを開くと、ちょうど出てこようと[r]
していた生徒とぶつかりそうになる。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true"]
[message_name name="主人公" mode="show"]
「あ、ごめん」[pr]

[message_name name="生徒"]
「うわ……Ａクラスのやつじゃん。[r]下位クラスに何の用だよ」[pr]

[message_name mode="hide"]
Ａクラスへの印象が悪いタイプだ。運が悪かった。[pr]

[chara_img name="honoka" mode="face" me="sorashi" ase="false"]
[message_name name="主人公" mode="show"]
「えーと、桐生くんいる？」[pr]

[message_name name="生徒"]
「桐生なら今日休みだけど……」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「休み？」[pr]

[message_name name="生徒"]
「あいつ、毎日馬鹿みたいに朝から学校にいるから、[r]
この時間にいないってことは休みだろ」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true"]
[message_name mode="hide"]
朝から学校にいるのは、馬鹿みたいなことなのだろうか。[pr]

しかし、少し妙だ。[r]
桐生くんは学校を休む時、いつも私に連絡をくれる。[ls][r]
今日はそんな連絡は来ていなかった。[pr]

ただ連絡を忘れているだけならいいのだが、[r]
少し考え難い。[ls]昨日会った桐生くんの友達２人なら、[r]
何か知っているだろうか。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「じゃあ、あのー……」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="normal" ase="true"]
[message_name mode="hide"]
しまった。名前を忘れた。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「桐生くんの友達はいる？」[pr]
[message_name name="生徒"]
「このクラスのやつ、みんな桐生のダチだけど」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" kuti="hiraku"]
[message_name name="主人公"]
「えっ……」[pr]

[message_name mode="hide"]
なんだその交友関係の広さは。[pr]

[message_name name="生徒" mode="show"]
「……ひょっとして、名前わかんねえの？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="normal"]
[message_name name="主人公"]
「うん……」[pr]
[message_name name="生徒"]
「……探してるのって、どんなやつ？[r]
わかればあとで伝言くらいしとくけど」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="warau" ase="false"]
[message_name mode="hide"]
どうやら協力してくれるらしい。なんて親切なやつだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「えーと……」[pr]

[eval exp="f.friend_edit_back = false"]

*edit_start
[if exp="f.friend_edit_back"]
[select_hide]
[endif]
[call storage="friend_edit.ks"]

[if exp="f.friend_edit == 'ririna' || f.friend_edit == 'tatsumi' || f.friend_edit == 'cancel'"]
[bgm mode="end"]
[endif]

[image layer="base" storage="bg_school_rouka_e.jpg"]
[chara_img name="mob" cos="men2" mode="show" wait="false" time="0"]
[chara_img type="heroine" name="honoka" mode="show" time="0"]
[message mode="show" time="0"]
[message_day mode="show" day="水" text="国立Ｓ学園・Ｅクラス廊下" time="0"]

[mask_off time="500"]
[wait_skip time="500"]

[sceneTitle text="水曜日｜国立Ｓ学園・Ｅクラス廊下"]

[if exp="f.friend_edit == 'ririna' || f.friend_edit == 'tatsumi'"]
[memory_end chapter="ch03-2"]
[endif]

[if exp="f.friend_edit == 'ririna' || f.friend_edit == 'tatsumi' || f.friend_edit == 'cancel'"]
[bgm id="nichijou_d" mode="play"]

[jump cond="f.friend_edit == 'ririna'" target="*select_ririna"]
[jump cond="f.friend_edit == 'tatsumi'" target="*select_tatsumi"]
[jump cond="f.friend_edit == 'cancel'" target="*edit_skip"]

[else]
[chara_img name="honoka" mode="face" ase="true"]

[if exp="f.friend_edit == ''"]
[message_name name="主人公" mode="show"]（うーん……ちょっと違う気がする……）[pr]

[elsif exp="f.friend_edit == 'honoka'"]
[message_name name="主人公" mode="show"]（自分を思い浮かべてどうする……）[pr]

[elsif exp="f.friend_edit == 'yamato'"]
[message_name name="主人公" mode="show"]（……なんで桐生くんが浮かんだんだろう）[pr]

[elsif exp="f.friend_edit == 'haruo'"]
[message_name name="主人公" mode="show"]（……いや、これは兄ちゃんだ）[pr]

[endif]

[message_name mode="hide"]

[select_set]
[eval exp="f.friend_edit_back = true"]
[select_btn id="select_num4_a" text="考えなおす" storage="mainStory03.ks" target="edit_start"]
[select_btn id="select_num4_b" text="あきらめる" storage="mainStory03.ks" target="edit_skip"]
[select_show]
[endif]

[s]
[_tb_end_tyrano_code  ]
*edit_skip
[tb_start_tyrano_code  ]

[select_hide]
[sceneTitle text="水曜日｜国立Ｓ学園・Ｅクラス廊下"]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu" ase="false"]
[message_name name="主人公" mode="show"]
「思い出せないからやっぱりいいや。[r]
付き合ってくれてありがとう」[pr]

[message_name name="生徒"]
「あっそ。じゃあな」[pr]

[message_name mode="hide"]
[chara_img name="mob" mode="hide"]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal"]
簡潔に言うと、彼は廊下の先に消えて行った。[pr]

[memory_end chapter="ch03-2"]

[bgm mode="end"]

[jump target="*select_end"]

[_tb_end_tyrano_code  ]
*select_ririna
[tb_start_tyrano_code  ]

[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_school_rouka_e.jpg"]
[chara_img name="mob" cos="men2" mode="show" time="0" wait="false"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]

[bgm id="nichijou_d" mode="play"]
[mask_off]

[sceneTitle text="水曜日｜国立Ｓ学園・Ｅクラス廊下"]
[message_day mode="show" day="水" text="国立Ｓ学園・Ｅクラス廊下"]
[endif]


[message_name name="生徒" mode="show"]
「ああ、ひょっとして里井のことか？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あ、たしかそう」[pr]

[chara_img name="mob" cos="men2" mode="move" posi="right" wait="false"]
[chara_img name="ririna" mode="show" posi="left"]
[message_name name="里井 りり奈"]
「あたしのこと呼んだ？」[pr]

[message_name mode="hide"]
振り返ると、そこにはまさに探している人物の[r]
姿があった。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「そうそう。里井さんだ」[pr]

[chara_img name="ririna" mode="face" kuti="warau"]
[message_name name="里井 りり奈"]
「里井りり奈だよ～。もう忘れちゃった？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="warau" ase="true"]
[message_name name="主人公"]
「ごめんね、人の名前覚えるの苦手で……」[pr]

[chara_img name="ririna" mode="face" me="warau"]
[message_name name="里井 りり奈"]
「気にすんなって。頭良くてもそういうことあんだね～」[pr]

[message_name name="生徒"]
「探してるやつ見付かったんだな。[r]じゃ、オレもう行くわ」[pr]

[chara_img name="ririna" mode="face" me="normal" kuti="normal"]
[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「あ、引き留めてごめんね。協力してくれてありがとう」[pr]

[message_name name="生徒"]
「別に……オレ何もしてねぇから」[pr]
[message_name mode="hide"]

[chara_img name="mob" mode="hide"]
[chara_img name="ririna" mode="move" posi="center"]

[chara_img name="honoka" mode="face" me="normal"]
ぶっきらぼうに言うと、彼は廊下の先に消えて行った。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公" mode="show"]
「里井さん、桐生くんって今日休みなんだね。[r]
理由とか何か聞いてない……？」[pr]

[chara_img name="ririna" mode="face" kuti="hiraku"]
[message_name name="里井 りり奈"]
「ううん。あたし、桐生の連絡先知らないんだー」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「え、そうなの？」[pr]

[chara_img name="ririna" mode="face" mayu="normal" me="toziru"]
[message_name name="里井 りり奈"]
「あいつ、あんまり連絡先交換したがらないんだよね。[r]
疲れるとか言って」[pr]

[chara_img name="honoka" mode="face" kuti="normal" me="normal"]
[message_name name="主人公"]
「じゃあ、もう１人の男の子の方は……？」[pr]

[chara_img name="ririna" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="里井 りり奈"]
「須賀は連絡先は知ってるっぽいけど、[r]
何も聞いてないって言ってたから[r]
連絡来てないんだろうね」[pr]

[chara_img name="honoka" mode="face" mayu="komaru"]
[message_name name="主人公"]
「そうなんだ……」[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name mode="hide"]
ひょっとして、連絡が取れるような状態ではない[r]
ということなのだろうか。[pr]

[chara_img name="ririna" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="里井 りり奈" mode="show"]
「ね、ね、折角だしあたしと話してかない？[r]
いろいろ聞きたいことあってさ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「え？　あ、うん。いいよ」[pr]

[message_name name="里井 りり奈"]
「やった！　屋上行こー」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「屋上って立ち入り禁止じゃなかった？」[pr]

[chara_img name="ririna" mode="face" mayu="kiri" me="toziru" kuti="normal"]
[message_name name="里井 りり奈"]
「堅いことは言いっこなしだって」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「禁止ってわかってるならいいや。行こっか」[pr]

[chara_img name="ririna" mode="face" me="normal" mayu="normal" kuti="hiraku" ase="true"]
[message_name name="里井 りり奈"]
「どういう理屈よ」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hohoemu"]
[message_name name="主人公"]
「知らずに破るのは可哀そうだけど、[r]
あえて破るのは自己責任だから」[pr]

[chara_img name="ririna" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="里井 りり奈"]
「いいね。そういうの好きだわ」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
からからと笑う里井さんにつれられて、[r]
屋上へと向かった。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_okujou.jpg" method="fadeInLeft"]

[bgm id="nichijou_b" mode="play"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="ririna" mode="show" wait="false"]
[message mode="show"]

[message_day mode="show" day="水" text="国立Ｓ学園・下位棟屋上"]

[message mode="set"]

[chara_img name="ririna" mode="face" mayu="komaru" me="warau" kuti="warau"]
[message_name name="里井 りり奈" mode="show"]
「うは～、風つよ～」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" ase="true"]
[message_name mode="hide"]
屋上への扉を開くと、強い風が吹き抜けた。[ls][r]
こういう時、スカートは面倒くさい。[pr]

めくれないように押さえていると、[r]
里井さんからの視線を感じた。[pr]

[chara_img name="ririna" mode="face" mayu="kiri" me="normal" kuti="hiraku"]
[message_name name="里井 りり奈" mode="show"]
「ねーねー。上位棟の子たちって[r]
下着白じゃないとダメってガチ？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「ん？」[pr]

[chara_img name="ririna" mode="face" mayu="normal" kuti="warau"]
[message_name name="里井 りり奈"]
「上位棟って校則バカみたいに厳しいんでしょ？[r]
気になってたんだよねー」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「駄目って程じゃないしチェックもされないけど、[r]
推奨とは言われてるよ。なんでか知らないけど」[pr]

[chara_img name="ririna" mode="face" mayu="kiri" me="hannme" kuti="hiraku" ase="true"]
[message_name name="里井 りり奈"]
「うっわ、キモ。[r]
こっちでそんな校則できたら暴動起こるよ。[r]
生徒のパンツに口出しすんなーって」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="warau" kuti="warau"]
[message_name name="主人公"]
「あはは。こっちじゃ誰も文句言わないよ」[pr]

[chara_img name="ririna" mode="face" me="toziru" ase="false"]
[message_name name="里井 りり奈"]
「そういうの、言った方がいいと思うけどなー」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
里井さんはあまり納得が行かない様子で口を尖らせた。[pr]

始めて会った時から感じてはいたが、[r]
さっぱりしていて話しやすい。[ls][r]
あまり出会ったことがないタイプの人だ。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「人と下着の話なんてするの、はじめて」[pr]

[chara_img name="ririna" mode="face" me="normal" mayu="normal"]
[message_name name="里井 りり奈"]
「えー？　普通に友達とかと話さない？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「友達、桐生くんしかいないからね」[pr]

[chara_img name="ririna" mode="face" mayu="kiri" kuti="hiraku" ase="true"]
[message_name name="里井 りり奈"]
「え、マジ？[r]
友達いっぱい委員長って顔してんじゃん」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「ぜんぜん……[r]
クラスの人の名前、ほとんど覚えてないし」[pr]

[chara_img name="ririna" mode="face" mayu="komaru" kuti="warau"]
[message_name name="里井 りり奈"]
「……[浅利]ちゃんって、ほんとに頭いいの？[r]
今んとこ記憶力弱そうな印象しかないんだけど」[pr]

[chara_img name="honoka" mode="face" kuti="warau" tere="true"]
[message_name name="主人公"]
「わー……えへ、そんなこと初めて言われた」[pr]

[chara_img name="ririna" mode="face" mayu="kiri" me="hannme" kuti="normal"]
[message_name name="里井 りり奈"]
「褒めてないからね」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" tere="false"]
[message_name mode="hide"]
もちろん分かっているが、新鮮な気分だ。[pr]

[chara_img name="ririna" mode="face" mayu="normal" me="normal" ase="false"]
[message_name name="里井 りり奈" mode="show"]
「じゃあ、中学ん時とかはどうだったの？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" ase="true"]
[message_name name="主人公"]
「友達はいなかった……[r]
というか、それどころじゃなかったかな」[pr]

[chara_img name="ririna" mode="face" kuti="hiraku"]
[message_name name="里井 りり奈"]
「なんかあったの？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="sorashi" kuti="hiraku" ase="false"]
[message_name name="主人公"]
「なんて言うか……好きだったものが全部なくなって、[r]
何にも興味持てなくなっちゃった」[pr]

[message_name name="里井 りり奈"]
「ありゃ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" me="normal"]
[message_name name="主人公"]
「やることないから勉強ばっかりしてた」[pr]

[chara_img name="ririna" mode="face" mayu="komaru" kuti="warau"]
[message_name name="里井 りり奈"]
「非行に走んなくてよかったじゃん」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「たしかに」[pr]

[chara_img name="ririna" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="里井 りり奈"]
「桐生は中学ん時、ガチでヤバかったよ」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「そうなの？」[pr]

[message_name mode="hide"]
[still mode="start" num="3a"]

[message_name name="里井 りり奈" mode="show"]
「喧嘩ばっかしてた。[r]
なんか、話しかけたやつ全員殺すみたいな目しててさ」[pr]

[message_name name="主人公"]
「お腹すいてる時の顔みたいな？」[pr]

[message_name name="里井 りり奈"]
「言えてる」[pr]

[message_name name="里井 りり奈"]
「あたしと須賀と桐生は、中学ん時からずっと[r]
同じクラスなんだ。まあ、桐生とまともに話したのは[r]
高校入ってからなんだけど」[pr]

[message_name name="主人公"]
「そうだったんだ」[pr]

[message_name name="里井 りり奈"]
「あたしはそこまで詳しくはないんだけど……[r]
あいつ半獣でしょ。この辺りじゃ獣人自体珍しいから、[r]
昔いろいろあったみたい」[pr]

[message_name mode="hide"]
[still mode="end" storage="bg_school_okujou.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="ririna" mode="show"]

確かに、桐生くんは「犬」と嘲笑されることも、[r]
馬鹿にされることも嫌がっている。[pr]

もちろんそれは誰だって嫌なことだろうけど、[r]
桐生くんは少し過敏にも見えるくらいだ。[pr]

[chara_img name="ririna" mode="face" me="warau" kuti="warau"]
[message_name name="里井 りり奈" mode="show"]
「でも、最近のあいつめっちゃ楽しそうじゃん。[r]
喧嘩もしてないしさ。中学ん時よりずっと[r]
いい感じなんだよね」[pr]

[chara_img name="ririna" mode="face" me="normal" kuti="normal"]
[message_name name="里井 りり奈"]
「[浅利]ちゃんはどう？　今楽しい？」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
[message_name name="主人公"]
「楽しいよ。すごく」[pr]

[message_name name="主人公"]
「私も、桐生くんと会ってなかったら、[r]
つまんないままだったと思う」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
桐生くんと出会って、ヒーローごっこを始めて。[ls][r]
それまでの時間が嘘みたいに毎日が楽しいのだ。[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公" mode="show"]
「私、桐生くんに助けられてばっかりだな……」[pr]

[chara_img name="ririna" mode="face" kuti="warau"]
[message_name name="里井 りり奈"]
「あたしが言うのもアレだけど……[r]
そんなことないと思うよ」[pr]

[chara_img name="honoka" mode="face" me="normal" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「？」[pr]

[chara_img name="ririna" mode="face" kuti="hiraku"]
[message_name name="里井 りり奈"]
「桐生が楽しそうなのって、[r]
須賀はヒーローごっこはじめたからだろうって[r]
言ってたけど……」[pr]

[chara_img name="ririna" mode="face" me="warau" kuti="normal"]
[message_name name="里井 りり奈"]
「あたしは、[浅利]ちゃんと出会ったことも[r]
大きいんじゃないかって思ってる」[pr]

[message_name name="主人公"]
「なんで？」[pr]

[chara_img name="ririna" mode="face" kuti="warau"]
[message_name name="里井 りり奈"]
「カンだけどさ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name mode="hide"]
つまりは根拠はないらしい。[ls][r]
それにしては、やけに自信に満ちた様子で笑っていた。[pr]

[chara_img name="ririna" mode="face" me="normal"]
[message_name name="里井 りり奈" mode="show"]
「でも、マジだよ。あいつ学校では友達多いけど、[r]
放課後一緒に遊んでるの[浅利]ちゃんくらいだしさ」[pr]

[message_name name="里井 りり奈"]
「[浅利]ちゃんと一緒にいるの[r]
楽しいんだろうなって、話聞いてても思うんだよね」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="false"]
[message_name name="主人公"]
「そっか……嬉しいな」[pr]

[chara_img name="honoka" mode="face" me="warau" tere="true"]
[message_name name="主人公"]
「私も楽しいよ、桐生くんと一緒にいるの」[pr]

[chara_img name="ririna" mode="face" me="warau" kuti="normal"]
[message_name name="里井 りり奈"]
「それ、本人に言ってやってよ。できれば同じ顔してさ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" tere="false"]
[message_name name="主人公"]
「顔……？」[pr]

[bgm mode="end"]
[wait_skip time="500"]
[playseEx storage="chime.ogg"]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" kuti="normal"]
どういう意味だろうかと首を傾げていると、[r]
予鈴が鳴った。[pr]

[stopseEx mode="fadeout"]
[bgm id="nichijou_b" mode="play"]

[chara_img name="ririna" mode="face" mayu="kiri" me="normal" kuti="hiraku" ase="true"]
[message_name name="里井 りり奈" mode="show"]
「あ、やば。[r]
[浅利]ちゃんそろそろ戻んないと」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「いろいろ聞かせてくれてありがと」[pr]

[chara_img name="ririna" mode="face" mayu="normal" kuti="warau" ase="false"]
[message_name name="里井 りり奈"]
「いいって。あ、ついでに連絡先交換しとこうよ」[pr]

[chara_img name="ririna" mode="face" kuti="hiraku" ase="true"]
[message_name name="里井 りり奈"]
「って、[浅利]ちゃんはスマホ持ってきてないか」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あるよ」[pr]


[chara_img name="ririna" mode="face" mayu="kiri"]
[message_name name="里井 りり奈"]
「え、校則違反じゃん。Ａクラスなのにいいの？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「バレなきゃいいでしょ」[pr]

[chara_img name="ririna" mode="face" mayu="normal" me="warau" kuti="warau" ase="false"]
[message_name name="里井 りり奈"]
「推せるわ～」[pr]

[memory_end chapter="ch03-3a"]

[bgm mode="end"]

[eval exp="f.sugasato = 'ririna'"]
[jump target="*select_end"]
[s]
[_tb_end_tyrano_code  ]
*select_tatsumi
[tb_start_tyrano_code  ]

[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_school_rouka_e.jpg"]

[chara_img name="mob" cos="men2" mode="show" time="0" wait="false"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]

[bgm id="nichijou_d" mode="play"]
[mask_off]

[sceneTitle text="水曜日｜国立Ｓ学園・Ｅクラス廊下"]
[message_day mode="show" day="水" text="国立Ｓ学園・Ｅクラス廊下"]
[endif]

[message_name name="生徒" mode="show"]
「ああ、ひょっとして須賀のことか？」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「あ、たしかそう」[pr]

[chara_img name="mob" mode="move" posi="right" wait="false"]
[chara_img name="tatsumi" mode="show" posi="left"]
[message_name name="須賀 たつみ"]
「呼んだか？」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name mode="hide"]
振り返ると、そこにはまさに探している人物の[r]
姿があった。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「そうそう。須賀くんだ」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「須賀たつみ。昨日のことなのにもう忘れたのか？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" kuti="warau" ase="true"]
[message_name name="主人公"]
「ごめんね、人の名前覚えるの苦手で……」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="生徒"]
「探してるやつ見付かったんだな。[r]
じゃ、オレもう行くわ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="hohoemu" ase="false"]
[message_name name="主人公"]
「あ、引き留めてごめんね。協力してくれてありがとう」[pr]

[message_name name="生徒"]
「別に……オレ何もしてねぇから」[pr]

[message_name mode="hide"]

[chara_img name="mob" mode="hide"]
[chara_img name="tatsumi" mode="move" posi="center"]

[chara_img name="honoka" mode="face" me="normal"]
ぶっきらぼうに言うと、彼は廊下の先に消えて行った。[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公" mode="show"]
「須賀くん、桐生くんって今日休みなんだね。[r]
理由とか何か聞いてない……？」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「さあ。特に用事あるとかは言ってなかったな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name name="主人公"]
「そうなんだ……あの女の子の方は？」[pr]

[chara_img name="tatsumi" mode="face" me="hannme" kuti="normal"]
[message_name name="須賀 たつみ"]
「桐生、あいつとは連絡先交換してないってよ」[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
[message_name name="主人公"]
「そっか……」[pr]

[chara_img name="tatsumi" mode="face" me="normal" kuti="warau"]
[message_name name="須賀 たつみ"]
「電話番号教えてやろうか？[r]
[浅利]さんからならすぐ出るかもしれん」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公"]
「ううん。電話番号は知ってるんだけど、[r]
体調悪くて寝てるんだったら可哀そうだから……」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="須賀 たつみ"]
「いや。あいつが電話番号教えるってことは、[r]
朝４時にかけてきてもいいやつ判定を[r]
受けたってことだ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="odoroki" kuti="hiraku"]
[message_name name="主人公"]
「え、そうなの？」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「前にそう言ってたんだ。[r]
だから里井には教えないんだと。あいつ話長げぇしな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「そ、そうなんだ」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="須賀 たつみ"]
「だから気になるなら今電話してみろよ。[r]
……って、スマホ持ってないか。校則違反だしな」[pr]

[chara_img name="honoka" mode="face" kuti="warau" ase="false"]
[message_name name="主人公"]
「あるよ」[pr]

[chara_img name="tatsumi" mode="face" me="hannme" ase="true"]
[message_name name="須賀 たつみ"]
「あるんかい。Ａクラスなのにいいのかよ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「バレなければ、持ってないのと同じことだよ」[pr]

[chara_img name="tatsumi" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="須賀 たつみ"]
「真理だな」[pr]

[chara_img name="tatsumi" mode="face" mayu="kiri" kuti="odoroki" ase="true"]
[message_name name="須賀 たつみ"]
「って、お前それ……！」[pr]

[message_name mode="hide"]

[iscript]
$('.layer.3_fore').css({"z-index": 150});
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[image layer="&sf.layFree" name="atsuinu" storage="../image/atsuinu.png" visible="true" left="310" top="65"]

[iscript]
$('.atsuinu').css({"opacity": 0});
[endscript]
[anim name="atsuinu" opacity="255" top="+=20" time="600" effect="easeOutExpo"]
[wait time="600"][wa]
[else]

[image layer="&sf.layFree" name="atsuinu" storage="../image/atsuinu.png" visible="true" left="310" top="85"]
[endif]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「これ？」[pr]

[message_name mode="hide"]

[iscript]
tf.is_skip = TG.stat.is_skip;
[endscript]

[if exp="tf.is_skip != true"]
[anim name="atsuinu" opacity="0" top="+=20" time="400" effect="easeOutExpo"]
[wait time="400"][wa]
[endif]

[freeimage layer="&sf.layFree"]

[iscript]
$('.layer.3_fore').css({"z-index": 12});
[endscript]

[message_name name="須賀 たつみ" mode="show"]
「お前、ちょ、こっち来い、場所変えるぞ」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
何やら目の色が変わった須賀くんに手を引かれ、[r]
近くの空き教室に連れ込まれた。[pr]

[bgm mode="end"]

[window_all_hide]

[wait_skip]
[bgimg storage="bg_school_class_e.jpg" method="fadeInLeft"]

[bgm id="nichijou_c" mode="play"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="tatsumi" mode="show" wait="false"]
[message mode="show"]

[message_day mode="show" day="水" text="国立Ｓ学園・空き教室"]

[message mode="set"]

[chara_img name="tatsumi" mode="face" mayu="kiri" me="toziru" kuti="odoroki" ase="true"]
[message_name name="須賀 たつみ" mode="show"]
「数量限定Ｋマートコラボあついぬストラップ！」[pr]

[message_name mode="hide"]
教室のドアを閉じた途端、[r]
須賀くんは堪え切れない様子でお腹から声を出した。[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公" mode="show"]
「そうだよ。詳しいね」[pr]

[chara_img name="tatsumi" mode="face" me="normal" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「お前それどうやって手に入れたんだ？[r]
俺、開店突したけどもう無かったんだよ」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「私で最後の１つだったみたい」[pr]

[chara_img name="tatsumi" mode="face" ase="true"]
[message_name name="須賀 たつみ"]
「マジかよ、すげー。[r]
って言うかお前あついぬ好きなのか？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau" ase="false"]
[message_name name="主人公"]
「うん。朝の５分アニメも毎日見てるよ」[pr]

[chara_img name="tatsumi" mode="face" mayu="normal" kuti="warau" ase="false"]
[message_name name="須賀 たつみ"]
「ガチじゃん。知ってるやつ初めて会った。[r]
俺も毎朝見てるわ」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「今日の、頭のからしが落ちないように頑張ってるとこ、[r]
かわいかったよね」[pr]

[chara_img name="tatsumi" mode="face" me="warau"]
[message_name name="須賀 たつみ"]
「あーわかるわかる。尻尾がぷるぷるしててさぁ」[pr]

[message_name mode="hide"]
しばらくの間、あついぬトークで盛り上がった。[pr]

[bgm mode="end"]

[window_all_hide]

[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]

[wait_skip]
[bgimg storage="bg_school_class_e.jpg"]

[bgm id="nichijou_d" mode="play"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="tatsumi" mode="show" wait="false"]
[message mode="show"]
[message_day mode="show" day="水" text="国立Ｓ学園・空き教室"]

[message mode="set"]

[chara_img name="tatsumi" mode="face" me="warau" kuti="warau"]
[message_name name="須賀 たつみ" mode="show"]
「はー、こんなに話が合うやつがいるとはな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ね。たまに知ってる人いるけど、[r]
パンに挟まってるだけの犬って言われるし」[pr]

[chara_img name="tatsumi" mode="face" me="normal"]
[message_name name="須賀 たつみ"]
「言われる言われる」[pr]

[chara_img name="tatsumi" mode="face" me="normal" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「にしても……[r]
[浅利]さんって、犬が好きなんだよな？」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「うん。好き」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="須賀 たつみ"]
「桐生のことも“カワイイ～”って感じなのか？」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="toziru" tere="true"]
[message_name name="主人公"]
「確かにもふもふしててかわいい……[r]
けど顔立ちは凛々しくてかっこいい系かなー」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hiraku" tere="false" ase="true"]
[message_name name="主人公"]
「あっ、これ犬扱いに当たりそう……[r]
本人には言わないでね」[pr]

[chara_img name="tatsumi" mode="face" kuti="warau"]
[message_name name="須賀 たつみ"]
「……なるほどな」[pr]

[chara_img name="tatsumi" mode="face" me="toziru"]
[message_name name="須賀 たつみ"]
「桐生から話聞く度に気になってたんだ。[r]
あんだけ犬扱いされるの嫌ってんのに、[r]
犬好きな奴と仲良くできてるんだなって」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="normal" ase="false"]
[message_name name="主人公"]
「うん……全く傷つけてない訳じゃないと思う。[r]
もし何か我慢してたりしたら嫌だなぁ」[pr]

[chara_img name="tatsumi" mode="face" mayu="kiri" me="hannme" kuti="normal"]
[message_name name="須賀 たつみ"]
「あいつ、バカのわりに繊細で面倒くせえからなー」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「何か私のこと言ってなかった……？[r]
“悪気はないんだろうけど”みたいな愚痴……」[pr]

[chara_img name="tatsumi" mode="face" mayu="normal" me="normal" kuti="warau"]
[message_name name="須賀 たつみ"]
「ぜんぜん。[r]
あいつがあんたのこと悪く言うわけないって」[pr]

[chara_img name="honoka" mode="face" mayu="normal"]
[message_name name="主人公"]
「そうなの……？」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「……あー……[r]
一緒にいると楽しいって言ってたからな」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu"]
[message_name name="主人公"]
「そっか……よかった」[pr]

[chara_img name="tatsumi" mode="face" me="toziru" kuti="warau"]
[message_name name="須賀 たつみ"]
「中学ん時のあいつなら、[r]
犬が好きって言うだけで敵意向けられてたかもな」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="true"]
[message_name name="主人公"]
「そ、そうなの？」[pr]

[message_name mode="hide"]
私が桐生くんと出会ったのは、半年前のことだ。[ls][r]
それ以前のことはあまりよく知らない。[pr]

[chara_img name="tatsumi" mode="face" me="normal" kuti="normal"]
[message_name name="須賀 たつみ" mode="show"]
「この辺りって、半獣どころか獣人自体珍しいだろ。[r]
だから昔は犬の姿を面白がられてたりしてた[r]
みたいなんだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="hannme" ase="false"]
[message_name name="主人公"]
「そうだったんだ……」[pr]

[message_name mode="hide"]
だから桐生くんは、[r]
自分のことを「犬」と言われることに抵抗があるのか。[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ" mode="show"]
「俺と桐生は……あと里井も、中学の頃から[r]
同じクラスなんだ。だから中学の時のあいつのことも[r]
よく知ってるんだけどさ」[pr]

[message_name mode="hide"]
[still mode="start" num="3b"]

[message_name name="須賀 たつみ" mode="show"]
「マジで荒れてたからな。喧嘩ばっかりしてたし、[r]
誰彼構わず噛み付くぜって顔してた」[pr]

[message_name name="主人公"]
「お腹すいてる時の顔みたいな？」[pr]

[message_name name="須賀 たつみ"]
「てめーの飯奪ってやるって顔だな」[pr]

[message_name name="須賀 たつみ"]
「でも、あいつがヒーローごっこ始めた頃……[r]
１年の頭辺りかな。喧嘩もやめたし丸くなったんだ」[pr]

[message_name name="主人公"]
「そうだったんだ」[pr]

[message_name name="須賀 たつみ"]
「よかったな、出会ったのが丸くなった後で」[pr]

[message_name name="主人公"]
「う、うん……」[pr]

[message_name mode="hide"]
今の桐生くんからは、あまり想像ができない。[pr]

[still mode="end" storage="bg_school_class_e.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="tatsumi" mode="show"]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「でも……確かに、出会ったのが今年でよかったかも」[pr]

[message_name name="須賀 たつみ"]
「ん？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「私も中学生の時は、[r]
遊んだりする余裕あんまりなかったから」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
中学生の頃のことはあまりよく思い出せない。[ls][r]
というか、思い出せるような思い出が何もないのだ。[pr]

好きなものを一度に失って、時間を潰すためだけに[r]
ただただ勉強をしていた。[ls]無味無臭のつまらない記憶。[ls][r]
それと比べると、今はなんて幸せなんだろうと思う。[pr]

[chara_img name="tatsumi" mode="face" kuti="warau"]
[message_name name="須賀 たつみ" mode="show"]
「人生色々ってやつか。タイミングってあるもんな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="toziru" kuti="hohoemu"]
[message_name name="主人公"]
「ほんと、そう思う」[pr]

[message_name mode="hide"]

[bgm mode="end"]
[wait_skip time="500"]
[playseEx storage="chime.ogg"]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku"]

しみじみと思っていると、予鈴が鳴った。[pr]

[stopseEx mode="fadeout"]
[bgm id="nichijou_d" mode="play"]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ" mode="show"]
「あ……つい話し込んじまった。邪魔して悪かったな」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「ううん。いろいろ話してくれてありがと」[pr]

[chara_img name="tatsumi" mode="face" mayu="kiri" kuti="odoroki" ase="true"]
[message_name name="須賀 たつみ"]
「……あ！[r]
俺があついぬ好きだってこと、誰にも言うなよ」[pr]

[chara_img name="honoka" mode="face" kuti="normal" ase="true"]
[message_name name="主人公"]
「なんで？」[pr]

[chara_img name="tatsumi" mode="face" me="hannme" kuti="normal"]
[message_name name="須賀 たつみ"]
「そんなかわいいもん好きってバレたら[r]
恥ずかしいだろうが」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そんなことないと思うけど、わかった。[r]
誰にも言わない」[pr]

[chara_img name="tatsumi" mode="face" me="toziru" kuti="warau"]
[message_name name="須賀 たつみ"]
「ふー。ひと安心だぜ」[pr]

[memory_end chapter="ch03-3b"]


[bgm mode="end"]

[eval exp="f.sugasato = 'tatsumi'"]
[jump target="*select_end"]
[s]
[_tb_end_tyrano_code  ]
*select_end
[tb_start_tyrano_code  ]
[if exp="f.memoryMode"]
[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]
[showmenubutton]

[image layer="base" storage="bg_school_step_a.jpg"]
[chara_img mode="show" type="heroine" name="honoka" time="0"]

[message mode="show" time="0"]
[mask_off]
[message_day mode="show" day="水" text="国立Ｓ学園・上位棟廊下"]
[eval exp="tf.sugasato = 'ririna'"]

[else]
[window_all_hide]
[wait_skip]
[bgimg storage="bg_school_step_a.jpg" method="fadeInLeft"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[message mode="show"]

[message_day mode="show" day="水" text="国立Ｓ学園・上位棟廊下"]

[message mode="set"]
[endif]

[eval exp="f.dokuhaku_flag = false"]

[if exp="f.root_people >= 3 || f.root_dog >= 3"]
[if exp="f.sugasato == 'tatsumi' || f.sugasato == 'ririna'"]
[eval exp="f.dokuhaku_flag = true"]
[endif]
[endif]


[if exp="f.dokuhaku_flag"]
[bgm id="memory" mode="play"]

教室に戻りながら、先ほど聞いた言葉が頭に残っていた。[pr]

[if exp="f.sugasato == 'ririna'"]
――この辺りじゃ獣人自体珍しいから、[r]
昔いろいろあったみたい。[pr]
[else]
――昔は犬の姿を面白がられてたりしてたみたいなんだ。[pr]
[endif]

[endif]


[if exp="f.dokuhaku_flag && f.root_people >= 3"]
[select_after_image mode="show" storage="../image/select_icon_p.png"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]

*dokuhaku_rootA

私は桐生くんのことが好きだ。いいやつだと思う。[ls][r]
本人はどう思うかわからないが、[r]
それは半獣であることも含めての気持ちだ。[pr]

もし桐生くんが柴犬じゃなければ、半獣じゃなければ、[r]
今の関係になっていなかったかもしれない。[ls][r]
だけどもちろん、それが全てじゃない。[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
桐生くんと出会って、ヒーローごっこに誘われて。[ls][r]
だから今、こんなにも楽しい日々を過ごしている。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h" kuti="normal"]

……これからも、続いてくれるだろうか。[pr]

[select_after_image mode="hide"]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="normal"]

[iscript]
sf.chapter['ch03-4a'] = true;
[endscript]

[endif]


[if exp="f.dokuhaku_flag && f.root_dog >= 3"]
[select_after_image mode="show" storage="../image/select_icon_d.png"]

*dokuhaku_rootB
[chara_img name="honoka" mode="face" mayu="syunn" me="hannme"]
少し、後ろめたい気持ちになった。[pr]

以前、桐生くんは「犬と言われるのはまあいい」と[r]
言っていた。[ls]しかし本当は、半分犬であることを[r]
言及されること自体、嫌なのかもしれない。[pr]

私は桐生くんのことを、大切な友達だと思っている。[ls][r]
だけど、それはそれとして柴犬のことが好き。[r]
だからどうしても、柴犬の姿に魅力を感じてしまう。[pr]

もしその気持ちで桐生くんを傷つけていたら、[r]
私はどうすればいいんだろう。[pr]

[chara_img name="honoka" mode="face" me="toziru"]
どちらも同じくらい好きで、大切な気持ちのに。[pr]

[select_after_image mode="hide"]

[chara_img name="honoka" mode="face" mayu="normal" me="normal"]

[iscript]
sf.chapter['ch03-4b'] = true;
[endscript]

[endif]


[if exp="f.dokuhaku_flag"]
[bgm mode="end"]

[playseEx storage="message.ogg"]
その時、桐生くんからメッセージが届いた。[pr]
[bgm id="nichijou_d" mode="play"]

[else]

[if exp="f.musicNow != 'nichijou_d'"]
[bgm id="nichijou_d" mode="play"]
[endif]

[playseEx storage="message.ogg"]

教室に戻る途中で、桐生くんからメッセージが届いた。[pr]
[endif]

[wait time="10"]

[lineMessageStart img="../image/line_message01.png"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="学校にいるか？" click="false"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="いるよ"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="よかった"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="今日お休み？"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="放課後行く"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="なんで？"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="まってて"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="わかった"]
[lineMessageSet id="honoka" mode="left" name="主人公" text="いつものとこで待ってる"]
[lineMessageSet id="yamato" mode="right" name="桐生くん" text="わかっあ"]
[lineMessageEnd]

[message_day mode="show" day="水" text="国立Ｓ学園・上位棟廊下"]
[chara_img type="heroine" name="honoka" mode="show" time="300" wait="false"]
[message mode="show" anim="fade" time="300"]

[chara_img name="honoka" mode="face" ase="true"]
[message_name name="主人公" mode="show"]（誤字……）[pr]

[message_name mode="hide"]
あまり話が噛み合っていない。[ls][r]
結局何もわからないまま、やり取りは終わった。[pr]

何かあったようだが、とりあえず生きてはいるようだ。[pr]

[memory_end]

[bgm mode="end"]

[_tb_end_tyrano_code  ]
*scene3
[tb_start_tyrano_code  ]
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
[chara_img name="yamato" mode="show" kega="true" time="0"]

[message mode="show" time="0"]
[mask_off]

[else]
[eyecatch]
[image layer="base" storage="bg_machi02.jpg"]
[chara_img name="yamato" mode="show" kega="true" time="0"]
[message_day mode="hide" time="0"]
[eyecatch_off]
[endif]

[sceneTitle text="水曜日｜待ち合わせ場所"]
[message_day mode="show" day="水" text="待ち合わせ場所"]

[bgm id="manuke" mode="play"]

[message mode="set"]
放課後。[ls][r]
待ち合わせ場所に行くと、桐生くんがいた。[pr]

[message_name name="桐生ヤマト" mode="show"]
「よう」[pr]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「どうしたの、その怪我」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru"]
[message_name name="桐生ヤマト"]
「朝、不良３人にバットでボコられた」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal"]
[message_name name="主人公"]
「えっ……動いて大丈夫なの？」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「ああ。[r]
昼頃まではまだ意識がもうろうとしてたんだけど、[r]
今はもうだいぶ回復してる」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
そういえば、前に半獣だから体が丈夫で[r]
回復が早いと言っていた気がする。[pr]

それにしても意識がもうろうとする程とは、[r]
相当痛めつけられたのだろう。[pr]

[if exp="f.sugasato == 'ririna' || f.sugasato == 'tatsumi'"]
*kennka

[chara_img name="honoka" mode="face" mayu="normal" ase="false"]
ただの喧嘩と言えば、昼に聞いた話を思い出した。[ls][r]
桐生くんは喧嘩慣れしているんだったか。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「桐生くん、昔は結構喧嘩してたんだってね。[r]
勝てた？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="odoroki" kuti="okoru" ase="true"]
[message_name name="桐生ヤマト"]
「な、なんで知ってるんだ？」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「教えてもらった」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru"]
[message_name name="桐生ヤマト"]
「誰に……あー……あいつらか」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="toziru" kuti="toziru"]
[message_name name="桐生ヤマト"]
「負けたよ。エモノ持ちだったしな……[r]
ステゴロなら違ってたかもしれないけど」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「ステゴロ……？」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="warau" ase="true"]
[message_name name="桐生ヤマト"]
「あ……素手でする喧嘩のこと。[r]
ヤンキー用語だから覚えなくていいよ」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「そうなんだ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru" ase="false"]
[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[else]

[chara_img name="yamato" mode="face" mayu="normal" kuti="toziru"]
[chara_img name="honoka" mode="face" mayu="normal" ase="false"]

[message_name name="桐生ヤマト" mode="show"]
[endif]

*modori

[message_name name="桐生ヤマト"]
「で、そいつらの狙いが、[r]
どうもヒーローごっこしてるやつみたいなんだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hiraku"]
[message_name name="主人公"]
「バッジを持ってたからやられたってこと？」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生ヤマト"]
「そう。だからそれを伝えに来たのと、[r]
仮にまた絡まれても２人なら倒せるだろうと思って」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「いいやつだ」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="warau"]
[message_name name="桐生ヤマト"]
「だろ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公"]
「でも、私も今バッジ持ってないんだ。[r]
朝普通に負けちゃって」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「そうなのか！　珍しいな」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「強い人だったよ。また戦いたいなぁ」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「よかったな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hiraku"]
[message_name name="主人公"]
「でも、ヒーロー狙いか……中間発表前なのに、[r]
面倒なのが出て来たね」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi" kuti="toziru"]
[message_name name="桐生ヤマト"]
「確かにそうだな……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau"]
[message_name name="主人公"]
「兄ちゃんにも伝えておくよ。[r]
幹部だから、何か対策とか考えてくれるかもしれない」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="warau"]
[message_name name="桐生ヤマト"]
「そっか……！　そうだったな！」[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「俺も一緒に行っていいか？[r]
詳しい状況とか説明した方がいいかもしれない」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「いいよ。兄ちゃん帰って来るの６時頃だから、[r]
ちょっと待ってもらうことになるけど」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「そっか、[浅利]の兄ちゃんって働いてるんだったな」[pr]

[message_name name="主人公"]
「うん。平日は普通に会社に行ってるよ。[r]
土日はヒーローごっこ連盟の本部の方に[r]
顔出してるんだって」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="warau"]
[message_name name="桐生ヤマト"]
「かっこいいよなぁ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「そうかな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
会社員と幹部の兼任、という要素は[r]
果たしてかっこいいのだろうか。[pr]

まあ、兄ちゃんがかっこいいのは否定しないけど。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_asari_living.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kega="true" wait="false"]
[message mode="show"]

[bgm id="nichijou_d" mode="play"]

[sceneTitle text="水曜日｜自宅・リビング"]
[message_day mode="show" day="水" text="自宅・リビング"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message mode="set"]
誰かを家に招き入れるなんて、いつ以来だろう。[ls][r]
小学生の頃には何度かあっただろうか。[pr]

少なくとも中学生以降は、この家は私と兄ちゃんの[r]
２人だけの空間だった。[pr]

両親は、私が産まれた頃に死んでしまったそうだ。[ls][r]
顔もよく覚えていないけど、特に困ったことはない。[r]
私には兄ちゃんがいるし、コロもいたから。[pr]

[message_name name="桐生ヤマト" mode="show"]
「お邪魔します」[pr]

[message_name name="主人公"]
「他に誰もいないし、その辺適当に座ってていいよ」[pr]

[message_name mode="hide"]
その辺、とリビングのソファを指さしてから、[r]
お茶を用意する。[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru"]
キッチンから戻ると、桐生くんは物珍しそうに[r]
部屋を見回していた。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「何か気になるものでもある？」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「いや、うちと違って物が少ないなーと思って」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「私も兄ちゃんもそこまで物欲がないっていうか、[r]
必要なもの以外買ったりしないからね」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「すっきりしてていいなぁ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「桐生くんの家は大家族なんだっけ」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" ase="true"]
[message_name name="桐生ヤマト"]
「まあな。自分の部屋にいても、[r]
誰かしらの声が聞こえてくるから落ち着かないよ」[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公"]
「楽しそうでいいなぁ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="toziru" kuti="toziru" ase="false"]
[message_name name="桐生ヤマト"]
「退屈はしないな。良くも悪くも」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
家が賑やかという状況になったことがないから、[r]
あまり想像ができない。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi" kuti="hiraku"]
[message_name name="桐生ヤマト" mode="show"]
「……[浅利]、その写真は？」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name mode="hide"]
桐生くんは、棚に飾られている写真立てを指して言った。[ls][r]
小学生の頃に撮った、コロがまだ元気だった時の写真だ。[pr]

[chara_img name="honoka" mode="face" mayu="syunn" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「昔うちにいた柴犬だよ。コロって言うの」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="normal" kuti="normal"]
[message_name name="桐生ヤマト"]
「そっか……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「ふふ。かっこいいでしょ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="toziru" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「そうだな。風格がある」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="true"]
[message_name name="主人公"]
「そんなに？」[pr]

[message_name mode="hide"]
柴犬の半獣の目では、私とは違った風に[r]
見えているのだろうか。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_asari_living.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kega="true" wait="false"]
[message mode="show"]
[message_day mode="show" day="水" text="自宅・リビング"]

[message mode="set"]
他愛もない話をしていると、玄関のカギが開く音がした。[ls][r]
あれ、という兄ちゃんの声が聞こえてくる。[pr]

[chara_img name="yamato" mode="move" posi="right" wait="false"]
[chara_img name="haruo" mode="show" posi="left" cos="jacket"]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「おかえり」[pr]

[chara_img name="haruo" mode="face" mayu="kiri" kuti="hiraku" ase="true"]
[message_name name="はるお"]
「うおっ！　友達！？　[ほのか]の友達か！？」[pr]

[message_name name="桐生ヤマト"]
「はじめまして。桐生ヤマトっす」[pr]

[chara_img name="haruo" mode="face" mayu="normal" kuti="warau" ase="false"]
[message_name name="はるお"]
「そうか、君が桐生くんか！[r]
妹がお世話になってます」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生ヤマト"]
「いや、こっちこそ……」[pr]

[chara_img name="haruo" mode="face" mayu="kiri" me="warau"]
[message_name name="はるお"]
「あ、飯食ってくか？　もう１人分くらい作れるぞ！」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" ase="true"]
[message_name name="桐生ヤマト"]
「え！　いや、用が済んだらすぐ帰るんで！[r]
お構いなく！」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name mode="hide"]
久しぶりに友達を連れてきたことで、[r]
兄ちゃんも少しはしゃいでいるようだ。[ls][r]
恥ずかしいからやめてほしい。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" ase="false"]
[message_name name="主人公" mode="show"]
「あのね、兄ちゃんに話したいことがあるの」[pr]

[chara_img name="haruo" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_name name="はるお"]
「えっ、俺に？」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku" ase="false"]
[message_name name="桐生ヤマト"]
「実は……」[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_asari_living.jpg"]

[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kega="true" posi="right" wait="false"]
[chara_img name="haruo" mode="show" posi="left" wait="false" cos="jacket"]
[message mode="show"]
[message_day mode="show" day="水" text="自宅・リビング"]

[chara_img name="haruo" mode="face" mayu="kiri" me="hannme"]
[message_name name="はるお" mode="show"]
「バッジ狩りねぇ……[r]
大事な時期だってのに、迷惑な輩がいたもんだぜ」[pr]

[chara_img name="haruo" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="はるお"]
「桐生くんの怪我は大丈夫なのか？」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生ヤマト"]
「あ、ありがとうございます。頑丈なんで大丈夫っす」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「そうか。情報提供ありがとな。上にも報告しておこう」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name mode="hide"]
これで一安心だ。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「兄ちゃん。喧嘩になりそうな時って[r]
どうすればいいの？」[pr]

[chara_img name="haruo" mode="face" mayu="kiri" me="hannme" kuti="hiraku"]
[message_name name="はるお"]
「逃げることが第一だが、どうしても難しい時は[r]
できるだけ人気のないところで倒すしかないな」[pr]

[chara_img name="yamato" mode="face" kuti="toziru" ase="true"]
[chara_img name="haruo" mode="face" me="toziru" kuti="normal"]
[message_name name="はるお"]
「余裕があればバッジも外しとけよ。[r]
最悪、ヒーローごっこに関わってるってだけで[r]
こっちのせいにされちまうからな」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name name="主人公"]
「正当防衛なのになぁ」[pr]

[chara_img name="yamato" mode="face" ase="false"]
[chara_img name="haruo" mode="face" mayu="normal" me="normal" kuti="hiraku"]
[message_name name="はるお"]
「関係ないやつからしたら、細かいところなんて[r]
どうでもいいんだ。騒ぎを起こしたってだけで[r]
悪だからな」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「まあ印象操作だとか、そういう大人の事情は[r]
こっちでなんとかするから、お前らは健康的に[r]
楽しく遊んどけ」[pr]

[message_name mode="hide"]
簡単そうに言っているが、実際はそう単純には[r]
片付かない問題だろう。[pr]

ヒーローごっこは確かに[r]
「誰が見ても安全で楽しい遊び」かと言えば、[r]
そうじゃない。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hohoemu"]
まあ兄ちゃんの言う通り、内側にいる私たちは[r]
精々明るく楽しく遊んでいることにしよう。[pr]

[chara_img name="haruo" mode="face" me="hannme" kuti="hiraku"]
[chara_img name="haruo" mode="move" posi="left2"]
[message_name name="はるお" mode="show"]
「……[ほのか]、ちょっと来てくれ」[pr]

[chara_img name="honoka" mode="face" kuti="normal"]
[message_name mode="hide"]
不意に兄ちゃんがちょいちょいと手招きをした。[pr]

[chara_img name="yamato" mode="hide"]

首を傾げながら近寄ると、[r]
どことなく落ち着かない様子で言った。[pr]

[chara_img name="haruo" mode="face" me="toziru" kuti="normal"]
[message_name name="はるお" mode="show"]
「桐生くんって、確か犬って言われるのが[r]
イヤなんだったよな？」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「えーと……バカにされるのがイヤって言ってたよ」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hiraku"]
[message_name name="はるお"]
「うーん……じゃあ、変身したところが見てみたい[r]
って言うのは大丈夫だと思うか？」[pr]

[chara_img name="honoka" mode="face" me="sorashi_h" kuti="normal" ase="true"]
[message_name name="主人公"]
「微妙なところかも……そんなに見たいんだ」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「そりゃあ……柴犬好きとしては」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
どうやら興味が抑えきれないらしい。[r]
気持ちはわかる。[pr]

[chara_img name="haruo" mode="face" me="toziru" kuti="normal"]
[message_name name="はるお" mode="show"]
「でも、面白がられるのもイヤだろうしな……[r]
やっぱり、もう少し仲良くなってからにしよう」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="warau"]
[message_name name="主人公"]
「仲良くなる気なんだ……」[pr]

[message_name mode="hide"]
兄ちゃんは１人納得したように頷いていた。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal" ase="false"]
ふと、桐生くんをほったらかしにしていたことを[r]
思い出し、振り返る。[pr]

[chara_img name="yamato_dog" kega="true" me="hannme" ase="true" mode="show" posi="right"]
[chara_img name="haruo" mode="move" posi="left"]
[chara_img name="haruo" mode="face" me="normal"]

[message_name name="桐生ヤマト" mode="show"]
「…………」[pr]

[message_name mode="hide"]
桐生くんはいつの間にか犬の姿になっていた。[ls][r]
どうやら聞こえていたようだ。[r]
苦笑いを零しながら佇んでいる。[pr]

[chara_img name="haruo" mode="face" kuti="hiraku" ase="true"]
[message_name name="はるお" mode="show"]
「わっ」[pr]

[chara_img name="yamato_dog" mode="face" me="toziru"]
[message_name name="桐生ヤマト"]
「見せるくらいなら、まあ、いいっすよ」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="はるお"]
「おお……聞いてた通り毛並みが綺麗だな……！[r]
凛々しい系の顔立ちだな。かっこいいな～」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「ね～」[pr]

[chara_img name="yamato_dog" mode="face" me="hannme" kuti="warau" tere="true"]
[message_name name="桐生ヤマト"]
「……もういいっすか」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「あ、そうだな。はしゃいでごめんな」[pr]

[message_name mode="hide"]
[chara_img name="yamato_dog" mode="hide"]
[chara_img name="yamato" mode="show" kega="true" me="sorashi_h" kuti="toziru" tere="true" ase="true" posi="right"]

[message_name name="桐生ヤマト" mode="show"]
「いや……」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「見せてくれてありがとなー」[pr]

[chara_img name="yamato" mode="face" me="odoroki" kuti="okoru" tere="false"]
[message_name name="桐生ヤマト"]
「うおっ……」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
[message_name mode="hide"]
兄ちゃんは上機嫌に笑いながら、桐生くんの頭を[r]
わしわしと撫でた。[pr]

いつもの、あのちょっと乱暴な撫で方。[r]
でも手が離れる時に髪を直してくれる。[ls][r]
だからなんとなく、許してしまう。[pr]

桐生くんもそんな風に思うだろうか。[ls][r]
じっと見守っていると、視線に気が付いたのか[r]
兄ちゃんがこちらを向いた。[pr]

[chara_img name="yamato" mode="face" ase="false"]
[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「なんだ、[ほのか]も撫でてほしいのか？」[pr]

[chara_img name="honoka" mode="face" mayu="kiri" me="normal" kuti="hiraku" ase="true"]
[message_name name="主人公"]
「え、別に今はいいよ」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「遠慮すんなって」[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公"]
「いいってばー」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" mayu="normal" me="hannme" kuti="normal"]
標的が私に移ったようだ。[ls][r]
自分が撫でたいだけだろうと不服に思いながら、[r]
大人しく撫でられておく。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu" ase="false"]
撫でられ終わる頃には、やっぱり許してしまう。[r]
不思議な手だ。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_asari_mae.jpg" method="fadeInLeft"]
[chara_img type="heroine" name="honoka" mode="show" wait="false"]
[chara_img name="yamato" mode="show" kega="true" wait="false"]
[message mode="show"]

[sceneTitle text="水曜日｜自宅・玄関"]
[message_day mode="show" day="水" text="自宅・玄関"]

[message mode="set"]
[message_name name="桐生ヤマト" mode="show"]
「[浅利]の兄ちゃん、いい人だな」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「うん」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name mode="hide"]
そろそろ日が暮れるので、桐生くんを玄関先まで送った。[ls][r]
しかしあんなことがあったばかりなので、少し心配だ。[pr]

[chara_img name="honoka" mode="face" me="hannme"]
[message_name name="主人公" mode="show"]
「１人で大丈夫？」[pr]

[chara_img name="yamato" mode="face" me="warau"]
[message_name name="桐生ヤマト"]
「大丈夫だよ。バッジがない時は襲われないだろうし」[pr]

[chara_img name="honoka" mode="face" me="normal"]
[message_name mode="hide"]
たしかに、不良たちはバッジを目印に[r]
襲っていたのだろう。[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「でも、気をつけてね」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生ヤマト"]
「[浅利]もな。明日は天気が崩れそうだし」[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku"]
[message_name name="主人公"]
「そうなの？」[pr]

[chara_img name="yamato" mode="face" me="warau" kuti="normal"]
[message_name name="桐生ヤマト"]
「雨の匂いがする。じゃあな」[pr]

[message_name mode="hide"]
[chara_img name="yamato" mode="hide"]

[chara_img name="honoka" mode="face" mayu="normal" kuti="normal"]
桐生くんは確信を持っているように笑うと、[r]
背を向けて歩いて行った。[pr]

空を見上げると、うっすらと[r]
雲がかかっているくらいだった。[pr]


[bgm mode="end"]

[_tb_end_tyrano_code  ]
*scene4
[tb_start_tyrano_code  ]
[eyecatch]
[image layer="base" storage="bg_asari_living.jpg"]
[message_day mode="hide" time="0"]
[eyecatch_off]

[bgm id="night" mode="play"]

[sceneTitle text="水曜日｜自宅・リビング"]
[message_day mode="show" day="水" text="自宅・リビング"]

[message mode="set"]

夜。[ls][r]
テレビをつけると、ちょうど気象予報が[r]
流れているところだった。 [pr]

[message_name name="アナウンサー" mode="show"]
「大型で強い台風19号が、本国に接近しています。[r]
明日の夜にも上陸し、明け方にかけて本国を[r]
横断する模様です」[pr]

[message_name mode="hide"]
桐生くんの言った通りだ。[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公" mode="show"]
「兄ちゃん、明日夜から台風だって」[pr]

[message_name mode="hide"]

[chara_img name="haruo" mode="show"]
[chara_img name="haruo" mode="face" mayu="kiri" me="hannme"]
[message_name name="はるお" mode="show"]
「まじかよ。帰って来れるかわかんねぇな……」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="normal"]
[message_name mode="hide"]
明日、兄ちゃんは仕事の出張で都心に行くらしい。[ls][r]
夜に帰って来るとなると、ちょうど台風の[r]
真っただ中になるだろう。[pr]

[chara_img name="haruo" mode="face" mayu="normal" me="normal"]
[message_name name="はるお" mode="show"]
「早めに帰って来れそうならなんとかするけど、[r]
最悪泊まりになるかもな……」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name name="主人公"]
「そっか」[pr]

[chara_img name="haruo" mode="face" me="toziru" ase="true"]
[message_name name="はるお"]
「ううーん……」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="normal"]
[message_name mode="hide"]
兄ちゃんは口うるさい訳じゃないけど、過保護だ。[ls][r]
あまり私を１人にさせておきたくないと[r]
思っているらしい。[pr]

中学生の頃は兄ちゃんの仕事が忙しくて、[r]
ほとんど会えない期間もあった。[pr]

今はもう時間に融通が利くようになったとかで、[r]
夕方には家に帰っているが。[pr]

[if exp="f.root_people >= 3 || f.root_dog >= 3"]
*rootA_B

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「私なら１人でも大丈夫だよ。[r]
無理して帰って来ようとしなくていいからね」[pr]

[chara_img name="haruo" mode="face" mayu="normal" me="normal" kuti="hohoemu" ase="false"]
[message_name name="はるお"]
「……わかった。[r]
[ほのか]ももう高校生だもんな」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「うん」[pr]

[message_name mode="hide"]
兄ちゃんは観念したように肩をすくめると、[r]
私の頭をわしわしと撫でた。[pr]

[else]
*rootC

[chara_img name="haruo" mode="face" mayu="kiri" me="normal" kuti="hiraku" ase="false"]
[message_name name="はるお" mode="show"]
「[ほのか]、明日ってテストとかあるか？」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu" kuti="hiraku"]
[message_name name="主人公"]
「ないけど……なんで？」[pr]

[chara_img name="haruo" mode="face" mayu="normal" kuti="hohoemu"]
[message_name name="はるお"]
「よし。じゃあ一緒に行くか」[pr]

[chara_img name="honoka" mode="face" me="odoroki" ase="true"]
[message_name name="主人公"]
「えっ、出張に？」[pr]

[chara_img name="haruo" mode="face" me="toziru" kuti="warau"]
[message_name name="はるお"]
「ああ。どうせ明後日は祝日でお互いに休みだし、[r]
いっそ泊まりで遊びに行くのも悪くないな……」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[message_name mode="hide"]
１人で盛り上がり始めてしまった。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「確かに楽しそうだけど、学校サボってもいいの？」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「明日はサボりかたの勉強の日だ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="warau"]
[message_name name="主人公"]
「なにそれ」[pr]

[message_name mode="hide"]
[chara_img name="honoka" mode="face" mayu="komaru" me="normal" kuti="hohoemu"]
どうやら私を連れて行く気満々のようだ。[ls][r]
まあ、確かに１日くらいサボったところで[r]
問題があるわけでもない。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="warau" ase="false"]
それに、兄ちゃんと泊りがけでどこかに行くなんて[r]
はじめてだ。[ls]都心にも行ったことがないし、[r]
楽しみになってきた。[pr]

[endif]

[memory_end chapter="ch03-5"]


[bgm mode="end"]

[window_all_hide]
[wait_skip]

[_tb_end_tyrano_code  ]
*next
[tb_start_tyrano_code  ]

[if exp="f.root_people >= 3 || f.root_dog >= 3"]
[jump storage="mainStory04.ks"]
[else]
[jump storage="mainStoryRootC.ks"]
[endif]

[_tb_end_tyrano_code  ]
