# .githubの設定を色々かく

- dotfilesの場合,commit.templateのみ設定
  - シェルスクリプトを作成(コミットテンプレートのみ必要）
    - `git config --grobal commit.template ~/dotfiles/.github`

- .githubをコピーし．プロジェクト単位で使用する場合
  - `git config --local commit.template ~/PROJECT_DIRECTORY/.github`
  - Githubに関するものは必要なし(githubが勝手にいい感じにする)．
    - ISSUE_TEMPLATE
    - PULL_REQUEST_TEMPLATE.md
