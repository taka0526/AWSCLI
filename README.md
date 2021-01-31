README
===
AWS CLI 及び EB CLIを実行できるDocker環境です。
----

1. 事前準備
    - Docker Desktop for Windowsのインストール
    1. Visual Studio Codeのインストール
    1. Visual Studio Codeの拡張機能に、Docker及びRemote - Containersの拡張機能をインストール
    1. WindowsのOpenSSHサービスの起動
    1. ED25519鍵を作成しssh-agentに登録
    1. GitHubに公開鍵を登録
    >参考サイト：[OpneSSH for Windows の使用方法 \- Qiita](https://qiita.com/akiakishitai/items/9e661a126b9c6ae24a56)

リモート先でのgit環境
----
- known_hostsはローカルのファイルがコピーされる。
- 秘密キーはホストのssh-agent設定を使用するようにせていされる。

AWS認証設定
----
- .aws/config
- .aws/credentials

を、リポジトリの __.awsフォルダ__ にコピーします。
なお、上記ファイルはリポジトリ管理対象外です。

EB環境設定
----
EB CLIは __.elasticbeanstalkフォルダ__ が必要です。上記ファイルはリポジトリ管理対象外です。

1. 使用方法
    1. GitHubからリポジトリをクローンする。
    1. クローンしたリポジトリは任意の場所に保存する。
    1. Visual Studio Code（以下VSCODE）でクローンしてきたリポジトリのフォルダを開く。
    1. 「.aws」フォルダに自身のcredentialファイルとconfigファイルをコピーする。
    1. VSCODE画面左下のアイコンから「リモートウィンドウ」を開く。
    1. Remote - Containers：Opne Folder in Containerを選択する。
    1. リモートコンテナ