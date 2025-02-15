# ⏳ 自分専用TODOリストアプリ - 時間管理特化型

## 🎯 概要
個人向けの時間管理特化型TODOリストアプリ。  
タスクごとにストップウォッチやポモドーロ機能を活用し、**どのタスクにどれだけ時間を使ったか**を把握できる。  
可視化機能を搭載し、時間の使い方を最適化する。

## 📌 主要機能
- ✅ TODOリスト機能（作成・編集・削除・グルーピング）
- ✅ 優先度設定（重要度・締切日管理）
- ✅ **ストップウォッチ & ポモドーロ**（タスクごとに紐付け）
- ✅ **時間の可視化**（日・週・月単位で分析）
- ✅ タイトル・スタート & ゴール日時・資料添付
- ✅ **マルチプラットフォーム対応**（iOS / Android / Mac）

---

## 📱 画面構成

### 1️⃣ ホーム画面（タスク一覧）
📌 **目的:** TODOリストを管理  
- タスクのリスト表示（優先度・グループ分け）
- フィルター・検索機能
- タスクの並び替え（期限順・優先度順）
- **ストップウォッチのクイック起動**

### 2️⃣ タスク詳細画面
📌 **目的:** タスクの詳細情報を表示・編集  
- タスクのタイトル・説明
- スタート & ゴール日時の設定
- 予定時間の設定
- **ストップウォッチ & ポモドーロをタスクに紐付け**
- **計測時間の累積管理**（途中停止しても加算）
- 資料の添付（URLやメモ）

### 3️⃣ ストップウォッチ & ポモドーロ画面
📌 **目的:** 時間計測 & 集中管理  
- **タスクごとの時間計測**
- 計測時間の表示（累積 & 現在のポモドーロ時間）
- スタート / 停止 / リセット ボタン
- **ポモドーロの進捗表示**（例: 3/4回目）
- **作業時間・休憩時間のカスタマイズ**

### 4️⃣ 可視化 & 分析画面
📌 **目的:** 時間の使い方を分析  
- **1日・1週間・1ヶ月単位のデータ表示**
- **円グラフ:** タスクごとの時間割合
- **棒グラフ:** 日ごとの作業時間推移
- **カレンダー:** 累計作業時間の確認
- **タスクランキング:** 最も時間をかけたタスクをリスト化

### 5️⃣ 設定画面
📌 **目的:** アプリのカスタマイズ  
- ポモドーロタイマーの時間設定（25分/50分など）
- 通知のON/OFF
- テーマ変更（ダークモードなど）
- iCloud同期設定
- ウィジェットのカスタマイズ

---

## 🔧 技術スタック
- **言語:** Swift  
- **フレームワーク:** SwiftUI  
- **データ管理:** SwiftData / CloudKit  
- **マルチプラットフォーム対応:** Mac Catalyst  

---

## 🎯 開発ロードマップ
- [ ] ワイヤーフレームの作成
- [ ] データモデルの設計
- [ ] ホーム画面の実装
- [ ] ストップウォッチ機能の実装
- [ ] 可視化機能の開発
- [ ] UI/UXの調整 & 改善

---

## 🏗 今後の展望
- **ウィジェット対応**
- **Watch対応**
- **ショートカット & 音声入力**
- **AIを活用した作業時間の最適化**
