[_tb_system_call storage=system/_subStory03.ks]

*start

[tb_start_tyrano_code]

[eval exp="f.oldMusic = f.musicNow"]
[bgm mode="end"]

[mask time="1000"]
[cm]
[freeLayer]
[freeimage layer="0"]

[showmenubutton]
[endnolog]

[image layer="base" storage="bg_sky.jpg"]

[mask_off]

[sceneTitle text="後日談「君のために、俺のために。」[pr]"]

[_tb_end_tyrano_code]

*scene1

[tb_start_tyrano_code]

[bgm id="nichijou_b" mode="play"]

[message mode="show"]

[ほのか]と付き合う事になってから、しばらくが経つ。[ls][r]
ずっと「そうなれたらいいな」とは思っていたけど、[r]
いざなってみると、どうしたらいいかよくわからない。[pr]

だけど１つ確かなのは、とにかく幸せだということだ。[ls][r]
すれ違う人全員にありがとうと言いたいくらい。[pr]

ただ、少し気掛かりなことがあった。[pr]

[eyecatch]
[image layer="base" storage="bg_school_ura.jpg"]
[chara_img mode="show" name="honoka" time="0" posi="left" kuti="hohoemu"]
[chara_img mode="show" name="yamato" time="0" posi="right" kuti="toziru" badge="true"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[message_day mode="show" day="月" text="中庭"]

[message mode="set"]

昼休み。[pr]

下位棟に遊びに来た[ほのか]と２人で、[r]
中庭で昼ご飯を食べているところだ。[pr]

この中庭は人通りが少ない。[r]
落ち着いて話すには絶好の場所だ。[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「あのさ、[ほのか]……」[pr]

[message_name name="主人公"]
「なに？」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「……俺と付き合ってること、はるおさんに話したか？」[pr]

[message_name mode="hide"]
俺が気掛かりなのは、[r]
はるおさんにどう思われているかだ。[pr]

[ほのか]の家は、[ほのか]とはるおさんの２人家族。[ls][r]
[ほのか]の話によると、はるおさんは兄であり、[r]
父でもあり、母でもある。そんな存在なのだそうだ。[pr]

[chara_img name="yamato" mode="face" me="toziru" ase="true"]
はるおさんにしてみれば、そんな風に大事に育ててきた[r]
[ほのか]に恋人ができたのだ。[pr]

[bgm mode="end"]

[chara_img mode="hide_all" wait="false"]
[bgimg storage="black.jpg" time="400"]

[chara_img mode="show" name="haruo" me="hannme" kuti="hiraku"]

[playseEx storage="naguru.ogg"]
[message_name name="はるお" mode="show"]
「あんな不良は認めん」[pr]

[message_name mode="hide"]
こんなことになってもおかしくはない。[pr]

[chara_img mode="hide_all" wait="false"]
[bgimg storage="bg_school_ura.jpg" time="400"]

[bgm id="nichijou_b" mode="play"]

[chara_img mode="show" name="honoka" posi="left" kuti="hohoemu" wait="false"]
[chara_img mode="show" name="yamato" posi="right" me="toziru" kuti="toziru" ase="true" badge="true"]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「すぐ話したよ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal"]
[message_name name="桐生 ヤマト"]
「な、なんて言ってた？」[pr]

[chara_img name="honoka" mode="face" me="warau"]
[message_name name="主人公"]
「よかったなーって」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" kuti="normal"]
[message_name name="桐生 ヤマト"]
「そっか……」[pr]

[message_name mode="hide"]
[ほのか]は機嫌よさそうににこにこと笑っている。[ls][r]
どうやら本当に、悪い反応ではなかったのだろう。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi_h" kuti="toziru"]
でも、だからといって「ああよかった」で終わらせて[r]
いい話でもない。[ls]ひょっとしたら、内心は不安に[r]
思っていたりするかもしれない。[pr]

やっぱり、挨拶の１つでもした方がいいだろうか。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「今日……[r]
いや、明日[ほのか]の家に行ってもいいか？」[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公"]
「いいよ。たぶん明日は兄ちゃんが帰って来るの[r]
早いけど、それでもよければ」[pr]

[chara_img name="yamato" mode="face" kuti="normal"]
[message_name name="桐生 ヤマト"]
「大丈夫だよ」[pr]

[message_name mode="hide"]
むしろ好都合だ。[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="hohoemu" tere="true"]
[message_name name="主人公" mode="show"]
「あ……こういうのをおうちデートって言うのかな」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="toziru" ase="true" tere="true"]
[message_name mode="hide"]
思い出したように言うと、ふにゃりと恥ずかしそうに[r]
笑った。[ls][ほのか]は素直だ。言葉も表情も。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi_h" kuti="toziru" ase="false"]
[ほのか]は俺と遊んだり、デートしたり、[r]
手を繋いだりすることを一々喜んでくれる。[pr]

俺が好きだから、と考えると照れ臭いけど、[r]
そういうことなんだろう。[ls][r]
いまだに少し信じられない。[pr]

[chara_img name="yamato" mode="face" me="toziru"]
とにかく可愛くて堪らない。[ls][r]
ああ抱きしめたい。できればキスしたい。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト" mode="show"]
「[ほのか]……」[pr]

[message_name mode="hide"]
[bgm mode="end"]

[playseEx storage="chime.ogg"]

[chara_img name="yamato" mode="face" me="normal" mayu="odoroki" kuti="toziru" ase="true" tere="false"]
[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" tere="false"]
見計らったようにチャイムが鳴った。[ls][r]
浮かれていた気分が一気に現実に引き戻された。[pr]

[stopseEx mode="fadeout"]

[bgm id="nichijou_d" mode="play"]

[chara_img name="yamato" mode="face" me="toziru" mayu="normal" kuti="toziru"]
そうだ。冷静にならなければ。[ls][r]
俺には挨拶という重大なミッションが待っている。[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「……じゃあ、また放課後に」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「うん。またね」[pr]

[message_name mode="hide"]

[chara_img mode="hide" name="honoka"]
[chara_img mode="move" name="yamato" posi="center"]

[chara_img name="yamato" mode="face" me="hannme" kuti="toziru" ase="true"]
上位棟に帰る[ほのか]を見送りながら、[r]
俺は小さくため息を吐いた。[pr]

[chara_img name="yamato" mode="face" me="toziru" ase="false"]
挨拶とは言っても結婚の挨拶じゃあるまいし、[r]
そこまで畏まらなくてもいいだろう。[pr]

ただ「よろしくお願いします」と言えばそれでいい。[r]
そのはずだ。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]（……いや、待てよ）[pr]

[message_name mode="hide"]
もしはるおさんが、内心は物凄く反対していたとしたら。[ls][r]
あんなやつに任せて大丈夫なのか、[r]
と思われていたとしたら。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" ase="false"]
窓に映った自分の姿を見る。[ls][r]
誠実さの欠片もない不良がそこにいた。[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="hannme" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
「…………」[pr]

[message_name mode="hide"]
大丈夫だろうか。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_school_class_e.jpg" method="fadeInLeft"]

[chara_img mode="show" name="yamato" posi="right2" wait="false" kuti="toziru" badge="true"]
[chara_img mode="show" name="ririna" posi="center" wait="false"]
[chara_img mode="show" name="tatsumi" posi="left2" wait="false"]

[message mode="show"]

[message_day mode="show" day="月" text="教室・Ｅクラス"]

[message mode="set"]
[message_name name="桐生 ヤマト" mode="show"]
「……って訳なんだけど、どう思う？」[pr]

[chara_img name="tatsumi" mode="face" kuti="hiraku"]
[message_name name="須賀 たつみ"]
「お前って、慎重っていうか心配性っていうか[r]
ヘタレだよな」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
「慎重までで止めといてくれよ」[pr]

[chara_img name="ririna" mode="face" kuti="warau"]
[message_name name="里井 りり奈"]
「どっちでもいいんじゃない？」[pr]

[chara_img name="tatsumi" mode="face" kuti="warau"]
[message_name name="須賀 たつみ"]
「だよな」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「身も蓋もない……」[pr]

[chara_img name="tatsumi" mode="face" kuti="normal"]
[message_name name="須賀 たつみ"]
「まあどっちかと言えば、挨拶の時だけ取り繕って[r]
誤魔化すより、素の自分を見せた方が誠実だな」[pr]

[chara_img name="ririna" mode="face" kuti="hiraku"]
[message_name name="里井 りり奈"]
「え、そう？　あたしは、しっかりする時は[r]
しっかりするって感じで格好整えた方が誠実だと[r]
思うけど」[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="sorashi"]
[message_name name="桐生 ヤマト"]
「そうなんだよな……」[pr]

[message_name mode="hide"]
どちらの考えもわかる。だから悩んでいるのだ。[pr]

[chara_img name="ririna" mode="face" kuti="warau"]
[message_name name="里井 りり奈" mode="show"]
「ま、ほんとにお兄さんが内心反対してるんだとしたら、[r]
何着てっても反対されるだろうから気楽に行きなって」[pr]

[chara_img name="tatsumi" mode="face" kuti="warau"]
[message_name name="須賀 たつみ"]
「だな。ボロボロになっても“妹さんを俺に[r]
ください！”って縋り付く心の準備だけしとけよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="hannme"]
[message_name name="桐生 ヤマト"]
「他人事だと思って……」[pr]

[message_name mode="hide"]
それで励ましてるつもりなんだろうか。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト" mode="show"]
「……でも、そうだよな、どっちにもリスクはあるし、[r]
悩んでも仕方ないか」[pr]

[message_name mode="hide"]
失敗する可能性も、上手く行く可能性も半々だ。[ls][r]
だとしたら、失敗しても後悔しない方を[r]
選ぶことにしよう。[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「ありがとな、２人とも」[pr]

[chara_img name="ririna" mode="face" kuti="normal"]
[message_name name="里井 りり奈"]
「頑張ってきなよ」[pr]

[message_name name="須賀 たつみ"]
「応援だけしてるぜ」[pr]

[message_name mode="hide"]

[chara_img mode="hide_all"]
[bgimg storage="black.jpg"]

せっかく[ほのか]と付き合えたのだから、[r]
その家族に嫌われたくない。[ls][r]
そう思っているのも確かだけど、それだけじゃなくて。[pr]

もし妹に恋人ができた時、俺もきっと心配に思うだろう。[ls][r]
そいつはどんなやつなのか、妹のことを[r]
傷つけたりしないか、気になるはずだ。[pr]

はるおさんもそうなのかは分からないけど。[ls][r]
俺は、俺が[ほのか]を大事にする意志があることを、[r]
はるおさんに伝えておきたいと思うのだ。[pr]

[ほのか]は、はるおさんの大事な人だから。[pr]

[wait_skip]
[window_all_hide]
[wait_skip]

[bgm mode="end"]

[weekCutIn title="火曜日" text="Tuesday"]
[chara_img name="yamato" mode="show" time="0" kuti="toziru" cos="seihuku"]
[image layer="base" storage="bg_kiryu_yamato.jpg"]
[message mode="show" time="0"]
[weekCutOut]

[bgm id="nichijou_d" mode="play"]

[message_day mode="show" day="火" text="自宅・自分の部屋"]
翌朝。[ls][r]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
鏡に映る自分の姿を見て、思わず苦笑いが零れた。[pr]

[message_name name="桐生 ヤマト" mode="show"]
（……やっぱり似合わないな、制服）[pr]

[message_name mode="hide"]
やっぱり服装からちゃんとしようと思い、[r]
制服を着て行くことにした。[pr]

普通の制服、普通の地毛。[ls][r]
俺が勝手に「俺のスタイルだ」と定めていたものを[r]
すべて取っ払った、飾り気のない俺がそこにいる。[pr]

制服姿の自分を見るのは、いつ以来だろうか。[ls][r]
制服はどうにもしっくり来なくて、ジャージの方が[r]
似合うなと思って以来ずっとジャージで過ごしていた。[pr]

改めて着ても、やっぱり似合わない。[ls][r]
久しぶりに着るからサイズが合わないせいも[r]
あるのだろうけど。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
（でも……なんだろう。思ってたより変わらないな）[pr]

[message_name mode="hide"]
かっこよさの欠片もないけど、これはこれで「俺」だ。[ls][r]
思っていたよりも、悪くなかった。[pr]

[window_all_hide]
[wait_skip]
[bgimg storage="bg_kiryu_asuka_door.jpg" method="fadeInLeft"]

[chara_img name="yamato" mode="show" posi="right" wait="false" kuti="toziru" cos="seihuku"]
[chara_img name="asuka" mode="show" posi="left" wait="false"]
[message mode="show"]

[message_day mode="show" day="火" text="自宅・廊下"]

[chara_img name="asuka" mode="face" kuti="hiraku" ase="true"]
[message_name name="桐生 アスカ" mode="show"]
「今日ってお葬式の予定あった……？」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「違うよ」[pr]

[message_name mode="hide"]
部屋を出て早々、姉ちゃんと鉢合わせてしまった。[pr]

確かに俺が制服を着るのは、[r]
お葬式だとかお通夜だとかの畏まった行事の時だ。[ls][r]
それが刷り込まれているらしい。[pr]

[chara_img name="asuka" mode="face" mayu="normal" ase="false"]
[message_name name="桐生 アスカ" mode="show"]
「なんだ、びっくりした。不良やめたの？」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="toziru"]
[message_name name="桐生 ヤマト"]
「やめたっていうか……たまにはいいかなと思って」[pr]

[message_name mode="hide"]
[ほのか]の家に挨拶に、なんて言ったら[r]
茶化されるに決まっている。[ls][r]
適当に誤魔化して早めに家を出よう。[pr]

[chara_img name="asuka" mode="face" me="hannme" kuti="normal"]
[message_name name="桐生 アスカ" mode="show"]
「ふーん……？」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「なんだよ……」[pr]

[chara_img name="asuka" mode="face" me="toziru" kuti="warau"]
[message_name name="桐生 アスカ"]
「なんでもないわ。その格好、結構似合ってるわよ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal" ase="false"]
[message_name name="桐生 ヤマト"]
「……俺もそう思う」[pr]

[message_name mode="hide"]
姉ちゃんは嫌にカンが鋭いところがある。[ls][r]
なんでも見透かされているような。[r]
でも、あえて何も言わずにいてくれているような。[pr]

姉ちゃんと話して、少し気分が軽くなった。[pr]

[chara_img name="asuka" mode="hide" posi="left"]
[chara_img name="nanami" mode="show" posi="left"]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="toziru"]
今度こそ玄関に向かおうとした時、[r]
今度はナナミが部屋から出てきた。[pr]

[chara_img name="nanami" mode="face" kuti="hiraku" ase="true"]
[message_name name="桐生 ナナミ" mode="show"]
「今日お葬式だっけ……？」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="hannme" kuti="warau" ase="true"]
[message_name name="桐生 ヤマト"]
「違うよ」[pr]

[message_name mode="hide"]
この家では、俺の制服姿とお葬式が[r]
すっかりイコールで結ばれてしまっているようだ。[pr]

[bgm mode="end"]

[eyecatch]
[image layer="base" storage="bg_machi02.jpg"]
[window_all_hide time="0"]
[chara_img mode="show" name="honoka" time="0" posi="left"]
[chara_img mode="show" name="yamato" time="0" posi="right" cos="seihuku"]
[message_day mode="hide" time="0"]
[message mode="show" time="0"]
[eyecatch_off]

[bgm id="nichijou_a" mode="play"]

[message_day mode="show" day="火" text="待ち合わせ場所"]

[message mode="set"]

[chara_img name="honoka" mode="face" me="odoroki" kuti="hiraku" ase="true"]
[message_name name="主人公" mode="show"]
「あれっ、赤くない」[pr]

[chara_img name="yamato" mode="face" me="hannme" ase="true"]
[message_name mode="hide"]
放課後。[ls][r]
いつもの待ち合わせ場所に現れた[ほのか]は、[r]
俺を見るなりそう言った。[pr]

[ほのか]の中で、[r]
俺の特徴は「赤いやつ」なのだろうか。[pr]

[chara_img name="honoka" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="主人公" mode="show"]
「制服着てるの初めて見た。わあ、新鮮」[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="toziru" tere="true"]
[message_name mode="hide"]
くすくすと楽しそうに笑っている。[ls][r]
からかわれている訳じゃないのはわかるけど、[r]
ちょっと恥ずかしいというか、むず痒い。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「でも、急にどうしたの？」[pr]

[chara_img name="yamato" mode="face" me="normal" tere="false" ase="false"]
[message_name name="桐生 ヤマト"]
「今日、はるおさんに軽く挨拶しようと思ってるんだ。[r]
だから俺なりに正装してきた」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「挨拶？」[pr]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト"]
「そう。付き合うことになった訳だし……[r]
一応、早いうちに顔出しておいた方がいいかと思って」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="warau"]
[message_name name="主人公"]
「なんだ、それでうちに来たかったの？[r]
先に言ってくれればよかったのに」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" kuti="normal" tere="true" ase="true"]
[message_name name="桐生 ヤマト"]
「その……心の準備とかいろいろあって。[r]
ごめんな、急に」[pr]

