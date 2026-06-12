# Hello Quantum World (HQW)

Hello Quantum World（HQW）は、  
**「出会い」と「握手」をテーマにした Java × JSP × Servlet の Web アプリケーション**です。

ユーザーとランダムに生成された相手キャラクターが握手を行い、  
**100万分の1の確率で「量子トンネル効果」が発生する演出**を楽しめます。

---

## 🚀 プロジェクトの目的

- Java / JSP / Servlet の基礎を実践的に学ぶ  
- MVC 構造を理解し、Web アプリとして動く形にまとめる  
- GitHub を使ったバージョン管理・公開の経験を積む  
- JSON データの読み込み・加工を実装し、拡張性のある構造を作る

---

## 🧪 使い方（How to Use）

1. `welcome.jsp` からアプリを開始  
2. 「握手する」ボタンを押すと、  
   ・ ランダムな **国（Country）**  
   ・ ランダムな **苗字（Surname）**  
   が生成され、相手キャラクターが決定  
3. 握手アニメーションが再生  
4. **100万分の1の確率で「量子トンネル効果」が発生**  
5. 「もう一度」ボタンで再挑戦できます

---

## 🖼 スクリーンショット

### Welcome 画面
![welcome](images/welcome.png)

### メイン画面（握手前）
![index](images/index.png)

### 結果画面（通常）
![result-normal](images/result-normal.png)

### 結果画面（量子トンネル効果）
![result-quantum](images/result-quantum.png)


---

## 🛠 技術スタック（Tech Stack）

- **Java 17**
- **JSP / Servlet**
- **Tomcat 10**
- **JSTL**
- **HTML / CSS / JavaScript**
- **Git / GitHub**
- **JSON データ読み込み（GitHub RAW URL）**

---

## 📁 データ構造（Country / Surname）

HQW では、以下の JSON データを GitHub RAW から読み込みます：

- `countries.json`  
  - ISO コード付きの国データ  
  - 政治的に安定した国を中心に整理  
- `surnames.json`  
  - 国ごとの苗字データ  
  - 上位10件・下位10件を追加し、リアルな人物生成を実現

---

## 💡 工夫したポイント

- **量子トンネル効果の演出を CSS アニメーションで実装**  
- MVC 構造に基づき、  
  - Servlet → データ生成  
  - JSP → 表示  
  の役割を明確化  
- JSON データを GitHub RAW から読み込むことで、  
  **アプリを再デプロイせずにデータ更新が可能**  
- 国データ・苗字データを大幅に拡張し、  
  **より多様でリアルなキャラクター生成を実現**

---

## 📚 学んだこと

- GitHub への push / リモート設定 / トークン認証  
- JSON データの構造と整形  
- Java Servlet と JSP の連携  
- MVC アーキテクチャの理解  
- GitHub を使ったポートフォリオ公開の流れ  
- エラーの切り分けと原因調査（認証・リモート設定など）

---

## 👤 作者
  
沖縄の職業訓練校で Java / Python を学習中。  
元フィットネス業界の経験を活かし、  
「人に寄り添う IT」をテーマに学習中。

---

## 🔗 リポジトリ

https://github.com/okdtmfm-yamval/HQWwebapp
