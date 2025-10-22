#!/bin/bash

# 🚀 DailyGold 项目初始化脚本
# 这个脚本将帮助你快速设置GitHub仓库

echo "🎉 欢迎使用 DailyGold 每日金价获取器！"
echo ""

# 检查是否已经是Git仓库
if [ -d ".git" ]; then
    echo "⚠️  检测到已存在的Git仓库"
    read -p "是否要重新初始化？(y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf .git
        echo "🗑️  已删除现有Git仓库"
    else
        echo "❌ 取消操作"
        exit 1
    fi
fi

# 获取GitHub用户名
echo "📝 请输入你的GitHub用户名："
read -p "GitHub用户名: " github_username

if [ -z "$github_username" ]; then
    echo "❌ GitHub用户名不能为空"
    exit 1
fi

echo ""
echo "🔧 开始初始化Git仓库..."

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 创建初始提交
git commit -m "🎉 初始化每日金价获取项目

✨ 功能特性:
- 📈 自动获取每日金价数据  
- 🤖 GitHub Actions自动执行
- 📊 数据持久化存储
- 🟢 保持GitHub贡献图活跃
- ⏰ 每天4次自动提交

🚀 部署说明:
1. 在GitHub创建名为 'DailyGold' 的公开仓库
2. 运行此脚本完成初始化
3. 推送到GitHub并启用Actions
4. 享受绿色的贡献图！

#DailyGold #AutoCommit #KeepGreen #GitHubActions"

# 设置远程仓库
git remote add origin "https://github.com/$github_username/DailyGold.git"

# 设置主分支
git branch -M main

echo ""
echo "✅ Git仓库初始化完成！"
echo ""
echo "📋 接下来的步骤："
echo "1. 在GitHub创建名为 'DailyGold' 的公开仓库"
echo "2. 运行以下命令推送代码："
echo "   git push -u origin main"
echo "3. 在GitHub仓库中启用Actions"
echo "4. 手动触发第一次工作流运行"
echo ""
echo "🎯 仓库地址: https://github.com/$github_username/DailyGold"
echo ""
echo "🟢 完成后，你的GitHub贡献图将保持绿色！"
echo ""

# 询问是否立即推送
read -p "是否现在就推送到GitHub？(确保你已经创建了仓库) (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🚀 正在推送到GitHub..."
    if git push -u origin main; then
        echo "✅ 推送成功！"
        echo "🎉 请访问 https://github.com/$github_username/DailyGold 查看你的项目"
        echo "📋 记得在Actions页面启用工作流程！"
    else
        echo "❌ 推送失败，请检查："
        echo "   1. 是否已在GitHub创建了DailyGold仓库"
        echo "   2. 是否有推送权限"
        echo "   3. 网络连接是否正常"
        echo ""
        echo "💡 你也可以稍后手动推送："
        echo "   git push -u origin main"
    fi
else
    echo "📝 稍后推送时请运行："
    echo "   git push -u origin main"
fi

echo ""
echo "🎊 DailyGold 项目设置完成！享受你的绿色GitHub贡献图吧！"
