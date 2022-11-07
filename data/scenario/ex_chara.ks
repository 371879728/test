[_tb_system_call storage=system/_ex_chara.ks]

*start

[tb_start_tyrano_code]

; ▼mask on
[mask cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]

[eval exp="tf.modal_page_change = false"]

[cm]
[freeLayer]
[freeimage layer="0"]
[freeimage layer="1"]

[image layer="base" storage="../bgimage/sys_back.jpg"]

[eval exp="tf.nowpage = 1"]
[eval exp="tf.maxpage = 2"]

; ▼キャラリストマクロ
[macro name="character_list"]
[eval exp="tf.target = '*' + mp.name"]

[if exp="sf.ex_chara_view[mp.name]"]
[eval exp="tf.img = '../image/extra/chara_img_s_' + mp.name + '.jpg'"]
[button enterse="select.ogg" clickse="click.ogg" name="hide_all" layer="1" graphic="&tf.img" x="&mp.x" y="&mp.y" target="&tf.target" exp="tf.target"]
[else]
[image layer="0" storage="../image/extra/chara_img_s_locked.png" x="&mp.x" y="&mp.y"]
[endif]
[endmacro]

; ◆リスト表示
*back

; 変数リセット
[eval exp="tf.modalpage = 1"]

[eval exp="tf.nowface = []"]
[eval exp="tf.nowface['pose'] = 0"]
[eval exp="tf.nowface['cos'] = 0"]
[eval exp="tf.nowface['mayu'] = 0"]
[eval exp="tf.nowface['me'] = 0"]
[eval exp="tf.nowface['kuti'] = 0"]

[eval exp="tf.nowface['op'] = []"]
[eval exp="tf.nowface['op']['ase'] = false"]
[eval exp="tf.nowface['op']['tere'] = false"]
[eval exp="tf.nowface['op']['naku'] = false"]
[eval exp="tf.nowface['op']['aozame'] = false"]
[eval exp="tf.nowface['op']['kega'] = false"]
[eval exp="tf.nowface['op']['badge'] = false"]
[eval exp="tf.nowface['op']['lost'] = false"]

; モーダル内のキャラ画像横位置
[eval exp="tf.modal_img_left = []"]
[eval exp="tf.modal_img_left['honoka'] = 55"]
[eval exp="tf.modal_img_left['yamato'] = 20"]
[eval exp="tf.modal_img_left['yamato_dog'] = 15"]
[eval exp="tf.modal_img_left['haruo'] = 20"]
[eval exp="tf.modal_img_left['ririna'] = 15"]
[eval exp="tf.modal_img_left['tatsumi'] = 15"]
[eval exp="tf.modal_img_left['ryman'] = -30"]
[eval exp="tf.modal_img_left['asuka'] = 70"]
[eval exp="tf.modal_img_left['nanami'] = 40"]
[eval exp="tf.modal_img_left['coconono'] = -40"]
[eval exp="tf.modal_img_left['boy'] = 45"]

[if exp="tf.chara_back"]
[iscript]
$('.window-cover').animate({"opacity": 0}, 300);
$('.myCharacter').animate({"opacity": 0}, 300);
$('.3_fore').animate({"opacity": 0}, 300);
[endscript]
[chara_hide_all layer="3" wait="true" time="300"]
[layopt layer="3" visible="false"]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[endif]
[eval exp="tf.chara_back = false"]

[image layer="0" storage="../image/extra/ttl_character.png" left="15" top="12" visible="true"]

; ページ共通ボタン
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/btn_back.png" y="480" target="*return" name="menu_close"]

; ▼リスト
[eval exp="tf.x = 140"]
[eval exp="tf.z = 150"]
[eval exp="tf.y = 90"]

[nowait]
[if exp="tf.nowpage == 1"]
[character_list name="honoka" x="&tf.x + tf.z * 0" y="&tf.y"]
[character_list name="yamato" x="&tf.x + tf.z * 1" y="&tf.y"]
[character_list name="haruo" x="&tf.x + tf.z * 2" y="&tf.y"]
[character_list name="ririna" x="&tf.x + tf.z * 3" y="&tf.y"]
[character_list name="tatsumi" x="&tf.x + tf.z * 4" y="&tf.y"]
[else]
[character_list name="ryman" x="&tf.x + tf.z * 0" y="&tf.y"]
[character_list name="asuka" x="&tf.x + tf.z * 1" y="&tf.y"]
[character_list name="nanami" x="&tf.x + tf.z * 2" y="&tf.y"]
[character_list name="coconono" x="&tf.x + tf.z * 3" y="&tf.y"]
[character_list name="boy" x="&tf.x + tf.z * 4" y="&tf.y"]
[endif]
[endnowait]

