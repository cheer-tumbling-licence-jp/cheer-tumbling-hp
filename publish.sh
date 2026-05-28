#!/usr/bin/env bash
# ============================================================
# 協会公式HP 公開スクリプト
# 使い方： ./publish.sh "更新メモ"
# 例：    ./publish.sh "お知らせを更新"
#
# 何が起こるか：
#   1. 変更されたファイルをすべてGitに記録
#   2. GitHubに送信
#   3. 数分後、 https://cheer-tumbling.jp/ に自動反映
# ============================================================

set -e
cd "$(dirname "$0")"

MSG="${1:-Update on $(date +%Y-%m-%d\ %H:%M)}"

echo "▶ 変更を確認しています..."
if [ -z "$(git status --porcelain)" ]; then
  echo "✓ 変更はありません。終了します。"; exit 0
fi
git status --short

echo ""
echo "▶ コミット作成: $MSG"
git add -A
git commit -m "$MSG"

echo ""
echo "▶ GitHubに送信..."
git push origin main

echo ""
echo "✅ 送信完了！1〜2分後に下記URLへ自動反映されます："
echo "   https://cheer-tumbling.jp/"
echo ""
echo "（反映状況の確認）"
echo "   https://github.com/cheer-tumbling-licence-jp/cheer-tumbling-hp/actions"
