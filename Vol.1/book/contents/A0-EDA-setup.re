= 各種EDAやPDKのセットアップ方法について
//abstract{
本編はLinuxやWSLベースでの解説でしたが、MacOSでも動作可能です。Apple SiliconプロセッサシリーズとIntelプロセッサシリーズに対応しています。
//}


== セットアップスクリプト
セットアップ用のスクリプトを用意してありますので、それを実行すればセットアップが完了します。
コマンドラインから下記のコマンドを入力してください。

//terminal{
$ @<userinput>|git clone https://github.com/noritsuna/wsl_osic_4_mac.git|
$ @<userinput>|cd wsl_osic_4_mac|
$ @<userinput>|bash eda-setup.sh|
$ @<userinput>|bash pdk_sky130-setup.sh|
//}

以上となります。これで、xschem, ngspice, klayoutがインストールされます。

//note[ターミナルアプリについて]{
ターミナルアプリはLaunchPadのその他の中にあります。
//image[A0-EDA-setup/terminal_select][その他の中にあるterminalアプリ][scale=0.3]
//image[A0-EDA-setup/terminal_top][mac版terminal起動画面][scale=0.3]
//}

===[column] VMWareイメージ
環境によりセットアップスクリプトはインストールできないことがあります。
その場合、　VMWareイメージを用意してありますので、そちらをお使いください。
Ubuntu22.04ベースですので、本編と同じになります。
 * Apple Silicon版のVMWareイメージ: @<href>{https://www.noritsuna.jp/download/ISHI-kai_EDA_vmware_TT.tar.xz}
 * Intel版のVMWareイメージ: @<href>{https://www.noritsuna.jp/download/ISHI-kai_EDA_Intel.vmwarevm.tar.xz}
===[/column]
  

== xschemの起動
ターミナルアプリで「xschem」と入力すれば起動します。
//terminal{
$ @<userinput>|xschem|
//}

//image[A0-EDA-setup/xschem_top][mac版xschem起動画面]

== klayoutの起動
ターミナルアプリで「klayout.sh」と入力すれば起動します。
//terminal{
$ @<userinput>|klayout.sh|       @<balloon>{.shがある点に注意}
//}

//image[A0-EDA-setup/klayout_top][mac版KLayout起動画面]


本書に関する質問やお問い合わせは、ISHI会ページまでお願いします。

 * ISHI会ホームページ: @<href>{https://ishi-kai.org/}