; ▼ページ操作
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_prev.png" x="280" y="500" target="*prev"]
[button enterse="select.ogg" clickse="click.ogg" name="all_hide" graphic="../image/extra/btn_next.png" x="590" y="500" target="*next"]
[message_current layer="message0"]
[layopt layer="message0" left="470" top="470"]
[nowait]
[font_color size="18" color="0xffffff"]
[emb exp="tf.nowpage"] / [emb exp="tf.maxpage"]
[font_color_reset]
[endnowait]

; ▼mask_off
[mask_off cond="f.ex_subpage_fade != false" time="&f.ex_fade_time"]
[eval exp="f.ex_subpage_fade = false"]
[eval exp="f.ex_fade = true"]
[s]


*next
[eval exp="tf.nowpage ++ "]
[eval cond="tf.nowpage > tf.maxpage" exp="tf.nowpage = 1"]

[cm]
[freeimage layer="0"]
[freeimage layer="1"]

[jump target="*back"]
[s]


*prev
[eval exp="tf.nowpage --"]
[eval cond="tf.nowpage <= 0" exp="tf.nowpage = tf.maxpage"]

[cm]
[freeimage layer="0"]
[freeimage layer="1"]

[jump target="*back"]
[s]
[_tb_end_tyrano_code]

*set

