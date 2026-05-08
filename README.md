# math-olympic

儿子目前上小学五年级，我日常给他辅导数学竞赛。我会根据他的学习进度和题目特点，经常自己编写一些讲义，整理在这里，方便持续补充和回顾。

## 生成 PDF

仓库中提供了一个 Bash 脚本，可以把 `.tex` 文件编译成对应的 `.pdf` 文件。

前提：

- 本地已经安装 `MacTeX`
- 命令行中可以直接使用 `xelatex`

脚本位置：

```bash
./scripts/build_pdf.sh
```

使用方法：

```bash
# 编译单个 tex 文件
./scripts/build_pdf.sh "组合讲义/combinatorics_training_handout.tex"

# 一次编译多个 tex 文件
./scripts/build_pdf.sh \
  "组合讲义/combinatorics_weekly_test_A.tex" \
  "组合讲义/combinatorics_weekly_test_B.tex"

# 编译仓库中的所有 tex 文件
./scripts/build_pdf.sh --all
```

说明：

- 脚本默认使用 `xelatex`
- 每个文件会自动编译 2 次，以确保目录、页码引用等信息更新完整
- 生成的 `pdf` 文件会放在对应的 `.tex` 文件所在目录
