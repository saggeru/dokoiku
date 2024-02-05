## アプリケーション名
- ### ドコイク

## アプリケーションの概要
> - 自分史を作ろう<br>
旅先での当時の見え方・考え方を記録します<br>
過去の投稿を見返すことができるので、日記感覚で使用していただければと思います。

> - 旅行先を提案<br>
有名スポットから穴場まで<br>
ユーザーの声をリアルにお届けします。

## URL
- https://dokoiku.onrender.com

## テスト用アカウント
> - メールアドレス : test@1<br>
パスワード : a1234567

> - メールアドレス : test@2<br>
パスワード : a1234567

## 利用方法
1. ユーザー登録画面より項目に沿ってアカウント登録
2. メニューから新規投稿ページへ遷移し項目に沿って投稿<br>
2-1. 登録する場所(行った場所)はGoogle mapより検索ができます。住所、及び名称がうろ覚えの際の支援として取り入れています。<br>
検索結果を選択していただいても大丈夫です。名称及び住所のみでの登録も大丈夫です。

## ドコイクを作成した背景
休日の過ごし方として、どこか気分転換に行きたい
→Webで検索してもメジャー処しかヒットしない…　どこのサイトも似たり寄ったり…<br>
→結局家で過ごすことが多かったです。<br>
このアプリでは手軽に旅行～おでかけを見つけられたり、投稿者のリアルな声を表現します。

## 実装した機能についての画像やGIFおよびその説明
- (新規投稿ページ)住所/名称のみ もしくは検索結果を選択しても同じ結果が得られます! ↓[![住所/名称のみでも、検索結果を選択しても同じ結果が得られます!](https://i.gyazo.com/cdb709a2351eec023863d350b22982b5.gif)](https://gyazo.com/cdb709a2351eec023863d350b22982b5)
- 都道府県ごとの検索がお手軽です! ↓[![2クリックで都道府県検索ができます!](https://i.gyazo.com/ab4013a0960ca39a0fa3ed63bb99a0bb.gif)](https://gyazo.com/ab4013a0960ca39a0fa3ed63bb99a0bb)
- コミュニケーション機能も揃っています! たくさんいいねを貰いましょう! ↓[![Image from Gyazo](https://i.gyazo.com/695e028b3908806f2ae476a476c24fec.gif)](https://gyazo.com/695e028b3908806f2ae476a476c24fec)

## 実装予定の機能
- ユーザー同士のコミュニケーションがさらに図れる機能(コメント機能 他)
- 現状では1つの場所しか紹介できません。旅行ルートを提案する機能を実装したいと思います。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/c20855bf16d29bdb3535c3d21457e1e4.png)](https://gyazo.com/c20855bf16d29bdb3535c3d21457e1e4)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/f8bd5e70c6e720b46a03140b8b81949f.png)](https://gyazo.com/f8bd5e70c6e720b46a03140b8b81949f)

## 開発環境
- フロントエンド
- バックエンド
- テキストエディタ

## 工夫したポイント
- UXの向上を意識しました<br>
新規投稿ページにおいて、フォームとGoogle map検索欄を一体化させました。<br>
それによりユーザーは確実なデータを送信することができ、サーバーサイドにおいても確実なデータを受け、詳細ページでデータを表示させることができます。

## 改善点
- より詳細なタグ付けを実装する<br>
詳細な検索を提供し、ユーザーへの提案を具体化することによりさらにUX向上を目指せるかと思います。

## 制作時間
- 2週間弱