[tb_start_tyrano_code]
*honoka
[eval exp="tf.nowchara = 'honoka'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*yamato
[eval exp="tf.nowchara = 'yamato'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*haruo
[eval exp="tf.nowchara = 'haruo'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*ririna
[eval exp="tf.nowchara = 'ririna'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*tatsumi
[eval exp="tf.nowchara = 'tatsumi'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*ryman
[eval exp="tf.nowchara = 'ryman'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*asuka
[eval exp="tf.nowchara = 'asuka'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*nanami
[eval exp="tf.nowchara = 'nanami'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*coconono
[eval exp="tf.nowchara = 'coconono'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*rumi
[eval exp="tf.nowchara = 'rumi'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

*boy
[eval exp="tf.nowchara = 'boy'"]
[eval exp="tf.nowpose = tf.nowchara"]
[jump target="*chara_modal"]
[s]

[_tb_end_tyrano_code]

*chara_modal

[tb_start_tyrano_code]

; ページ切り替え時は中身のみフェードアウト
[if exp="tf.modal_page_change"]

[iscript]
$('.myCharacter').animate({"opacity": 0}, 200, function(){
$('.myCharacter').empty();
});
[endscript]

; ポーズ切り替え
[if exp="tf.modal_pose_change"]
[chara_hide_all layer="3" wait="true" time="200"]
[endif]

[wait time="220"]
[endif]


; ▼HTML
[macro name="profList"]
<li>
<p class="ttl">[emb exp="mp.ttl"]</p>
<p class="text">[emb exp="mp.text"]</p>
</li>
[endmacro]

[html]
; カバー
[if exp="tf.modal_page_change == false"]
<div class="window-cover">
</div>
[endif]

; キャラ
<div class="myCharacter">
<p id="close-btn"><img src="data/image/extra/chara_close.png"></p>

[if exp="tf.modalpage == 1"]
<p id="tab-btn1"><img src="data/image/extra/chara_tab_data_on.png"></p>
<p id="tab-btn2"><img src="data/image/extra/chara_tab_prof_off.png"></p>
<p id="tab-btn3"><img src="data/image/extra/chara_tab_face_off.png"></p>
[elsif exp="tf.modalpage == 2"]
<p id="tab-btn1"><img src="data/image/extra/chara_tab_data_off.png"></p>
<p id="tab-btn2"><img src="data/image/extra/chara_tab_prof_on.png"></p>
<p id="tab-btn3"><img src="data/image/extra/chara_tab_face_off.png"></p>
[else]
<p id="tab-btn1"><img src="data/image/extra/chara_tab_data_off.png"></p>
<p id="tab-btn2"><img src="data/image/extra/chara_tab_prof_off.png"></p>
<p id="tab-btn3"><img src="data/image/extra/chara_tab_face_on.png"></p>
[endif]

<div class="scroll-area">
[if exp="tf.nowchara == 'coconono'"]
<div class="scroll-main coconono">
[else]
<div class="scroll-main">
[endif]

<!-- ▼ 1P ―――――――――――――――――――――――――――――――――― -->
[if exp="tf.modalpage == 1"]

[eval exp="tf.margin = '　'"]

<!-- ▼ ほのか -->
[if exp="tf.nowchara == 'honoka'"]
<h1 class="chara-name"></h1>
<ul class="chara-profile">
[profList ttl="学校" text="国立Ｓ学園 ２年生 Ａクラス"]
[profList ttl="家族構成" text="兄"]
[profList ttl="好き" text="兄、柴犬、ヒーローごっこ"]
[profList ttl="苦手" text="物理攻撃が効かないもの（おばけ・かみなり他）"]
</ul>

<!-- ▼ ヤマト -->
[elsif exp="tf.nowchara == 'yamato'"]
<h1 class="chara-name">桐生 ヤマト</h1>
<ul class="chara-profile">
[profList ttl="学校" text="国立Ｓ学園 ２年生 Ｅクラス"]
[profList ttl="家族構成" text="父、母、姉、妹３人"]
[profList ttl="好き" text="ヒーローごっこ、赤、かっこいいもの"]
[profList ttl="苦手" text="犬扱いされること、勉強"]
</ul>
<h1 class="chara-history">MODE</h1>
<p>
[if exp="tf.nowpose == 'yamato_dog'"]
<span class="is-yamato-change" data-num="1">【通常時】</span>
<span class="is-yamato-change is-active" data-num="2">【獣化時】</span>
[else]
<span class="is-yamato-change is-active" data-num="1">【通常時】</span>
<span class="is-yamato-change" data-num="2">【獣化時】</span>
[endif]
</p>

<!-- ▼ はるお -->
[elsif exp="tf.nowchara == 'haruo'"]
<h1 class="chara-name">[emb exp="sf.myozi"] はるお</h1>
<ul class="chara-profile">
[profList ttl="職業" text="会社員（営業）"]
[profList ttl="家族構成" text="妹"]
[profList ttl="好き" text="妹、柴犬、料理"]
[profList ttl="苦手" text="怒ること"]
</ul>

<!-- ▼ りり奈 -->
[elsif exp="tf.nowchara == 'ririna'"]
<h1 class="chara-name">里井 りり奈</h1>
<ul class="chara-profile">
[profList ttl="学校" text="国立Ｓ学園 ２年生 Ｅクラス"]
</ul>

<!-- ▼ 須賀 -->
[elsif exp="tf.nowchara == 'tatsumi'"]
<h1 class="chara-name">須賀 たつみ</h1>
<ul class="chara-profile">
[profList ttl="学校" text="国立Ｓ学園 ２年生 Ｅクラス"]
</ul>

<!-- ▼ サラリーマン -->
[elsif exp="tf.nowchara == 'ryman'"]
<h1 class="chara-name">サラリーマン</h1>
<ul class="chara-profile">
[profList ttl="職業" text="会社員"]
</ul>

<!-- ▼ アスカ -->
[elsif exp="tf.nowchara == 'asuka'"]
<h1 class="chara-name">桐生 アスカ</h1>
<ul class="chara-profile">
[profList ttl="職業" text="大学生"]
</ul>

<!-- ▼ ナナミ -->
[elsif exp="tf.nowchara == 'nanami'"]
<h1 class="chara-name">桐生 ナナミ</h1>
<ul class="chara-profile">
[profList ttl="職業" text="中学生"]
</ul>

<!-- ▼ ココノノ -->
[elsif exp="tf.nowchara == 'coconono'"]
<h1 class="chara-name">桐生 ココ＆ノノ</h1>
<ul class="chara-profile">
[profList ttl="職業" text="小学生"]
</ul>

<!-- ▼ 中学生 -->
[elsif exp="tf.nowchara == 'boy'"]
<h1 class="chara-name">中学生</h1>
<ul class="chara-profile">
[profList ttl="職業" text="中学生"]
</ul>

[endif]


<!-- ▼ 2P ―――――――――――――――――――――――――――――――――― -->
[elsif exp="tf.modalpage == 2"]

[eval exp="tf.margin = '　'"]

<!-- ▼ ほのか -->
[if exp="tf.nowchara == 'honoka'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]

<p>
・物心つく前に両親を亡くし、兄の手で育てられる。<br>
[emb exp="tf.margin"]兄と愛犬・コロの３人家族で十分幸せだと思っていたため、<br>
[emb exp="tf.margin"]両親がいないことはあまり気にしていない。<br>
</p>

<p>
・根は好奇心旺盛で活発な性格。<br>
[emb exp="tf.margin"]幼い頃は兄の手を焼かせていたが、愛犬と空手を失ってからは、<br>
[emb exp="tf.margin"]あらゆる興味関心を失い大人しくなった。<br>
</p>

<p>
・兄の仕事が忙しかった時期は会える時間もあまりなかったため、<br>
[emb exp="tf.margin"]気持ちがすれ違うことを恐れ、自分の気持ちはストレートに<br>
[emb exp="tf.margin"]伝えるようになった。<br>
</p>

<p>
・甘え上手だけどわがままは言わない。<br>
[emb exp="tf.margin"]「これ以上は迷惑になる」という一定のラインは持っている。<br>
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ ヤマト -->
[elsif exp="tf.nowchara == 'yamato'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]
<p>
・幼い頃は内気で物静かな子供だった。<br>
[emb exp="tf.margin"]幼い頃から犬の面ばかり注目されてきたため、<br>
[emb exp="tf.margin"]「自分の内面が評価されることはないんだろう」と<br>
[emb exp="tf.margin"]卑下している。<br>
</p>
<p>
・他人に好かれることは難しいことだと思っており、<br>
[emb exp="tf.margin"]仲良くしてくれる友達のことを大事にしている。<br>
[emb exp="tf.margin"]自分がやりたくないことはやらない主義のため、<br>
[emb exp="tf.margin"]人付き合いは良い方ではないが、それでも人望がある。<br>
</p>
<p>
・「周りを気にせず我が道を行く人」に憧れていて、<br>
[emb exp="tf.margin"]自分がかっこいいと思うものは積極的に取り入れている。<br>
</p>
<p>
・匂いに敏感なため、自分の汗の匂いも気になる。<br>
[emb exp="tf.margin"]制汗スプレーと汗拭きシートを持ち歩いている。
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ はるお -->
[elsif exp="tf.nowchara == 'haruo'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]

<p>
・[emb exp="sf.name"]の兄。<br>
[emb exp="tf.margin"]中学生の頃から[emb exp="sf.name"]を１人で育てている。<br>
</p>

<p>
・[emb exp="sf.name"]には、両親がいないことに引け目を感じて<br>
[emb exp="tf.margin"]欲しくないと思っており、兄・父親・母親の役目を全て<br>
[emb exp="tf.margin"]担おうとしている。<br>
</p>

<p>
・怒ったり怒鳴ったりすることが苦手で、褒めて伸ばしたい。<br>
[emb exp="tf.margin"]妹が笑顔でいることが何よりの幸せであり、<br>
[emb exp="tf.margin"]自分はそのために生きていると思っている。<br>
</p>

<p>
・いつ自分が不慮の事故でいなくなっても大丈夫なように、<br>
[emb exp="tf.margin"]生きて行くために必要なことはちゃんと教えるようにしている。
</p>

[else]
Coming soon
[endif]
</div>

<!-- ▼ りり奈 -->
[elsif exp="tf.nowchara == 'ririna'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]
<p>
・ヤマトのクラスメイト。<br>
</p>

<p>
・交友関係が広く、様々なグループに顔を出している。<br>
[emb exp="tf.margin"]一方で深い付き合いをするのは面倒臭いと思っており、<br>
[emb exp="tf.margin"]個々とはドライな関係であることが多い。<br>
</p>

<p>
・親身になってくれるとは言い難いが、<br>
[emb exp="tf.margin"]程よい距離感でアドバイスをくれる。<br>
[emb exp="tf.margin"]思っていることはハッキリと言う。
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ 須賀 -->
[elsif exp="tf.nowchara == 'tatsumi'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1'] || sf.chapter_end['ED2'] || sf.chapter_end['ED3']"]
<p>
・ヤマトのクラスメイト。<br>
</p>
<p>
・自分のことを話すのがあまり好きではなく、<br>
[emb exp="tf.margin"]可愛いものが好きであることが知られるのも<br>
[emb exp="tf.margin"]不慮にバレるケースが大半。<br>
</p>

<p>
・他人に興味がなく関わりを避けようとしているが、<br>
[emb exp="tf.margin"]ヤマトからは「話しやすい」と言われ好かれている。<br>
[emb exp="tf.margin"][emb exp="sf.name"]にも「あついぬ好き仲間」として懐かれている。<br>
[emb exp="tf.margin"]人に懐かれやすい。
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ サラリーマン -->
[elsif exp="tf.nowchara == 'ryman'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
<p>
・[emb exp="sf.myozi"]家の近くに住んでいるサラリーマン。<br>
</p>
<p>
・学生時代は柔道や空手などを幅広く習っていた。<br>
[emb exp="tf.margin"]自分に合ったスポーツを探していたものの、<br>
[emb exp="tf.margin"]どの競技も肌に合わず、結局スポーツの道を諦めて就職。<br>
</p>

<p>
・劣悪な環境で駒のように働かされているが、<br>
[emb exp="tf.margin"]自分には似合いだと思っている。<br>
[emb exp="tf.margin"]ストレス発散のためヒーローごっこに参加している。
</p>
</div>

<!-- ▼ アスカ -->
[elsif exp="tf.nowchara == 'asuka'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1']"]
<p>
・桐生家の長女。ヤマトの姉。<br>
</p>
<p>
・穏やかな物腰に反して気が強く、物怖じしない性格。<br>
[emb exp="tf.margin"]共働きの両親に代わって４人の弟妹の面倒を見てきた。<br>
</p>
<p>
・「自分でできることは自分でしろ」という方針で、<br>
[emb exp="tf.margin"]助けて欲しいと言われるまでは手を貸さないし口も出さない。<br>
</p>
<p>
・妹のことばかり気に掛けて<br>
[emb exp="tf.margin"]自分を後回しにするヤマトのことを気に掛けている。
</p>

[else]
Coming soon
[endif]
</div>

<!-- ▼ ナナミ -->
[elsif exp="tf.nowchara == 'nanami'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1']"]

<p>
・桐生家の次女。ヤマトの妹。<br>
</p>
<p>
・小学生の頃はよくヤマトに懐いており、<br>
[emb exp="tf.margin"]どこに行くにも一緒について行った。<br>
</p>
<p>
・ヤマトが不良になってからはあまり構われなくなり、<br>
[emb exp="tf.margin"]これまで仲良くしていた分の反動で反感が芽生え、<br>
[emb exp="tf.margin"]ヤマトに対しては反抗的になる。<br>
</p>
<p>
・ヤマトが喧嘩はやめた今となっても反感が残っている。<br>
[emb exp="tf.margin"]嫌いになった訳ではないが、なんとなく気に入らないお年頃。
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ ココノノ -->
[elsif exp="tf.nowchara == 'coconono'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">
[if exp="sf.chapter_end['ED1']"]

<p>
・桐生家の末の双子。<br>
[emb exp="tf.margin"]ココ（左）が姉、ノノ（右）が妹。
</p>
<p>
・遊び盛りで天真爛漫。<br>
[emb exp="tf.margin"]体力的について行けないというアスカに代わり、<br>
[emb exp="tf.margin"]ヤマトに構ってもらうことが多い。<br>
</p>
<p>
・よくイタズラをして怒られる。<br>
[emb exp="tf.margin"]ヤマトに怒られた時よりも、アスカに怒られた時の方が<br>
[emb exp="tf.margin"]言うことを聞く。<br>
</p>
<p>
・ナナミは２人を甘やかしがちなため、<br>
[emb exp="tf.margin"]こっぴどく怒られた後はナナミに慰めてもらいに行く。<br>
</p>
[else]
Coming soon
[endif]
</div>

<!-- ▼ 中学生 -->
[elsif exp="tf.nowchara == 'boy'"]
<h1 class="chara-history">PROFILE</h1>
<div class="chara-history-text">

<p>
・商店街の近くで出会った中学生。<br>
</p>
<p>
・教育熱心な母親の元で、勉強漬けの日々を送る。<br>
[emb exp="tf.margin"]ストレスを発散するためにヒーローごっこをしている。<br>
</p>
<p>
・「動物をいじめるのは倫理に反する」という<br>
[emb exp="tf.margin"]真っ当な感性の持主だが、半獣に対する気遣いは足りない。
</p>
</div>

[endif]

<!-- ▼ 3P ―――――――――――――――――――――――――――――――――― -->
[else]

<ul class="chara-face">

[if exp="sf.ex_chara_parts[tf.nowchara]['cos'] != null && sf.ex_chara_parts[tf.nowchara]['cos'].length > 0"]
<li class="cos">
<p class="ttl">服装</p>
<p class="text">
</p>
</li>
[endif]

[if exp="sf.ex_chara_parts[tf.nowchara]['mayu'] != null && sf.ex_chara_parts[tf.nowchara]['mayu'].length > 0"]
<li class="mayu">
<p class="ttl">眉</p>
<p class="text">
</p>
</li>
[endif]

[if exp="sf.ex_chara_parts[tf.nowchara]['me'] != null && sf.ex_chara_parts[tf.nowchara]['me'].length > 0"]
<li class="me">
<p class="ttl">目</p>
<p class="text">
</p>
</li>
[endif]

[if exp="sf.ex_chara_parts[tf.nowchara]['kuti'] != null && sf.ex_chara_parts[tf.nowchara]['kuti'].length > 0"]
<li class="kuti">
<p class="ttl">口</p>
<p class="text">
</p>
</li>
[endif]

[if exp="sf.ex_chara_parts[tf.nowchara]['op'] != null && sf.ex_chara_parts[tf.nowchara]['op'].length > 0"]
<li class="op">
<p class="ttl">オプション</p>
<p class="text">
</p>
</li>
[endif]

</ul>
[endif]
</div>
</div>
</div>
[endhtml]

; ボタン定義
[htmlBtn id="close-btn" storage="ex_chara.ks" target="*back"]
[htmlBtn id="tab-btn1" storage="ex_chara.ks" target="*change_data"]
[htmlBtn id="tab-btn2" storage="ex_chara.ks" target="*change_prof"]
[htmlBtn id="tab-btn3" storage="ex_chara.ks" target="*change_face"]

; ▼ページ１用
[iscript]
if(tf.modalpage == 1 && tf.nowchara == 'honoka'){
var name = sf.myozi + ' ' + sf.name;
$('.myCharacter .chara-name').append(name);
}

$('.myCharacter').css({"opacity": 0, "z-index" : 120000000 });

// ヤマト立ち絵切り替え用
$('.is-yamato-change').click(function(){
var click = $(this).data("num");
$('.is-yamato-change').removeClass("is-active");
$(this).addClass("is-active");
tf.modal_page_change = true;
tf.modal_pose_change = true;
tf.nowchara = 'yamato';

tf.nowface['cos'] = 0;
tf.nowface['mayu'] = 0;
tf.nowface['me'] = 0;
tf.nowface['kuti'] = 0;
tf.nowface['op']['ase'] = false;
tf.nowface['op']['tere'] = false;
tf.nowface['op']['naku'] = false;
tf.nowface['op']['aozame'] = false;
tf.nowface['op']['kega'] = false;
tf.nowface['op']['badge'] = false;
tf.nowface['op']['lost'] = false;

if(click == 1) tf.nowpose = 'yamato';
else  tf.nowpose = 'yamato_dog';
TG.kag.ftag.startTag("jump",{srorage:'ex_chara.ks', target:'*chara_modal'});
});
[endscript]

; ▼ページ２用
; 表情リスト用マクロ
[macro name="chara_face_list"]
[iscript]
var append, label;
append = '';
label = sf.ex_chara_label[mp.name][mp.part][mp.num],
id = sf.ex_chara_parts[mp.name][mp.part][mp.num];

var view = sf.ex_chara_view_p[mp.name][mp.part][id]["view"];

if(view){
append = '<span id="' + mp.name + '-' + mp.part+ '-' + mp.num + '" class="' + mp.part + '">' + label + '</span>';
}
else {
append = '<span>？？？</span>';
}
$('.myCharacter .chara-face .' + mp.part +' .text').append(append);

$('#' + mp.name + '-' + mp.part + '-' + mp.num).click(function(){
tf.select_part = mp.part;
tf.select_num = mp.num;
tf.select_name = mp.name;
tf.select_id = mp.id;
TG.kag.ftag.startTag("jump",{srorage:'ex_chara.ks', target:'*face_change'});
});

// 初期表示
if(mp.part != 'op'){
$('.myCharacter .chara-face #' + mp.name + '-' + mp.part + '-' + tf.nowface[mp.part]).addClass('is-active');
}
[endscript]

[endmacro]

[if exp="tf.modalpage == 3"]

; ▼パーツリスト描画
; ポーズ
[if exp="sf.ex_chara_parts[tf.nowchara]['pose'] != null && sf.ex_chara_parts[tf.nowchara]['pose'].length > 0"]
[eval exp="tf.pose_loop = 0"]
*pose_loop
[chara_face_list name="&tf.nowchara" part="pose" num="&tf.pose_loop"]
[eval exp="tf.pose_loop ++"]
[jump cond="tf.pose_loop < sf.ex_chara_parts[tf.nowchara]['pose'].length" target="*pose_loop"]
[endif]

; 衣装
[if exp="sf.ex_chara_parts[tf.nowpose]['cos'] != null && sf.ex_chara_parts[tf.nowpose]['cos'].length > 0"]
[eval exp="tf.cos_loop = 0"]
*cos_loop
[chara_face_list name="&tf.nowpose" part="cos" num="&tf.cos_loop"]
[eval exp="tf.cos_loop ++"]
[jump cond="tf.cos_loop < sf.ex_chara_parts[tf.nowpose]['cos'].length" target="*cos_loop"]
[endif]

; 眉
[if exp="sf.ex_chara_parts[tf.nowpose]['mayu'] != null && sf.ex_chara_parts[tf.nowpose]['mayu'].length > 0"]
[eval exp="tf.mayu_loop = 0"]
*mayu_loop
[chara_face_list name="&tf.nowpose" part="mayu" num="&tf.mayu_loop"]
[eval exp="tf.mayu_loop ++"]
[jump cond="tf.mayu_loop < sf.ex_chara_parts[tf.nowpose]['mayu'].length" target="*mayu_loop"]
[endif]

; 目
[if exp="sf.ex_chara_parts[tf.nowpose]['me'] != null && sf.ex_chara_parts[tf.nowpose]['me'].length > 0"]
[eval exp="tf.me_loop = 0"]
*me_loop
[chara_face_list name="&tf.nowpose" part="me" num="&tf.me_loop"]
[eval exp="tf.me_loop ++"]
[jump cond="tf.me_loop < sf.ex_chara_parts[tf.nowpose]['me'].length" target="*me_loop"]
[endif]

; 口
[if exp="sf.ex_chara_parts[tf.nowpose]['kuti'] != null && sf.ex_chara_parts[tf.nowpose]['kuti'].length > 0"]
[eval exp="tf.kuti_loop = 0"]
*kuti_loop
[chara_face_list name="&tf.nowpose" part="kuti" num="&tf.kuti_loop"]
[eval exp="tf.kuti_loop ++"]
[jump cond="tf.kuti_loop < sf.ex_chara_parts[tf.nowpose]['kuti'].length" target="*kuti_loop"]
[endif]

; オプション
[if exp="sf.ex_chara_parts[tf.nowpose]['op'] != null && sf.ex_chara_parts[tf.nowpose]['op'].length > 0"]
[eval exp="tf.op_loop = 0"]
*op_loop

[eval exp="tf.op_id = sf.ex_chara_parts[tf.nowpose]['op'][tf.op_loop]"]
[chara_face_list name="&tf.nowpose" part="op" id="&tf.op_id" num="&tf.op_loop"]

[eval exp="tf.op_loop ++"]
[jump cond="tf.op_loop < sf.ex_chara_parts[tf.nowpose]['op'].length" target="*op_loop"]
[endif]



[endif]

; ▼最初のみ描画
[if exp="tf.modal_page_change == false"]
; 表示準備
[iscript]
$('.window-cover').css({"opacity": 0, "z-index" : 100000000 });
$('.3_fore').css({"opacity": 0, "z-index" : 100000000, "width": "320px"});
[endscript]

; キャラ表示
[layopt layer="3" visible="true"]
[chara_img layer="3" name="&tf.nowpose" left="&tf.modal_img_left[tf.nowpose]" mode="show" time="0"]
[wa]

; フェードイン
[iscript]
$('.window-cover').animate({"opacity": 1}, 300);
$('.3_fore').animate({"opacity": 1}, 300);
[endscript]
[endif]

[iscript]
$('.myCharacter').animate({"opacity": 1}, 200);
[endscript]

[if exp="tf.modal_pose_change"]
[chara_img layer="3" name="&tf.nowpose" left="&tf.modal_img_left[tf.nowpose]" mode="show" wait="true" time="200"]
[endif]

[eval exp="tf.modal_page_change = false"]
[eval exp="tf.modal_pose_change = false"]
[eval exp="tf.chara_back = true"]
[s]


*change_data
[eval exp="tf.modal_page_change = true"]
[eval exp="tf.modalpage = 1"]
[jump target="*chara_modal"]
[s]

*change_prof
[eval exp="tf.modal_page_change = true"]
[eval exp="tf.modalpage = 2"]
[jump target="*chara_modal"]
[s]


*change_face
[eval exp="tf.modal_page_change = true"]
[eval exp="tf.modalpage = 3"]
[jump target="*chara_modal"]
[s]
[_tb_end_tyrano_code]

*face_change

[tb_start_tyrano_code]
; アクティブ変更
[iscript]

if(tf.select_part == 'op'){
if(tf.nowface['op'][tf.select_id]) {
tf.nowface['op'][tf.select_id] = false;
$('.myCharacter .chara-face #' + tf.select_name + '-' + tf.select_part + '-' + tf.select_num).removeClass('is-active');
}
else {
tf.nowface['op'][tf.select_id] = true;
$('.myCharacter .chara-face #' + tf.select_name + '-' + tf.select_part + '-' + tf.select_num).addClass('is-active');
}
}
else{
tf.nowface[tf.select_part] = tf.select_num;
$('.myCharacter .chara-face .' + tf.select_part).removeClass('is-active');
$('.myCharacter .chara-face #' + tf.select_name + '-' + tf.select_part + '-' + tf.select_num).addClass('is-active');
}

[endscript]


; ポーズ切り替えの場合
[if exp="tf.select_part == 'pose'"]
[iscript]
tf.nowpose = sf.ex_chara_parts[tf.nowchara]["pose"][tf.select_num];
[endscript]

[eval exp="tf.modal_page_change = true"]
[eval exp="tf.modal_pose_change = true"]

[eval exp="tf.nowface['cos'] = 0"]
[eval exp="tf.nowface['mayu'] = 0"]
[eval exp="tf.nowface['me'] = 0"]
[eval exp="tf.nowface['kuti'] = 0"]
[eval exp="tf.nowface['op']['ase'] = false"]
[eval exp="tf.nowface['op']['tere'] = false"]
[eval exp="tf.nowface['op']['naku'] = false"]
[eval exp="tf.nowface['op']['aozame'] = false"]
[eval exp="tf.nowface['op']['kega'] = false"]
[eval exp="tf.nowface['op']['badge'] = false"]
[eval exp="tf.nowface['op']['lost'] = false"]

[jump target="*chara_modal"]
[endif]


; 表情更新の場合
[eval exp="tf.set = sf.ex_chara_parts[tf.nowpose][tf.select_part][tf.select_num]"]

[fa_chara_part cond="tf.select_part == 'cos'" layer="3" name="&tf.nowpose" cos="&tf.set"]
[fa_chara_part cond="tf.select_part == 'mayu'" layer="3" name="&tf.nowpose" mayu="&tf.set"]
[fa_chara_part cond="tf.select_part == 'me'" layer="3" name="&tf.nowpose" me="&tf.set"]
[fa_chara_part cond="tf.select_part == 'kuti'" layer="3" name="&tf.nowpose" kuti="&tf.set"]

[if exp="tf.select_part == 'op'"]
[fa_chara_part cond="tf.select_id == 'ase'" layer="3" name="&tf.nowpose" ase="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'tere'" layer="3" name="&tf.nowpose" tere="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'naku'" layer="3" name="&tf.nowpose" naku="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'aozame'" layer="3" name="&tf.nowpose" aozame="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'kega'" layer="3" name="&tf.nowpose" kega="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'badge'" layer="3" name="&tf.nowpose" badge="&tf.nowface['op'][tf.select_id]"]
[fa_chara_part cond="tf.select_id == 'lost'" layer="3" name="&tf.nowpose" lost="&tf.nowface['op'][tf.select_id]"]
[endif]

[s]


[_tb_end_tyrano_code]

*return

[tb_start_tyrano_code]

[jump storage="ex_index.ks"]
[s]
[_tb_end_tyrano_code]
