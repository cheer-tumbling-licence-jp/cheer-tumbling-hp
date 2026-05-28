# 一般社団法人 チアタンブリング協会 公式HP

CTA協会公式サイト。協会の概要・事業内容（指導ライセンス／ロードマップアプリ／教本）・お知らせ・お問い合わせを集約したハブサイト。

- **公開URL**: <https://cheer-tumbling.jp/>
- **GitHubリポジトリ**: <https://github.com/cheer-tumbling-licence-jp/cheer-tumbling-hp>

## 関連サイト
- 指導ライセンスLP: <https://licence.cheer-tumbling.jp/>
- ロードマップアプリ: <https://roadmap.cheer-tumbling.jp/>

---

## 更新方法

### A. Claudeに頼む（一番簡単）
「HPの〇〇を△△に変えて公開して」と頼むだけ。

### B. GitHub Desktop
編集 → Commit → Push origin で自動公開。

### C. ターミナル
```bash
cd /Users/don/クロードコードファイル/HP
./publish.sh "更新内容のメモ"
```

---

## ファイル構成
```
HP/
├── index.html        ← 本体
├── README.md
├── publish.sh
├── CNAME             ← 独自ドメイン指定（消さない）
├── robots.txt
├── sitemap.xml
└── assets/
    ├── cta-brand-logo.png
    ├── cta-mark-level2.png
    ├── hero-bg.png
    ├── ogp-card.png
    └── icons/
```

## よく編集する場所
| 変更したいもの | キーワード |
|---|---|
| キャッチコピー | `タンブリング指導の質を` |
| 協会紹介文 | `<div class="about-body">` |
| 事業内容のカード | `<section class="services"` |
| お知らせ項目 | `<section class="news"` |
| お問い合わせ先 | `mailto:cheer.tumbling.association@gmail.com` |
| 配色 | `:root{` の `--navy:` `--gold:` 等 |
