## これなに

mysqlのwindow関数を理解するために使う、マスターデータを保管しているリポジトリ

## Usage

docker-composeを使いDBを立ち上げてください

```
$ docker-compose up
```

DBの環境変数は適宜docker-compose.ymlを修正して変更してください。

migrationするためにpipenvが必要です。

```
$ pipenv install
$ pipenv shell
(pipenv) $ db-migrate
```

適宜sqlディレクトリ内のSQLを使ってwindow関数を試してください。
