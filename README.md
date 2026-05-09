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
# Compile one tex file
./scripts/build_pdf.sh "组合讲义/combinatorics_training_handout.tex"

# Compile multiple tex files
./scripts/build_pdf.sh \
  "组合讲义/combinatorics_weekly_test_A.tex" \
  "组合讲义/combinatorics_weekly_test_B.tex"

# Compile all tex files in the repository
./scripts/build_pdf.sh --all
```

说明：

- 脚本默认使用 `xelatex`
- 每个文件会自动编译 2 次，以确保目录、页码引用等信息更新完整
- 生成的 `pdf` 文件会放在对应的 `.tex` 文件所在目录

## 资料结构

目前 `组合讲义` 目录下已经逐步形成一套按专题组织的组合训练资料，主要包括：

- 课堂讲义：用于系统讲解一个专题
- 提高训练题单：用于课后巩固和变式训练
- 周测 A/B：用于分层检测
- 专题目录页：用于说明单个专题资料的使用顺序
- 总课程目录：用于说明多个专题之间的整体顺序

## 文档目录

### `数论讲义`

| 类型 | 适合什么时候用 | 文件 |
| --- | --- | --- |
| 总讲义 | 想把初中竞赛常见数论内容系统讲一遍时使用 | `数论讲义/number_theory_complete_classroom_handout.tex` / `数论讲义/number_theory_complete_classroom_handout.pdf` |

### `组合讲义`

#### 总目录与早期资料

| 类别 | 适合什么时候用 | 文件 |
| --- | --- | --- |
| 总课程目录 | 想按当前主线专题安排整体教学顺序时先看这个 | `组合讲义/combinatorics_course_catalog.tex` / `组合讲义/combinatorics_course_catalog.pdf` |
| 旧版总目录 | 想回看前三到五个专题的早期阶段组织方式时使用 | `组合讲义/combinatorics_master_index.tex` / `组合讲义/combinatorics_master_index.pdf` |
| 早期组合课堂讲义 | 想看最早整理的一版综合组合入门讲义时使用 | `组合讲义/combinatorics_training_handout.tex` / `组合讲义/combinatorics_training_handout.pdf` |
| 早期提高题单 | 想回看通用组合提高题单时使用 | `组合讲义/combinatorics_advanced_problem_set.tex` / `组合讲义/combinatorics_advanced_problem_set.pdf` |
| 早期周测 A/B | 想回看最早阶段的综合检测卷时使用 | `组合讲义/combinatorics_weekly_test_A.tex` / `组合讲义/combinatorics_weekly_test_A.pdf`<br>`组合讲义/combinatorics_weekly_test_B.tex` / `组合讲义/combinatorics_weekly_test_B.pdf` |
| 早期讲义 | 想保留最早的材料样本时参考 | `组合讲义/balls_and_boxes_handout.pdf` |

#### 核心专题目录

| 专题 | 适合什么时候用 | 目录页 | 讲义 | 题单 | 周测 |
| --- | --- | --- | --- | --- | --- |
| 错位排列 | 适合孩子已经会基础排列组合，准备进入“位置受限计数”时使用 | `组合讲义/derangements_topic_index.tex` / `组合讲义/derangements_topic_index.pdf` | `组合讲义/derangements_handout.tex` / `组合讲义/derangements_handout.pdf` | `组合讲义/derangements_advanced_problem_set.tex` / `组合讲义/derangements_advanced_problem_set.pdf` | `组合讲义/derangements_weekly_test_A.tex` / `组合讲义/derangements_weekly_test_A.pdf`<br>`组合讲义/derangements_weekly_test_B.tex` / `组合讲义/derangements_weekly_test_B.pdf` |
| 容斥原理 | 适合孩子已经接触“至少一个条件、坏事件并集、重复计数”时使用 | `组合讲义/inclusion_exclusion_topic_index.tex` / `组合讲义/inclusion_exclusion_topic_index.pdf` | `组合讲义/inclusion_exclusion_handout.tex` / `组合讲义/inclusion_exclusion_handout.pdf` | `组合讲义/inclusion_exclusion_advanced_problem_set.tex` / `组合讲义/inclusion_exclusion_advanced_problem_set.pdf` | `组合讲义/inclusion_exclusion_weekly_test_A.tex` / `组合讲义/inclusion_exclusion_weekly_test_A.pdf`<br>`组合讲义/inclusion_exclusion_weekly_test_B.tex` / `组合讲义/inclusion_exclusion_weekly_test_B.pdf` |
| 递推计数 | 适合孩子开始能接受“拆成小问题、设计状态、写递推”时使用 | `组合讲义/recursive_counting_topic_index.tex` / `组合讲义/recursive_counting_topic_index.pdf` | `组合讲义/recursive_counting_handout.tex` / `组合讲义/recursive_counting_handout.pdf` | `组合讲义/recursive_counting_advanced_problem_set.tex` / `组合讲义/recursive_counting_advanced_problem_set.pdf` | `组合讲义/recursive_counting_weekly_test_A.tex` / `组合讲义/recursive_counting_weekly_test_A.pdf`<br>`组合讲义/recursive_counting_weekly_test_B.tex` / `组合讲义/recursive_counting_weekly_test_B.pdf` |
| 图论计数 | 适合孩子已经会基础计数，准备把“关系”翻译成图时使用 | `组合讲义/graph_counting_topic_index.tex` / `组合讲义/graph_counting_topic_index.pdf` | `组合讲义/graph_counting_handout.tex` / `组合讲义/graph_counting_handout.pdf` | `组合讲义/graph_counting_advanced_problem_set.tex` / `组合讲义/graph_counting_advanced_problem_set.pdf` | `组合讲义/graph_counting_weekly_test_A.tex` / `组合讲义/graph_counting_weekly_test_A.pdf`<br>`组合讲义/graph_counting_weekly_test_B.tex` / `组合讲义/graph_counting_weekly_test_B.pdf` |
| 数论方法中的组合构造 | 适合孩子已经会初中数论基础，准备把奇偶性、余数分类和不变量用于组合题时使用 | `组合讲义/number_theory_constructions_topic_index.tex` / `组合讲义/number_theory_constructions_topic_index.pdf` | `组合讲义/number_theory_constructions_handout.tex` / `组合讲义/number_theory_constructions_handout.pdf` | `组合讲义/number_theory_constructions_advanced_problem_set.tex` / `组合讲义/number_theory_constructions_advanced_problem_set.pdf` | `组合讲义/number_theory_constructions_weekly_test_A.tex` / `组合讲义/number_theory_constructions_weekly_test_A.pdf`<br>`组合讲义/number_theory_constructions_weekly_test_B.tex` / `组合讲义/number_theory_constructions_weekly_test_B.pdf` |
| 抽屉原理与极值思想 | 适合孩子开始接触“最少保证、存在性证明、最大安全数”时使用 | `组合讲义/pigeonhole_extremal_topic_index.tex` / `组合讲义/pigeonhole_extremal_topic_index.pdf` | `组合讲义/pigeonhole_extremal_handout.tex` / `组合讲义/pigeonhole_extremal_handout.pdf` | `组合讲义/pigeonhole_extremal_advanced_problem_set.tex` / `组合讲义/pigeonhole_extremal_advanced_problem_set.pdf` | `组合讲义/pigeonhole_extremal_weekly_test_A.tex` / `组合讲义/pigeonhole_extremal_weekly_test_A.pdf`<br>`组合讲义/pigeonhole_extremal_weekly_test_B.tex` / `组合讲义/pigeonhole_extremal_weekly_test_B.pdf` |
| 染色方法与棋盘问题 | 适合孩子已经学过抽屉、数论分类和不变量，准备进入棋盘覆盖与不可能性证明时使用 | `组合讲义/coloring_chessboard_topic_index.tex` / `组合讲义/coloring_chessboard_topic_index.pdf` | `组合讲义/coloring_chessboard_handout.tex` / `组合讲义/coloring_chessboard_handout.pdf` | 暂无 | 暂无 |

## 打印版 PDF 目录

如果只是准备打印，不需要看 `.tex` 源文件，可以直接按下面的 PDF 目录使用。

### `数论讲义`

- `数论讲义/number_theory_complete_classroom_handout.pdf`

### `组合讲义`

- 总课程目录：`组合讲义/combinatorics_course_catalog.pdf`
- 旧版总目录：`组合讲义/combinatorics_master_index.pdf`
- 早期综合资料：`组合讲义/combinatorics_training_handout.pdf`、`组合讲义/combinatorics_advanced_problem_set.pdf`、`组合讲义/combinatorics_weekly_test_A.pdf`、`组合讲义/combinatorics_weekly_test_B.pdf`
- 错位排列：`组合讲义/derangements_topic_index.pdf`、`组合讲义/derangements_handout.pdf`、`组合讲义/derangements_advanced_problem_set.pdf`、`组合讲义/derangements_weekly_test_A.pdf`、`组合讲义/derangements_weekly_test_B.pdf`
- 容斥原理：`组合讲义/inclusion_exclusion_topic_index.pdf`、`组合讲义/inclusion_exclusion_handout.pdf`、`组合讲义/inclusion_exclusion_advanced_problem_set.pdf`、`组合讲义/inclusion_exclusion_weekly_test_A.pdf`、`组合讲义/inclusion_exclusion_weekly_test_B.pdf`
- 递推计数：`组合讲义/recursive_counting_topic_index.pdf`、`组合讲义/recursive_counting_handout.pdf`、`组合讲义/recursive_counting_advanced_problem_set.pdf`、`组合讲义/recursive_counting_weekly_test_A.pdf`、`组合讲义/recursive_counting_weekly_test_B.pdf`
- 图论计数：`组合讲义/graph_counting_topic_index.pdf`、`组合讲义/graph_counting_handout.pdf`、`组合讲义/graph_counting_advanced_problem_set.pdf`、`组合讲义/graph_counting_weekly_test_A.pdf`、`组合讲义/graph_counting_weekly_test_B.pdf`
- 数论方法中的组合构造：`组合讲义/number_theory_constructions_topic_index.pdf`、`组合讲义/number_theory_constructions_handout.pdf`、`组合讲义/number_theory_constructions_advanced_problem_set.pdf`、`组合讲义/number_theory_constructions_weekly_test_A.pdf`、`组合讲义/number_theory_constructions_weekly_test_B.pdf`
- 抽屉原理与极值思想：`组合讲义/pigeonhole_extremal_topic_index.pdf`、`组合讲义/pigeonhole_extremal_handout.pdf`、`组合讲义/pigeonhole_extremal_advanced_problem_set.pdf`、`组合讲义/pigeonhole_extremal_weekly_test_A.pdf`、`组合讲义/pigeonhole_extremal_weekly_test_B.pdf`
- 染色方法与棋盘问题：`组合讲义/coloring_chessboard_topic_index.pdf`、`组合讲义/coloring_chessboard_handout.pdf`

## 已完成的核心专题

当前已经完成或基本完成的专题包括：

1. 错位排列
2. 容斥原理
3. 递推计数
4. 图论计数
5. 数论方法中的组合构造
6. 抽屉原理与极值思想
7. 染色方法与棋盘问题（已完成讲义）

## 推荐打印顺序

如果希望把资料按教学顺序打印，可以优先参考下面的顺序：

1. 总课程目录：`组合讲义/combinatorics_course_catalog.tex`
2. 错位排列专题目录页 + 讲义 + 题单 + 周测
3. 容斥原理专题目录页 + 讲义 + 题单 + 周测
4. 递推计数专题目录页 + 讲义 + 题单 + 周测
5. 图论计数专题目录页 + 讲义 + 题单 + 周测
6. 数论方法中的组合构造专题目录页 + 讲义 + 题单 + 周测
7. 抽屉原理与极值思想讲义 + 题单 + 周测
8. 染色方法与棋盘问题讲义

如果只是单独备课，也可以按“目录页 -> 讲义 -> 题单 -> 周测 A -> 周测 B”的顺序使用某一个专题。

## 建议学习顺序

按照目前这套资料，更自然的一条学习路线是：

1. 先用错位排列建立“位置受限计数”的模型感
2. 再学容斥原理，系统处理重叠条件
3. 再学递推计数，训练状态设计和递推关系
4. 再学图论计数，把关系翻译成图结构
5. 再学数论方法中的组合构造，把奇偶性、余数分类和不变量加入工具箱
6. 再过渡到抽屉原理与极值思想，强化存在性证明和最值分析
7. 最后进入染色方法与棋盘问题，把分类、不变量与覆盖问题结合起来

## 适合的使用方式

- 先讲义，后题单，再周测
- 做完一套专题以后，建议隔两三天回做错题
- 如果某一专题错题较多，先回到讲义和题单，不急着进入下一个专题
- 带练时尽量先让孩子口头说出“这题像哪个专题、准备用什么方法”
