# vscode の設定を Git 管理する．

現状の設定を快適に引き継ぐには 2 つのステップが存在する．

1. 設定ファイルを引き継ぐ
2. 拡張機能を引き継ぐ
3. 引き継ぐ

※ (1)の作業は,dotfile 管理が初めての時のみ<br>
※ **git clone 後の作業は(3)から**
<br>
<br>
<br>
<br>

### 1. 設定ファイルを引き継ぐ

---

設定ファイルを引き継ぐには既存の設定ファイルを git 管理下に移動させ，シンボリックリンクを作成する必要がある.

<br>
<br>

1. **以下のファイルを git 管理されているディレクトリに移動．**

- setting.json
- keybindings.json

VScode の設定ファイルはデフォルトで以下の場所に作成される．

`~/Library/Application\ Support/Code/User`

```sh
$ mv ~/Library/Application\ Support/Code/User/settings.json ~/dotfiles/.vscode
$ mv ~/Library/Application\ Support/Code/User/keybindings.json ~/dotfiles/.vscode
```

<br>
<br>

2. **シンボリックリンクを作成する.**

現状のままだと，既存の設定ファイルを移動させたため，VScode の参照先がなくなっている．
そこで git 管理下においた設定ファイルと VScode の参照先にシンボリックリンクを作成する．
（あたかも`~/Library/Application\ Support/Code/User`に設定ファイルがあるように見せる．

```sh
例） ln -s "実態のファイルのパス" "あたかも存在しているように見せたいファイルのパス"

$ ln -s "~/dotfiles/.vscode/setting.json" "~/Library/Application\ Support/Code/User/settings.json"
$ ln -s "~/dotfiles/.vscode/keybindings.json" "~/Library/Application\ Support/Code/User/keybindings.json"
```

<br>
<br>
<br>

### 2. 拡張機能を引き継ぐ

---

過去にインストールした拡張機能も引き継げると幸せ. シェルスクリプトを使って作成
<br>
※ **code**コマンドを使うので VScode から使用できるようにする.
[参考リンク](https://qiita.com/naru0504/items/c2ed8869ffbf7682cf5c)

<br>
<br>

1. **拡張機能のリストを作成する**

まずは現状，インストールされている拡張機能を知る

```sh
$ code --list-extensions > extensions
```

<br>
<br>

2. **シェルスクリプトを作成する** <br>

リスト化した拡張機能をインストールするシェルスクリプトを作成する．<br>

```bash
$ touch vscode_install.sh
```

```sh
#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

# install extention
cat extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > extensions
```

<br>
<br>
githubにpushしておく

```bash
 .vscode
├──  extensions
├──  keybindings.json
├──  settings.json
└──  vscode_install.sh
```

<br>
<br>

## 3. 引き継ぐ

シェルスクリプトを走らせる.

```sh
$ vscode_install.sh
```
