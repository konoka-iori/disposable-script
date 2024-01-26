# disposable-script
簡単な使い捨てのスクリプトとかコードとか

## 使い方

### `mp4_to_mp3.ps1`

このスクリプトの実行にはFFmpegが必要です。

FFmpegを使って同じディレクトリ内にあるmp4を一括でmp3にしてくれるスクリプトです。

mp3はmp4と同じディレクトリ内に保存されます。とりあえず急いでmp3にしたいときに使ったもの。です。FFmpegのコードをいじればもっと高度なこと（音質の指定とか？）ができるはず。

### `escape_json.bat`

JSONファイルのダブルクォーテーションをエスケープしてインデントと改行を削除するスクリプトです。

batファイルにJSONファイルをドラッグアンドドロップしたら実行されます。

エスケープされたものはtxt形式でJSONファイルと同じディレクトリに保存されます。

[gemini-discord-bot](https://github.com/konoka-iori/gemini-discord-bot)などで使う用として作成。
