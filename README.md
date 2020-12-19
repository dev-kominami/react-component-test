# React Component test
## 初期構築
dockerのインストールは割合します

## 初期構築
dockerのインストールは割合します

1. Dockerfileのあるディレクトリで以下のコマンドを実行
```
docker build ./ -t node:12.16.1
```

2. appディレクトリでdocker runを実行
```
cd app/
docker run -it -d --name react-component-test -p 3000:3000 -v `pwd`:/usr/src/app node:12.16.1
```

完了