[chara_img name="honoka" mode="face" kuti="hohoemu"]
[message_name name="主人公"]
「ううん。兄ちゃんも今日普通に帰って来るから、[r]
大丈夫だけど……」[pr]

[chara_img name="honoka" mode="face" me="hannme" kuti="normal"]
[message_name name="主人公"]
「…………」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="normal" kuti="hiraku" tere="false" ase="false"]
[message_name name="桐生 ヤマト"]
「どうした？」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku" tere="true"]
[message_name name="主人公"]
「……その、私、ヤマトくんが真剣に考えてくれてる間、[r]
ただヤマトくんが遊びにくるーって能天気に[r]
はしゃいでたんだなーと思って……」[pr]

[chara_img name="yamato" mode="face" me="odoroki" kuti="toziru" tere="true"]
[message_name mode="hide"]
[ほのか]は心底恥ずかしそうな、[r]
困ったような顔で弱々しく呟いた。[ls][r]
はしゃいでたのか。かわいい。[pr]

[chara_img name="yamato" mode="face" mayu="komaru" me="normal" kuti="normal" tere="false"]
[message_name name="桐生 ヤマト" mode="show"]
「俺が勝手に考えてただけだから、気にしなくていいよ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="桐生 ヤマト"]
「それに俺も、今日[ほのか]と遊ぶの[r]
楽しみにしてたんだ。同じだよ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="主人公"]
「ほんと？　えへ……そっか。嬉しい」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="toziru" tere="true"]
[message_name mode="hide"]
本当は今日だけじゃなくて、放課後に会う日は[r]
いつだって楽しみにしている。[pr]

