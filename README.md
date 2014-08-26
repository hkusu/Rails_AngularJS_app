Qiitaへの投稿(http://qiita.com/hkusu/items/b34f684b49751d9c9abd)で作成したソースです。

手元で再現する場合は、次のようにしてください。

```
$ git clone https://github.com/hkusu/Rails_AngularJS_app.git
$ cd rails_angular_app
$ bundle install --path vendor/bundle
$ ./bin/rake db:create
$ ./bin/rake db:migrate
$ cd front
$ npm install
$ bower install
```

Rails の `public` ディレクトリもコミットしておいたつもりですが、もし無ければ、次のようにしてフロントエンドのソースを `public` フォルダへ展開してください。

```shell:
$ cd rails_angular_app/front
$ grunt build
```

アプリケーションを動かすには、次のように Rails のローカルサーバを起動した後、ブラウザで `http://127.0.0.1:3000` へアクセスしてください。

```shell:
$ cd rails_angular_app
$ ./bin/rails s
```
