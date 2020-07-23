# isucon2020-toolbox

## 各種バージョン

### VirtualBox

6.1.12 r139181 (Qt5.6.3)  
2020/7/19 時点最新

### Vagrant

2.2.9  
2020/7/19 時点最新

### 利用 OS

ubuntu 16.04(64bit)  
https://app.vagrantup.com/ubuntu/boxes/xenial64

## vagrant コマンド cheatsheet

この辺を参考  
https://qiita.com/pugiemonn/items/bcd95a35c3ec7624cd61

## vagrant ssh した時に isucon ユーザでログインしたい時

下記のスクリプトを実行して秘密鍵を作成

```
$ ./.create.isucon.pem.sh
```

環境変数をセット

```
$ export ISCN_INIT=TRUE
```

あとは普通に vagrant ssh すれば isucon ユーザでログイン可能。

注意事項としては、この状態で vagrant destroy して一度マシンを削除すると、環境変数がセットされたままになるので vagrant up できないと思われる。環境変数を外すには下記を実行。

```
$ unset ISCN_INIT
```