だけどそこまで行くとさすがに浮かれすぎかな、[r]
なんて。[pr]

[chara_img name="yamato" mode="face" me="toziru"]
須賀の言う通り、俺は慎重で心配性でヘタレだ。[ls][r]
[ほのか]みたいに素直に全部言えるようになるのは、[r]
まだ時間がかかりそうだ。[pr]

[bgm mode="end"]

[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_asari_honoka.jpg" method="fadeInLeft"]

[bgm id="nichijou_d" mode="play"]

[chara_img name="yamato" mode="show" posi="right" wait="false" cos="seihuku"]
[chara_img name="honoka" mode="show" posi="left" kuti="hohoemu" wait="false"]
[message mode="show"]

[message_day mode="show" day="火" text="浅利家・ほのかの部屋"]

[chara_img name="honoka" mode="face" me="warau" kuti="warau"]
[message_name name="主人公" mode="show"]
「お茶入れてくるから、その辺に座って待っててね」[pr]

[message_name mode="hide"]

[chara_img name="honoka" mode="hide"]

[chara_img name="yamato" mode="face" kuti="toziru"]
[chara_img name="yamato" mode="move" posi="center"]

[ほのか]の部屋に通されて、[r]
”その辺”と言われたベッドの縁に腰かける。[ls][r]
この部屋に入るのも、もう何度目かのことになる。[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="toziru" tere="true" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
（すっげーいい匂いする……）[pr]

[message_name mode="hide"]
部屋に入る度に思うことだが、[r]
全体からふわふわと[ほのか]の匂いを感じる。[ls][r]
シャンプーと、柔軟剤と、[ほのか]自身の匂いだ。[pr]

[chara_img name="yamato" mode="face" me="sorashi_h" ase="false"]
俺は鼻が利くから、匂いに対するこだわりも[r]
結構強い方なのだと思う。[pr]

[chara_img name="yamato" mode="face" me="toziru" kuti="normal"]
[ほのか]の匂いは、落ち着く匂いだ。[r]
程よく整っていて、だけど飾り気がない。[ls][r]
甘いけどしつこくない、素材の風味を活かした逸品。[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="hannme" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト" mode="show"]
（……いや、食べ物じゃないんだから）[pr]

[message_name mode="hide"]
自分で考えていて恥ずかしくなった。[r]
これ以上はやめておこう。[pr]


*jump
[window_all_hide]
[wait_skip]
[bgimg storage="black.jpg" wait_time="200"]
[wait_skip]
[bgimg storage="bg_asari_honoka.jpg"]

[chara_img name="honoka" mode="show" posi="left" wait="false" kuti="hohoemu"]
[chara_img name="yamato" mode="show" posi="right" cos="seihuku" wait="false" kuti="toziru"]
[message mode="show"]
[message_day mode="show" day="火" text="浅利家・ほのかの部屋"]

[message mode="set"]
他愛もない話をしながらのんびりしていると、[r]
玄関の鍵が開く音がした。[pr]

[chara_img name="honoka" mode="hide"]

[ほのか]が部屋のドアを開けて、廊下に顔を出す。[pr]

[message_name name="主人公" mode="show"]
「おかえり、兄ちゃん」[pr]

[message_name name="はるお"]
「ただいま。桐生くん来てるか？」[pr]

[chara_img name="yamato" mode="face" ase="true"]
[message_name name="主人公"]
「いるよ」[pr]

[message_name mode="hide"]
俺が遊びに来ることは、[r]
既に[ほのか]から伝わっていたようだ。[ls][r]
部屋のドアから、はるおさんが顔を覗かせた。[pr]

[chara_img name="honoka" mode="show" posi="left2" wait="false" kuti="hohoemu"]
[chara_img name="haruo" mode="show" posi="center" wait="false" cos="jacket"]
[chara_img name="yamato" mode="move" posi="right2"]

[chara_img name="yamato" mode="face" kuti="warau"]
[message_name name="桐生 ヤマト" mode="show"]
「お、お邪魔してます」[pr]

[chara_img name="haruo" mode="face" kuti="hiraku" ase="true"]
[message_name name="はるお"]
「あれっ、赤くない」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal"]
[message_name mode="hide"]
[ほのか]と同じ反応をされた。[pr]

[chara_img name="honoka" mode="face" kuti="warau"]
[message_name name="主人公" mode="show"]
「ヤマトくん、兄ちゃんに挨拶しに来てくれたんだって」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau" ase="false"]
[message_name name="はるお"]
「お、そうなのか。真面目だなぁ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru" ase="false"]
[message_name mode="hide"]
はるおさんは思いの外機嫌よさそうに笑っていた。[ls][r]
ひとまず、険悪にはならないようで安心した。[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「ちょうどよかったぜ。[r]
俺も桐生くんと話がしたいと思ってたんだ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" ase="true"]
[message_name name="桐生 ヤマト"]
「は、はあ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="hannme"]
[message_name mode="hide"]
安心するのは早かったのかもしれない。[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお" mode="show"]
「[ほのか]、ちょっとリビングで待っててくれ」[pr]

[chara_img name="honoka" mode="face" kuti="hiraku"]
[message_name name="主人公"]
「なんで？」[pr]

[chara_img name="haruo" mode="face" me="toziru"]
[message_name name="はるお"]
「[ほのか]がいたら話しづらい話をするからだ」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi"]
[message_name name="主人公"]
「……怪談？」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお"]
「そんなとこ」[pr]

[message_name mode="hide"]

[chara_img name="honoka" mode="hide"]

[chara_img name="haruo" mode="move" posi="left" wait="false"]
[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[chara_img name="yamato" mode="move" posi="right"]

そんな訳ないだろうに、[ほのか]は首を傾げながら[r]
大人しく部屋を出て行った。[ls][r]
素直というか単純というか。[pr]

[chara_img name="haruo" mode="face" kuti="warau"]
[message_name name="はるお" mode="show"]
「……まあ、もちろん怪談じゃないんだけどさ」[pr]

[chara_img name="yamato" mode="face" me="hannme"]
[message_name name="桐生 ヤマト"]
（そりゃそうだ……）[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「遊びにきてくれたのに、邪魔してごめんな」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「あ、いえ。俺も今日は、[r]
はるおさんに会いに来たってのもあるんで」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi" kuti="toziru" ase="false"]
[message_name name="桐生 ヤマト"]
「……俺にも妹がいるんですけど、[r]
もし妹に彼氏ができたら、やっぱりどんなやつか[r]
気になるだろうし」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="okoru"]
[message_name name="桐生 ヤマト"]
「だから俺、ちゃんと挨拶しておきたかったんです。[r]
だから、ええと、よろしくお願いします！」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="hannme" kuti="toziru" ase="true"]
[message_name mode="hide"]
考えをまとめてきたのに、[r]
結局ぐちゃぐちゃになってしまった。情けない。[pr]

[chara_img name="haruo" mode="face" mayu="normal" me="warau" kuti="warau"]
[message_name name="はるお" mode="show"]
「はは、そっかそっか。君はいいやつだなぁ」[pr]

[chara_img name="yamato" mode="face" me="odoroki"]
[message_name mode="hide"]
ひっそり落ち込んでいると、不意に頭を撫でられた。[ls][r]
前されたのと同じ撫で方だ。わしわしと少し乱暴に、[r]
だけどどこか優しさを感じる。[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「確かにまあ、心配じゃないとは言わないけど……[r]
俺のことはそんなに気にしなくていいからな」[pr]

[bgm mode="end"]

[chara_img name="yamato" mode="face" mayu="odoroki" me="odoroki" kuti="hiraku" ase="false"]
[message_name name="桐生 ヤマト"]
「え？」[pr]

[bgm id="memory" mode="play"]

[chara_img name="haruo" mode="face" mayu="normal" me="toziru"]
[message_name name="はるお"]
「……[ほのか]にはさ。楽しいこととか、[r]
大切な人とか、そういう心の拠り所を[r]
たくさん持ってて欲しいんだ」[pr]

[chara_img name="haruo" mode="face" me="warau" kuti="warau"]
[message_name name="はるお"]
「桐生くんに会ってから、ほんとに楽しそうなんだよ。[r]
だから……[ほのか]が君と出会ってよかったって、[r]
ずっと思ってるんだぜ」[pr]

[chara_img name="yamato" mode="face" me="normal"]
[message_name name="桐生 ヤマト"]
「そう、なんですか」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……俺も、[ほのか]に出会ってよかったって[r]
思ってます」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="sorashi" kuti="hiraku" tere="true"]
[message_name name="桐生 ヤマト"]
「あと、その、付き合えたのも」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「ははは、そっか。ならよかった」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru" tere="false"]
[chara_img name="haruo" mode="face" me="toziru"]
[message_name name="はるお"]
「……[ほのか]には、毎日楽しく過ごして[r]
ほしいんだけどさ。俺にしかできないこともあるし、[r]
俺じゃ手が届かないところもある。だから……」[pr]

[chara_img name="haruo" mode="face" me="normal"]
[message_name name="はるお"]
「お前はお前なりに[ほのか]のことを[r]
大事にしてくれれば、それでいいよ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
（俺なりに……）[pr]

[chara_img name="yamato" mode="face" mayu="kiri" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……はい。大事にします」[pr]

[chara_img name="haruo" mode="face" kuti="warau"]
[message_name name="はるお"]
「あとは……そうだな。[r]
もし困ったことがあったら、いつでも相談してくれよ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="hiraku"]
[chara_img name="haruo" mode="face" me="toziru" kuti="hiraku"]
[message_name name="はるお"]
「[ほのか]は強くて優しい子に育ってくれたけど、[r]
甘えん坊だし怖がりだし頑固なところもあるし……[r]
間違えることもあると思うんだ」[pr]

[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name name="はるお" mode="show"]
「いずれ桐生くんが困ることもあるだろうし、[r]
[ほのか]に言い辛いようなことも[r]
あるかもしれないだろ」[pr]

[chara_img name="haruo" mode="face" me="warau"]
[message_name name="はるお"]
「だから、俺のことも相談できる相手の１人に[r]
数えてくれ」[pr]

[chara_img name="yamato" mode="face" mayu="normal" me="warau" kuti="warau" ase="false"]
[message_name name="桐生 ヤマト"]
「あ……ありがとうございます」[pr]

[chara_img name="haruo" mode="face" kuti="warau"]
[message_name name="はるお"]
「よし」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="normal"]
[chara_img name="haruo" mode="face" me="normal" kuti="hohoemu"]
[message_name mode="hide"]
はるおさんは満足気に笑った。[pr]

最悪追い出されるかもしれないと思って来てみれば、[r]
むしろ俺のことを心配されてしまった。[pr]

話しに来てよかったなと思う。[ls][r]
はるおさんがどんな人か、少しわかった。[pr]

[chara_img name="yamato" mode="face" me="toziru"]
優しい人だ。すごく。[ls][r]
変な話だけど、[ほのか]はこの人に育てられたんだなと[r]
改めて思った。[pr]

[bgm mode="end"]
[bgm id="nichijou_d" mode="play"]

[chara_img name="yamato" mode="face" me="normal" kuti="toziru"]
[chara_img name="haruo" mode="face" mayu="normal" me="normal" kuti="normal"]
[message_name name="はるお" mode="show"]
「結局長話になっちゃったな……[r]
[ほのか]、ちょっと拗ねてるかもな。[r]
撫でれば機嫌よくなるけど」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name name="桐生 ヤマト"]
（犬じゃないんだから……）[pr]

[chara_img name="haruo" mode="face" kuti="hiraku"]
[message_name name="はるお"]
「[ほのか]ー、もういいぞー」[pr]

[chara_img name="haruo" mode="face" kuti="normal"]
[chara_img name="yamato" mode="face" me="normal" kuti="toziru" ase="false"]
[message_name mode="hide"]
はるおさんが廊下に向かって声を投げると、[r]
とたとたと控えめな足音が近づいて来た。[pr]

[chara_img name="honoka" mode="show" posi="left2" wait="false"]
[chara_img name="haruo" mode="move" posi="center" wait="false"]
[chara_img name="yamato" mode="move" posi="right2"]

[message_name name="主人公" mode="show"]
「怖い話終わった？」[pr]

[chara_img name="haruo" mode="face" kuti="hohoemu"]
[message_name name="はるお"]
「終わったぞ」[pr]

[chara_img name="honoka" mode="face" me="sorashi" kuti="hiraku"]
[message_name name="主人公"]
「ふーん……」[pr]

[chara_img name="yamato" mode="face" me="hannme" kuti="normal" ase="true"]
[message_name mode="hide"]
その見え透いた嘘、やっぱり[ほのか]にも[r]
気が付かれているんじゃないだろうか。[pr]

[chara_img name="haruo" mode="face" kuti="warau"]
[message_name name="はるお" mode="show"]
「じゃ、俺は飯作ってくるから。桐生くんも食べてけよ」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="warau"]
[message_name name="桐生 ヤマト"]
「あ、いえ、おかまいなく」[pr]

[chara_img name="haruo" mode="face" me="warau"]
[message_name name="はるお"]
「遠慮すんなって」[pr]

[message_name mode="hide"]

[chara_img name="honoka" mode="face" me="normal" kuti="normal"]
[chara_img name="yamato" mode="face" kuti="toziru"]

[chara_img name="haruo" mode="hide"]
[chara_img name="honoka" mode="move" posi="left" wait="false"]
[chara_img name="yamato" mode="move" posi="right"]

機嫌よさそうに笑うと、はるおさんは部屋を出て行った。[pr]

それと入れ違うように、[r]
[ほのか]が黙って俺の隣に座る。[pr]

はるおさんが「ちょっと拗ねてる」と言っていた割には、[r]
そんなに怒っている風でもない。[pr]

[chara_img name="honoka" mode="face" me="sorashi"]
ただ、言われてみれば確かに、[r]
どことなく雰囲気が違う気がする。[pr]

[chara_img name="yamato" mode="face" me="sorashi"]
[message_name name="桐生 ヤマト" mode="show"]
（……これが、ちょっと拗ねてるってことなのか？）[pr]

[chara_img name="yamato" mode="face" me="normal" ase="false"]
[message_name mode="hide"]
少し迷ってから、そっと[ほのか]の頭に手を添えた。[ls][r]

[chara_img name="honoka" mode="face" me="odoroki" ase="true"]
そのまま撫でてみると、戸惑った表情で見上げられる。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="hiraku" tere="true"]
[message_name name="主人公" mode="show"]
「な、なんで撫でるの？」[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「いや……拗ねてるのかなと思って」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="sorashi_h"]
[message_name name="主人公"]
「す、拗ねてる訳じゃ……ちょっとつまんなかっただけ」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" kuti="toziru" tere="true"]
[message_name mode="hide"]
少し困ったような顔で、恥ずかしそうに[r]
視線を泳がせている。[ls][ほのか]には申し訳ないけど、[r]
かわいいなと思ってしまう。[pr]

