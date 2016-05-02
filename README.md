# git diff to zip
Gitのdiffを取得し、差分ファイル一覧をzipにまとめるスクリプトです

# 使い方
* ルートディレクトリ直下の ``` gitzip.sh ``` が本体のファイルです
* 差分を取得したいgit管理下のディレクトリに移動します
* 現在チェックアウトしているブランチと、パラメータで渡すブランチの差分を出力します
* 例）チェックアウトしているブランチが ``` develop ```、差分を取得したいブランチが ``` master ``` の場合

```
$ cd /type/your/project/directory
$ git checkout develop
$ sh ~/your/directory/git-diff-to-zip/gitzip.sh master
```

* 現在のディレクトリに diff.zip が作成されていれば成功です
* 引数無指定の場合はデフォルトでmasterとの差分を取得します
* 取得先のブランチが存在しない場合はなにもせずプログラムは終了します
