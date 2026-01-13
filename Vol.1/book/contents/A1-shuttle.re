= 半導体チップを製造するには？
//abstract{
設計方法を覚えたので、半導体チップを製造してみたいと思いませんか？
そこで、無料や比較的安価（数万円）に半導体を製造する方法がありますので、2つほど紹介します。
//}

== TinyTapeout
実際の半導体チップ製造をこれまで以上に簡単かつ安価に実現する教育プロジェクトです。

 * TinyTapeout: @<href>{https://tinytapeout.com/}

そのため、非常に安価に5万円ほどで半導体チップを製造してもらえます。
試験ボードなども付属していますので、お手元に届いてすぐに測定できる点もよい点です。

//image[A1-shuttle/tinytapeout_eval_board][TinyTapeoutの試験ボード]


==== TinyTapeoutのスペック
どのような半導体チップを作ってもらえるかについては、@<table>[A0-tbl-TT-spec]をご覧ください。
シャトル時期が締め切りですので、基本的にはこれだけ気にすればOKです。

//tsize[latex][|l|l|]
//table[A0-tbl-TT-spec][TinyTapeoutスペック表]{
プロセス	SkyWater130nmプロセス
ユーザーエリア（1区画）	167um x 108um
シャトル時期	6月,9月,11月
リードタイム	約半年
//}

==== TinyTapeoutの価格
@<table>[A1-tbl-TT-price]が、価格表となります。
インバーター回路を作る場合は、2区画＋2Pin＋試験ボード＋送料で$290となります。
※アナログの場合、2区画からとなるためです。

//tsize[latex][|l|c|]
//table[A1-tbl-TT-price][TinyTapeout価格表]{
1区画	$50
Pin(1ピンごと)	4ピンまで=$40,5～8ピン=$100
試験ボード	$100
送料	$10
//}


=== 設計する
やることは、本編の作業と同じとなります。
違う点はTinyTapeout専用のフレームがある点です。
レイアウトまで終わった後、このフレームにレイアウトを載せるか、直接このフレームにレイアウトします。

==== フレームについて
TinyTapeout専用のフレームは、下記に用意してあります。
これをダウンロードして、レイアウトするのが一番簡単となります。

 * TinyTapeout用のフレーム: @<href>{https://github.com/noritsuna/wsl_osic_4_mac/blob/main/TT/gds/tt_um_username_projectname.gds}

//image[A1-shuttle/tinytapeout_frame][TinyTapeout用のフレーム]


==== フレームのピンについて
フレームにはすでに各ピンが用意されています。
必要なピンに接続してください。

//image[A1-shuttle/tinytapeout_frame_pin][TinyTapeout用のフレームのピン]


=== 投稿の仕方
TinyTapeoutの投稿の仕方について解説します。
もし、トラブルが出た場合は、ISHI会のDiscordで質問してもらえればと思います。

 * ISHI会のDiscordのTinyTapeoutチャンネル: @<href>{https://discord.gg/v4MCqVSsd8}

==== シャトルの決定
まずは、製造するシャトルを決定します。
レイアウトが終わっているのなら、直近のものを選べばOKです。
この時のTT[シャトル番号]となっていますので、このシャトル番号は覚えておいてください。

 * TinyTapeoutシャトル一覧: @<href>{https://tinytapeout.com/runs/}


==== Githubプロジェクトのフォーク
提出用のプロジェクトをTinyTapeoutのGithubから自分のGithubへフォークします。
プロジェクト名のフォーマットは、tt[投稿予定のシャトル番号]-analog-templateとなっています。

 * TinyTapeoutのGithub: @<href>{https://github.com/TinyTapeout}
 * TinyTapeout: @<href>{https://github.com/TinyTapeout/tt[投稿予定のシャトル番号]-analog-template}


フォークする時のプロジェクト名は、tt[投稿予定のシャトル番号]-analog-[プロジェクト名]としてください。
この[投稿予定のシャトル番号]と[プロジェクト名]は、この後も使いますので、メモしておいてください。


===== Githubプロジェクトのファイルの編集
投稿用にいくつかのファイルを編集する必要がありますので、その解説をします。

===== info.yamlの編集
Githubリポジトリのトップディレクトリにあるinfo.yamlを編集します。
下記の部分をご自身に合わせて、変更してください。
投稿後の連絡は、Discord上で行われることがあるため、TinyTapeoutのDiscordに参加することをおすすめします。

//list[][info.yaml]{
project:
  title:        ""      # プロジェクト名
  author:       ""      # Githubのユーザ名
  discord:      ""      # Discordのユーザ名
//}

 * TinyTapeoutのDiscord: @<href>{https://tinytapeout.com/discord}


続いて、top_moduleを編集します。これは、他でも利用する重要な名前となるので、メモしておいてください。
tt_um_[Githubのユーザ名]_[プロジェクト名]というフォーマットで命名してください。

//list[][top_module]{
project:
  top_module:  "tt_um_example"
//}



===== docs/info.mdの編集
docsディレクトリ内のinfo.mdをなんでも良いので、書き換えてください。
デフォルトのままだとエラーが出ます。


===== src/project.vの編集
info.yamlのtop_moduleで@<B>{命名したモジュール名}にします。

//list[][モジュール名]{
module tt_um_example
//}


==== GDSファイル名の変更と配置
トップディレクトにgdsディレクトリを作成して、@<B>{tt_um_[githubのユーザ名]_[プロジェクト名].gds}として、編集したレイアウトファイルを保存します。

===== LEFファイルを生成する
LEF（Library Exchange Format）形式のファイルが必要になりますので、生成手順を解説します。

====== magicを起動する
magicでLEFファイルは生成できますので、ターミナルからmagicを起動します。

//terminal{
$ @<userinput>|magic|
//}


====== 編集したレイアウトファイルを読み込む
magicに「GDSファイル名の変更と配置」で配置したレイアウトファイルを読み込みます。

//image[A1-shuttle/tinytapeout_lef_magic_run][magicを起動してGDSを読み込む]
//image[A1-shuttle/tinytapeout_lef_magic_open][GDSが読み込まれた状態]


===== LEFファイルを生成する
@<img>{A1-shuttle/tinytapeout_lef_magic_cmd_input}のように、magicのサブウィンドウとして起動しているコマンドウィンドウにLEFファイル生成コマンドを入力します。

//list[][モジュール名]{
lef write [出力先PATH]/tt_um_[githubのユーザ名]_[プロジェクト名].lef -pinonly
//}
//image[A1-shuttle/tinytapeout_lef_magic_cmd_input][コマンドウィンドにコマンドを入力する]
//image[A1-shuttle/tinytapeout_lef_magic_ok][LEFファイルが正常に生成されたメッセージ]

以上で、必要なファイルの編集と生成が終わったので、ファイルのチェックをして投稿します。


==== Githubでファイルチェックをする
Githubのプロジェクト上でプロジェクトが生成されてるか？を確認します。

===== Github Pagesを有効にする


//image[A1-shuttle/tinytapeout_github_pages_enable][Github Pagesを有効にする]
//image[A1-shuttle/tinytapeout_github_actions_enable][Github Actionsを有効にする]


===== workflowでGDSファイルをチェックする

//image[A1-shuttle/tinytapeout_github_action_gds_run][GDS workflowを実行する]
//image[A1-shuttle/tinytapeout_github_action_gds_ok][GDS workflowがOK]


==== TinyTapeoutへの投稿
最後に、GithubプロジェクトをTinyTapeoutへ投稿します。

===== GitHubとTinyTapeoutのアカウントの紐付け
GitHubとTinyTapeoutのアカウントを紐づけられ、投稿状態となります。
ここで、支払いも行われます

 * TinyTapeout提出ページ: @<href>{https://app.tinytapeout.com/projects/create}

//image[A1-shuttle/tinytapeout_submit][TinyTapeoutの提出ページ]

//image[A1-shuttle/tinytapeout_submit_link][TinyTapeoutの提出ページ]

以上で、投稿完了です。
半年後の到着をお待ちください！


== ISHI会のシャトル
ISHI会では不定期ですが、無料のシャトルを募集しています。
その中でハンズオンがありますので、それを利用するパターンです。


=== ISHI会のシャトルに乗る
ISHI会では、ISHI会のOpenMPWとして、無料のシャトル運営をしています。
ISHI会のDiscord内やConnpass上で募集していますので、参加してもらえればと思います。

 * ISHI会のDiscord: @<href>{https://discord.gg/Sj47dJk8x7}
 * ISHI会のConnpass: @<href>{https://ishikai.connpass.com/}

//image[A1-shuttle/ISHI-KAI_openMPW][ISHI会のOpenMPW]
