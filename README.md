# databricks
Scala関西2018 向け Databricksサンプルコード

## databricks 開発環境構築
1. databricks cli をインストールしてください.
   -  https://docs.databricks.com/user-guide/dev-tools/databricks-cli.html
1. databricks configure --token で環境変数を登録してください.
   - host名: https://{account}.cloud.databricks.com/
   - token: [https://{account}.cloud.databricks.com/#setting/account] で発行したAccess Tokensを入力
1. 環境変数、$(DBC_USER)に自分のDatabricksのメールアドレスを入力してください. 後続のnotebook開発で利用します.

## notebook開発方法
1. デプロイ済みノートブックをdatabricksからローカルにpullする/あるいはgithubからgit pullする
   - make dbc_pull_prd
   - git pull origin/master

1. 自分のworkspaceにノートブックをpushする
   - make dbc_push_dev
   - `/Users/$(DBC_USER)/workspace/` にプッシュされます

1. 開発完了後ローカルに開発済みのモジュールをpullしてローカルに持ってくる
   - make dbc_pull_dev

## notebook example
  - ./notebooks/1-SparkExample.html
    - Sparkによる簡単なサンプルコード
  - ./notebooks/2-CollaborativeFiltering.html
    - 協調フィルタリングをするサンプルコード
  - ./notebooks/3-MagicNumberAnalyze.html
    - マジックナンバー分析をするサンプルコード
