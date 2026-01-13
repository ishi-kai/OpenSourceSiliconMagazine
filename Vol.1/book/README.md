# 🍎 for Mac
## 1. rbenvでruby(2.5.0)を入れる
下記のリンクを参考にインストールする。

- https://qiita.com/kiharito/items/240911cc43bb9a1f4356

> [!IMPORTANT]
> バージョンは2.5系を入れること！

## 2. pLatexを使えるようにする
```
zsh
 brew install --cask mactex-no-gui
```

## 3. コンパイル
[コンパイル方法](コンパイル方法)を参照してください。


# 🪟 for Windows

## 1. WSL2のインストール
- https://learn.microsoft.com/ja-jp/windows/wsl/install
```
sh
wsl --install
```


## 2. Ubuntuの手順に従う
WSLを立ち上げたら、あとはUbuntuと同じです。

# 🐧 for Ubuntu

## 1. rbenvでruby(2.5.0)を入れる
下記のリンクを参考にインストール

- https://zenn.dev/nukokoi/articles/e03fe2372b43a7

> [!IMPORTANT]
> バージョンは2.5系を入れること！

## 2. pLatexを使えるようにする
```
sh
sudo apt install texlive-full #結構時間かかる
```

## 3. コンパイル
[コンパイル方法](コンパイル方法)を参照してください。


# コンパイル方法
Ruby と Re:VIEW と LaTeX が必要です。

```terminal
$ gem install review --version 2.5  # 最初に1回だけ行う（2回目からは不要）
$ review version                    # Re:VIEWのバージョンを確認
2.5.0                               # （3系は未サポートなので注意!!）
$ rake pdf
$ ls OpenSourceSiliconMagazine-Vol1.pdf
```

これで「`OpenSourceSiliconMagazine-Vol1.pdf`」が生成されます。
