# 📈 每日金价获取器 (DailyGold)

[![每日金价获取](https://github.com/yourusername/DailyGold/actions/workflows/daily-gold-price.yml/badge.svg)](https://github.com/yourusername/DailyGold/actions/workflows/daily-gold-price.yml)
![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/DailyGold)
![GitHub repo size](https://img.shields.io/github/repo-size/yourusername/DailyGold)

> 🏆 自动获取每日金价数据，保持GitHub贡献图绿格的神器！

## 🌟 项目特色

- 🤖 **全自动运行**: 使用GitHub Actions每日自动执行
- 📊 **数据持久化**: 将金价数据保存为JSON和CSV格式
- 🟢 **保持活跃**: 每日自动提交，让你的GitHub贡献图保持绿色
- 📈 **实时统计**: 自动更新金价统计信息
- 🔄 **多时段获取**: 每日两次获取金价数据
- 🆓 **完全免费**: 使用免费的API和GitHub Actions




## 📊 金价统计

- **最新金价**: $2021.25/oz
- **最高价格**: $2033.73/oz
- **最低价格**: $1955.97/oz
- **平均价格**: $2003.65/oz
- **数据条数**: 3
- **最后更新**: 2025-10-22 09:46:30

## 🚀 快速开始

### 1. Fork 这个仓库

点击右上角的 "Fork" 按钮，将此仓库复制到你的GitHub账户下。

### 2. 启用 GitHub Actions

1. 进入你Fork的仓库
2. 点击 "Actions" 标签页
3. 如果看到提示，点击 "I understand my workflows, go ahead and enable them"

### 3. 手动触发第一次运行

1. 在 Actions 页面，点击 "📈 每日金价获取" 工作流
2. 点击 "Run workflow" 按钮
3. 选择 "main" 分支，点击绿色的 "Run workflow" 按钮

### 4. 查看结果

几分钟后，你应该能看到：
- 新的提交记录
- `data/` 目录下的金价数据文件
- 更新的README统计信息

## 📁 项目结构

```
DailyGold/
├── .github/
│   └── workflows/
│       └── daily-gold-price.yml    # GitHub Actions工作流
├── data/
│   ├── .gitkeep                    # 确保目录被跟踪
│   ├── gold_prices.json            # JSON格式的金价数据
│   └── gold_prices.csv             # CSV格式的金价数据
├── fetch_gold_price.py             # 主要的金价获取脚本
├── requirements.txt                # Python依赖
├── daily_report.md                 # 每日生成的报告
└── README.md                       # 项目说明文档
```

## ⚙️ 配置说明

### 自动执行时间

默认配置下，脚本会在以下时间自动执行：
- **每日上午9点** (北京时间) - UTC 1:00
- **每日下午6点** (北京时间) - UTC 10:00

你可以修改 `.github/workflows/daily-gold-price.yml` 文件中的 `cron` 表达式来调整执行时间。

### 修改执行频率

如果你想要更频繁的提交来保持更绿的贡献图，可以：

1. 编辑 `.github/workflows/daily-gold-price.yml`
2. 在 `schedule` 部分添加更多的 `cron` 表达式
3. 例如每6小时执行一次：
   ```yaml
   schedule:
     - cron: '0 */6 * * *'  # 每6小时执行一次
   ```

## 📊 数据格式

### JSON格式 (`data/gold_prices.json`)

```json
[
  {
    "price": 2045.67,
    "currency": "USD",
    "unit": "oz",
    "date": "2024-01-15",
    "time": "09:00:15",
    "timestamp": "2024-01-15T09:00:15.123456"
  }
]
```

### CSV格式 (`data/gold_prices.csv`)

```csv
日期,时间,价格,货币,单位
2024-01-15,09:00:15,2045.67,USD,oz
```

## 🔧 本地运行

如果你想在本地测试脚本：

1. **克隆仓库**
   ```bash
   git clone https://github.com/yourusername/DailyGold.git
   cd DailyGold
   ```

2. **安装依赖**
   ```bash
   pip install -r requirements.txt
   ```

3. **运行脚本**
   ```bash
   python fetch_gold_price.py
   ```

## 🎯 自定义功能

### 添加更多数据源

你可以修改 `fetch_gold_price.py` 文件来添加更多的金价数据源：

```python
def get_gold_price_from_custom_api():
    # 添加你的自定义API调用
    pass
```

### 修改数据格式

如果你想要不同的数据格式，可以修改 `save_to_json()` 和 `save_to_csv()` 函数。

### 添加通知功能

你可以添加邮件通知、Slack通知等功能，在金价发生大幅波动时发送提醒。

## 🤝 贡献指南

欢迎提交Issue和Pull Request！

1. Fork 这个项目
2. 创建你的功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开一个Pull Request

## 📝 许可证

这个项目使用MIT许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## ⚠️ 免责声明

- 本项目仅用于学习和演示目的
- 金价数据可能不是实时的，请勿用于实际交易决策
- 使用任何金融数据进行投资决策前，请咨询专业的金融顾问

## 🙏 致谢

- 感谢GitHub Actions提供的免费CI/CD服务
- 感谢各种免费的金价API服务
- 感谢开源社区的支持

## 📞 联系方式

如果你有任何问题或建议，请：
- 提交Issue
- 发送邮件到你的邮箱
- 在Twitter上联系 @yourusername

---

⭐ 如果这个项目对你有帮助，请给它一个星星！

🔥 **让你的GitHub贡献图保持绿色，从今天开始！** 🔥
