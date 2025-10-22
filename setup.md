# 🚀 DailyGold 快速设置指南

## 📋 部署步骤

### 1. 创建GitHub仓库

1. 登录你的GitHub账户
2. 点击右上角的 "+" 号，选择 "New repository"
3. 仓库名称填写：`DailyGold` 
4. 选择 "Public" (公开仓库)
5. 不要勾选 "Add a README file"（我们已经有了）
6. 点击 "Create repository"

### 2. 上传项目文件

在你的终端中执行以下命令：

```bash
# 进入项目目录
cd /Users/yuweilong/Desktop/DailyGold

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交初始版本
git commit -m "🎉 初始化每日金价获取项目

✨ 功能特性:
- 📈 自动获取每日金价数据
- 🤖 GitHub Actions自动执行
- 📊 数据持久化存储
- 🟢 保持GitHub贡献图活跃

#DailyGold #AutoCommit #KeepGreen"

# 添加远程仓库（替换为你的GitHub用户名）
git remote add origin https://github.com/你的用户名/DailyGold.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

### 3. 启用GitHub Actions

1. 进入你的GitHub仓库页面
2. 点击 "Actions" 标签页
3. 如果看到提示，点击 "I understand my workflows, go ahead and enable them"
4. 你应该能看到 "📈 每日金价获取" 工作流

### 4. 手动触发第一次运行

1. 在 Actions 页面，点击 "📈 每日金价获取" 工作流
2. 点击右侧的 "Run workflow" 按钮
3. 选择 "main" 分支
4. 点击绿色的 "Run workflow" 按钮

### 5. 验证自动执行

几分钟后检查：
- ✅ 工作流运行成功（绿色勾号）
- ✅ 有新的提交记录
- ✅ `data/` 目录下有数据文件
- ✅ README中的统计信息已更新

## ⏰ 自动执行时间表

你的项目将在以下时间自动执行：

| 时间 (北京时间) | UTC时间 | 说明 |
|----------------|---------|------|
| 上午 9:00 | 01:00 | 工作日开始 |
| 下午 2:00 | 06:00 | 午后时段 |
| 下午 6:00 | 10:00 | 下班时间 |
| 晚上 10:00 | 14:00 | 晚间时段 |

**每天4次自动提交，确保你的GitHub贡献图保持绿色！** 🟢

## 🔧 自定义配置

### 修改执行频率

如果你想要更频繁的提交，编辑 `.github/workflows/daily-gold-price.yml`：

```yaml
schedule:
  - cron: '0 */3 * * *'  # 每3小时执行一次
  - cron: '30 */6 * * *' # 每6小时的第30分钟执行
```

### 添加更多变化

为了让提交更有趣，你可以：

1. **修改提交信息模板**：编辑工作流文件中的提交信息
2. **添加随机元素**：在Python脚本中添加更多随机数据
3. **创建不同类型的文件**：每次提交时创建不同的临时文件

## 🎯 预期效果

部署成功后，你将获得：

- 📈 **每日自动更新的金价数据**
- 🟢 **持续绿色的GitHub贡献图**
- 📊 **实时更新的数据统计**
- 🤖 **完全自动化的工作流程**
- 🏆 **活跃的GitHub档案**

## ⚠️ 注意事项

1. **GitHub Actions限制**：
   - 免费账户每月有2000分钟的Actions时间
   - 本项目每次运行约1-2分钟
   - 每天4次 × 30天 = 120次/月，约240分钟/月

2. **数据准确性**：
   - 使用的是模拟金价数据
   - 仅用于演示和保持仓库活跃
   - 不应用于实际投资决策

3. **仓库大小**：
   - 数据文件会逐渐增大
   - 建议定期清理历史数据
   - 或者设置数据保留策略

## 🎉 完成！

恭喜！你现在拥有一个每天自动运行的GitHub项目，它将：

- ✨ 让你的GitHub档案保持活跃
- 📈 展示你对自动化的掌握
- 🔄 提供持续的项目更新
- 🏆 维护一个绿色的贡献图

**享受你的绿色GitHub贡献图吧！** 🟢✨