[chara_img name="yamato" mode="face" mayu="normal" kuti="normal" tere="false"]
それにしても、触り心地がいい頭だ。[ls][r]

[chara_img name="honoka" mode="face" mayu="normal" me="normal" kuti="hohoemu" ase="false"]
ふわふわと撫で続けていると、不意に[ほのか]が笑った。[pr]

[chara_img name="yamato" mode="face" kuti="hiraku"]
[message_name name="桐生 ヤマト" mode="show"]
「どうした？」[pr]

[chara_img name="honoka" mode="face" me="toziru" kuti="hohoemu"]
[message_name name="主人公"]
「ふふ……兄ちゃんと全然違うなと思って。[r]
ヤマトくんの手、優しくて好き」[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru" tere="true" ase="true"]
[message_name name="桐生 ヤマト"]
「そ、そっか……」[pr]

[chara_img name="yamato" mode="face" me="sorashi_h"]
[message_name mode="hide"]
どうしてそうやって、躊躇いなく言えるんだろう。[ls][r]
一々動揺してしまうのが少し悔しい。いつもこうだ。[r]
惚れた弱みと言われれば、言い返せないけど。[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal" ase="false"]
[ほのか]はすっかり機嫌がよくなったのか、[r]
目を閉じて心地よさそうに撫でられている。[ls][r]
その無防備な姿に、少しいたずら心が芽生えた。[pr]

[bgm mode="end"]

[chara_img mode="hide_all" wait="false"]
[bgimg storage="black.jpg"]

撫でていた手を後頭部に添えて、唇を寄せる。[pr]

[message_name name="主人公" mode="show"]
「んっ……！？」[pr]

[message_name mode="hide"]

[ほのか]は柔らかい。手も、髪も、唇も。[ls][r]
大事にしたいと思う。それはもちろん、[r]
はるおさんに言われたからじゃない。[pr]

[bgm id="odayaka" mode="play"]

[chara_img name="honoka" mode="show" posi="left" wait="false" mayu="komaru" kuti="normal" tere="true"]
[chara_img name="yamato" mode="show" posi="right" cos="seihuku" wait="false" kuti="normal" tere="true"]
[bgimg storage="bg_asari_honoka.jpg"]

顔を離すと、困ったような、恥ずかしそうな顔が[r]
俺を見上げていた。少し達成感を覚える。[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru"]
困らせたい訳じゃないけど、俺の一挙一動で[r]
戸惑っている[ほのか]を見るのは好きだ。[pr]

こういう不意打ちは悪くないかも、なんて。[r]
卑怯だろうか。[pr]

[chara_img name="honoka" mode="face" me="sorashi_h"]
[ほのか]はそわそわと視線を彷徨わせてから、[r]
様子を伺うように俺を見上げた。[pr]

[chara_img name="honoka" mode="face" me="normal" kuti="warau"]
[message_name name="主人公" mode="show"]
「あ……あのね。もう１回したい……」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="normal" kuti="toziru" ase="true"]
[message_name name="桐生 ヤマト"]
「……っ」[pr]

[message_name mode="hide"]
やっぱり、敵わなかった。[pr]

[chara_img name="yamato" mode="face" me="hannme" ase="false"]
どくどくと音を立てる心臓を抑えながら、[r]
再び唇を寄せようとする。[pr]

[chara_img name="honoka" mode="face" mayu="normal" kuti="hiraku" tere="false"]
[chara_img name="yamato" mode="face" me="normal" me="odoroki" ase="true"]
すると不意に、[ほのか]が何かに気が付いたように[r]
俺の後頭部に手を回した。[pr]

ぎくりと強張っていると、[r]
[ほのか]はくすくすと楽しそうに笑った。[pr]

[chara_img name="honoka" mode="face" mayu="komaru" kuti="hohoemu"]
[message_name name="主人公" mode="show"]
「ここ赤くないの、やっぱりちょっと見慣れないな」[pr]

[chara_img name="yamato" mode="face" mayu="odoroki" me="normal" kuti="hiraku" tere="false"]
[message_name mode="hide"]
一瞬何を言われているのかわからなかったけど、[r]
すぐに思い出した。髪か。[ls][r]
俺も今鏡を見たら、やっぱり見慣れないなと思うだろう。[pr]

[chara_img name="yamato" mode="face" me="sorashi" kuti="toziru" ase="false"]
[message_name name="桐生 ヤマト" mode="show"]
「……[ほのか]は、どっちがいいと思う？[r]
赤いのと、赤くないの」[pr]

[chara_img name="honoka" mode="face" mayu="normal" tere="false"]
[message_name name="主人公"]
「ん？　私は……ヤマトくんが好きな方がいいな」[pr]

[chara_img name="yamato" mode="face" me="normal" kuti="hiraku"]
[message_name name="桐生 ヤマト"]
「俺が？」[pr]

[chara_img name="honoka" mode="face" me="toziru"]
[message_name name="主人公"]
「うん。私は、好きな格好で楽しそうにしてる[r]
ヤマトくんが好き」[pr]

[chara_img name="honoka" mode="face" mayu="komaru" me="normal"]
[message_name name="主人公"]
「正装って言ってたけど……[r]
もし私のために我慢して染めてくれてるんだったら、[r]
気持ちは嬉しいけど、ちょっと寂しいな」[pr]

[chara_img name="yamato" mode="face" mayu="syunn" me="normal" kuti="normal"]
[message_name name="桐生 ヤマト"]
「……そっか」[pr]

[message_name mode="hide"]
それは紛れもなく、俺が一番欲しい言葉だった。[pr]

[chara_img name="yamato" mode="face" me="toziru"]
[message_name name="桐生 ヤマト" mode="show"]
「……大丈夫、我慢なんかしてないよ。[r]
かっこつけてなくても……どんな格好でも、[r]
俺は俺なんだって思えたんだ」[pr]

[chara_img name="honoka" mode="face" mayu="syunn" kuti="warau"]
[message_name name="主人公"]
「そっか」[pr]

[chara_img name="yamato" mode="face" mayu="kiri" me="sorashi_h" kuti="toziru" tere="true"]
[message_name name="桐生 ヤマト"]
「……まあ、それはそれとして、[r]
明日また染めてきても笑わないでくれよ。[r]
あれ、やっぱかっこいいと思うんだ」[pr]

[chara_img name="honoka" mode="face" mayu="normal" me="warau" kuti="hohoemu" tere="true"]
[message_name name="主人公"]
「ふふ……うん。私もかっこいいと思う」[pr]

[message_name mode="hide"]

[chara_img mode="hide_all"]
[bgimg storage="black.jpg"]

楽しそうに俺の髪を撫でる[ほのか]に、[r]
堪らなくなってもう一度唇を重ねた。[pr]

やっぱり、好きだ。本当に。[r]
どうしようもないくらい好きだ。[ls][r]
放したくない。できることなら、ずっとこうしていたい。[pr]

言葉を飲み込んで、キスに替える。[pr]

心の内を全部見せるのはまだ怖いけど、[r]
いつか全部伝えてみたいと思う。[ls][r]
[ほのか]は、受け止めてくれるだろうか。[pr]

……きっと受け止めてくれるんだろうな。[ls][r]
俺の勝手な願望かもしれないけど、そう思えた。[pr]

[bgm mode="end"]

[_tb_end_tyrano_code]

*next

[tb_start_tyrano_code]

[cancelskip]
[eval exp="f.omake_back = true"]
[jump storage="ex_omake.ks"]

[_tb_end_tyrano_code]

