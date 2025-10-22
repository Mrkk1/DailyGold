#!/bin/bash

# 🚀 DailyGold 快速部署脚本
# 使用方法: ./quick_deploy.sh 你的GitHub用户名

echo "🎉 DailyGold 快速部署工具"
echo "================================"

# 检查参数
if [ $# -eq 0 ]; then
    echo "📝 请提供你的GitHub用户名："
    read -p "GitHub用户名: " github_username
else
    github_username=$1
fi

if [ -z "$github_username" ]; then
    echo "❌ GitHub用户名不能为空"
    exit 1
fi

echo ""
echo "👤 GitHub用户名: $github_username"
echo "📦 仓库名称: DailyGold"
echo "🔗 仓库地址: https://github.com/$github_username/DailyGold"
echo ""

# 检查是否已添加远程仓库
if git remote get-url origin >/dev/null 2>&1; then
    echo "⚠️  检测到已存在的远程仓库"
    current_url=$(git remote get-url origin)
    echo "当前远程仓库: $current_url"
    
    read -p "是否要更新为新的仓库地址？(y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git remote set-url origin "https://github.com/$github_username/DailyGold.git"
        echo "✅ 远程仓库地址已更新"
    fi
else
    # 添加远程仓库
    git remote add origin "https://github.com/$github_username/DailyGold.git"
    echo "✅ 远程仓库已添加"
fi

echo ""
echo "🚀 开始推送到GitHub..."

# 推送代码
if git push -u origin main; then
    echo ""
    echo "🎊 部署成功！"
    echo ""
    echo "📋 接下来请完成以下步骤："
    echo "1. 访问: https://github.com/$github_username/DailyGold"
    echo "2. 点击 'Actions' 标签页"
    echo "3. 启用 GitHub Actions（如果需要）"
    echo "4. 点击 '📈 每日金价获取' 工作流"
    echo "5. 点击 'Run workflow' 手动触发第一次运行"
    echo ""
    echo "🟢 完成后，你的GitHub贡献图将保持绿色！"
    echo ""
    echo "📊 项目特性："
    echo "  ✨ 每天4次自动提交"
    echo "  📈 实时金价数据获取"
    echo "  📊 自动统计信息更新"
    echo "  🤖 完全自动化运行"
    echo ""
    echo "🎯 自动执行时间："
    echo "  - 上午 9:00 (北京时间)"
    echo "  - 下午 2:00 (北京时间)"
    echo "  - 下午 6:00 (北京时间)"
    echo "  - 晚上 10:00 (北京时间)"
else
    echo ""
    echo "❌ 推送失败！"
    echo ""
    echo "🔍 可能的原因："
    echo "1. 尚未在GitHub创建 'DailyGold' 仓库"
    echo "2. 仓库名称不匹配"
    echo "3. 没有推送权限"
    echo "4. 网络连接问题"
    echo ""
    echo "💡 解决方案："
    echo "1. 先在GitHub创建名为 'DailyGold' 的公开仓库"
    echo "2. 确保仓库名称完全匹配"
    echo "3. 检查GitHub登录状态"
    echo "4. 稍后重试推送"
    echo ""
    echo "🔄 重试推送命令："
    echo "   git push -u origin main"
fi

echo ""
echo "📚 更多帮助请查看："
echo "  - DEPLOY_GUIDE.md (详细部署指南)"
echo "  - README.md (项目说明)"
echo "  - setup.md (设置说明)"
