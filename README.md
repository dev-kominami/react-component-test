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

## テスト実行方法
appディレクトリで以下を実行
```
yarn test
```

## Snapshot
file: Link.test.js

### 実行内容
同一ディレクトリに`__snapshots__`が作成され、
その中にテストコードで指定された値と同じかどうかを検証する。

検証結果がエラーとなった場合には内容を確認する。
確認結果、新しいコードが正しい場合はテスト実行後に`u`を実行し、snapshot内容をアップデートする

```
 › 3 snapshots failed.
Snapshot Summary
 › 3 snapshots failed from 1 test suite. Inspect your code changes or press `u` to update them.

Test Suites: 1 failed, 1 passed, 2 total
Tests:       1 failed, 1 passed, 2 total
Snapshots:   3 failed, 3 total
Time:        9.387 s
Ran all test suites.

Watch Usage
 › Press f to run only failed tests.
 › Press o to only run tests related to changed files.
 › Press u to update failing snapshots. ←　これ
 › Press i to update failing snapshots interactively.
 › Press q to quit watch mode.
 › Press p to filter by a filename regex pattern.
 › Press t to filter by a test name regex pattern.
 › Press Enter to trigger a test run.
```