#!/bin/bash
# 清迈高尔夫项目 Vercel 部署脚本
# 使用方法: chmod +x deploy.sh && ./deploy.sh

echo "🚀 开始部署清迈高尔夫项目到 Vercel..."

# 检查 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "📦 安装 Vercel CLI..."
    npm install -g vercel
fi

# 使用你的 Token 部署
export VERCEL_TOKEN="77d06RyAJwmo7FEFQrB8kk6E"

echo "📤 正在部署..."
vercel deploy --prod --yes --token="$VERCEL_TOKEN"

echo "✅ 部署完成！"
