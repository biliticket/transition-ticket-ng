# Transition Ticket NG

> 下一代 Transition Ticket

## 声明

[电报交流群](https://t.me/bilibili_ticket)

[下载地址](https://github.com/biliticket/transition-ticket-ng/releases)

本程序仅供学习交流, 不得用于商业用途,

使用本程序进行违法操作产生的法律责任由操作者自行承担,

对本程序进行二次开发/分发时请注意遵守GPL-3.0开源协议,

本脚本仅适用于蹲回流票, 我们反对将其用于抢票,

黄牛 / 收费代抢４０００＋

### 项目结构

```bash
Transition-Ticket-NG/
├─ desktop/          # 桌面
├─ mobile/           # 移动端
├─ web/              # Web
├─ ui/               # 共享组件
├─ api/              # 共享逻辑
├─ cli/              # CLI
├─ task/             # 任务
├─ util/             # 工具
```

## 开发

- [Rustup](https://rustup.rs/)
- [Pip(非必需)](https://www.python.org/)

```bash
# 克隆仓库
git clone https://github.com/biliticket/Transition-Ticket-NG.git ttng
cd ttng

# 安装Rustup(国内镜像)
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
curl --proto '=https' --tlsv1.2 -sSf https://rsproxy.cn/rustup-init.sh | sh

# 安装Rust
rustup show

# 安装cargo-binstall
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# 安装Just
cargo binstall just

# 安装开发工具
just install-dev

# 安装pre-commit(非必需)
pip install pre-commit

# 构建
just build
just release

# 运行
just cli
just gui

# 更新
just update

# 检查
just fmt

# 文档
just doc
```

## 感谢

- [biliticket/Transition-Ticket](https://github.com/biliticket/transition-ticket)
- [Amorter/biliTicker_gt](https://github.com/Amorter/biliTicker_gt)
- [biliticket/BHYG](https://github.com/biliticket/BHYG)
- [mikumifa/biliTickerBuy](https://github.com/mikumifa/biliTickerBuy)
- [Just-Prog/Bilibili_show_ticket_auto_order](https://github.com/Just-Prog/Bilibili_show_ticket_auto_order)
