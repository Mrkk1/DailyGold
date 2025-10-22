# 🚀 DailyGold 部署指南

## 📋 当前状态

✅ **项目文件已创建完成**
✅ **Git仓库已初始化**  
✅ **初始提交已完成**
✅ **Python脚本测试通过**

## 🎯 下一步操作

### 第1步：在GitHub创建仓库

1. **打开GitHub网站**：https://github.com
2. **登录你的账户**
3. **点击右上角的 "+" 号**，选择 "New repository"
4. **填写仓库信息**：
   - Repository name: `DailyGold`
   - Description: `📈 每日金价获取器 - 自动获取金价数据，保持GitHub贡献图绿色`
   - 选择 **Public** (公开仓库)
   - **不要**勾选 "Add a README file"
   - **不要**勾选 "Add .gitignore"
   - **不要**勾选 "Choose a license"
5. **点击 "Create repository"**

### 第2步：推送代码到GitHub

创建仓库后，GitHub会显示推送代码的命令。你需要：

1. **复制你的仓库URL**（类似：`https://github.com/你的用户名/DailyGold.git`）

2. **在终端中运行以下命令**：

```bash
# 进入项目目录（如果不在的话）
cd /Users/yuweilong/Desktop/DailyGold

# 添加远程仓库（替换为你的实际URL）
git remote add origin https://github.com/你的用户名/DailyGold.git

# 推送代码
git push -u origin main
```

### 第3步：启用GitHub Actions

1. **进入你的GitHub仓库页面**
2. **点击 "Actions" 标签页**
3. **如果看到提示**，点击 "I understand my workflows, go ahead and enable them"
4. **你应该能看到** "📈 每日金价获取" 工作流

### 第4步：手动触发第一次运行

1. **在Actions页面**，点击 "📈 每日金价获取" 工作流
2. **点击右侧的 "Run workflow" 按钮**
3. **选择 "main" 分支**
4. **点击绿色的 "Run workflow" 按钮**

### 第5步：验证部署成功

几分钟后检查：
- ✅ 工作流运行成功（绿色勾号）
- ✅ 有新的提交记录
- ✅ `data/` 目录下有更新的数据文件
- ✅ README中的统计信息已更新

## 🎊 完成！

恭喜！你现在拥有一个每天自动运行的GitHub项目：

### 📅 自动执行时间表

| 时间 (北京时间) | UTC时间 | 说明 |
|----------------|---------|------|
| 上午 9:00 | 01:00 | 工作日开始 |
| 下午 2:00 | 06:00 | 午后时段 |
| 下午 6:00 | 10:00 | 下班时间 |
| 晚上 10:00 | 14:00 | 晚间时段 |

### 🟢 预期效果

- **每天4次自动提交**
- **GitHub贡献图保持绿色**
- **实时金价数据更新**
- **自动统计信息展示**

## 🔧 如果遇到问题

### 推送失败？
- 检查仓库URL是否正确
- 确保已在GitHub创建了DailyGold仓库
- 检查网络连接

### Actions不运行？
- 确保已启用GitHub Actions
- 检查工作流文件语法
- 手动触发一次运行

### 想要更频繁的提交？
编辑 `.github/workflows/daily-gold-price.yml`，添加更多cron表达式：
```yaml
schedule:
  - cron: '0 */3 * * *'  # 每3小时执行一次
```

## 📞 需要帮助？

如果在部署过程中遇到任何问题，请：
1. 检查GitHub仓库是否创建成功
2. 确认Actions权限已启用
3. 查看Actions运行日志

**享受你的绿色GitHub贡献图吧！** 🟢✨
