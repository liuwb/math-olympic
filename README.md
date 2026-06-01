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

## 快速入口

如果只是想在 GitHub 页面里快速点开常用资料，可以先用下面这张表。

<table>
  <colgroup>
    <col style="width: 20%;">
    <col style="width: 24%;">
    <col style="width: 56%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">分类</th>
      <th align="left">名称</th>
      <th align="left">直接链接</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>总目录</td>
      <td>组合总课程目录</td>
      <td><a href="组合讲义/combinatorics_course_catalog.pdf"><code>组合讲义/combinatorics_course_catalog.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>错位排列</td>
      <td><a href="组合讲义/derangements_topic_index.pdf"><code>组合讲义/derangements_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>容斥原理</td>
      <td><a href="组合讲义/inclusion_exclusion_topic_index.pdf"><code>组合讲义/inclusion_exclusion_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>递推计数</td>
      <td><a href="组合讲义/recursive_counting_topic_index.pdf"><code>组合讲义/recursive_counting_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>图论计数</td>
      <td><a href="组合讲义/graph_counting_topic_index.pdf"><code>组合讲义/graph_counting_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>数论方法中的组合构造</td>
      <td><a href="组合讲义/number_theory_constructions_topic_index.pdf"><code>组合讲义/number_theory_constructions_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>抽屉原理与极值思想</td>
      <td><a href="组合讲义/pigeonhole_extremal_topic_index.pdf"><code>组合讲义/pigeonhole_extremal_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>染色方法与棋盘问题</td>
      <td><a href="组合讲义/coloring_chessboard_topic_index.pdf"><code>组合讲义/coloring_chessboard_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>核心专题</td>
      <td>欧拉路径与哈密顿路径</td>
      <td><a href="组合讲义/euler_hamilton_topic_index.pdf"><code>组合讲义/euler_hamilton_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>代数专题</td>
      <td>函数图像平移与方程</td>
      <td><a href="代数讲义/function_translation_topic_index.pdf"><code>代数讲义/function_translation_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>代数专题</td>
      <td>函数图像对称与方程</td>
      <td><a href="代数讲义/function_symmetry_topic_index.pdf"><code>代数讲义/function_symmetry_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>代数专题</td>
      <td>函数图像的综合变换（平移 + 对称）</td>
      <td><a href="代数讲义/function_transformations_topic_index.pdf"><code>代数讲义/function_transformations_topic_index.pdf</code></a></td>
    </tr>
  </tbody>
</table>

## 文档目录

### `代数讲义`

<table>
  <colgroup>
    <col style="width: 14%;">
    <col style="width: 36%;">
    <col style="width: 50%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类型</th>
      <th align="left">适合什么时候用</th>
      <th align="left">文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>专题目录页</td>
      <td>想先看这一组资料该按什么顺序使用、每份资料各自解决什么问题时使用</td>
      <td><a href="代数讲义/function_translation_topic_index.tex"><code>代数讲义/function_translation_topic_index.tex</code></a> / <a href="代数讲义/function_translation_topic_index.pdf"><code>代数讲义/function_translation_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td>孩子刚开始系统学习函数平移，想先把“上下改外面，左右改里面”这件事讲清楚时使用</td>
      <td><a href="代数讲义/function_translation_handout.tex"><code>代数讲义/function_translation_handout.tex</code></a> / <a href="代数讲义/function_translation_handout.pdf"><code>代数讲义/function_translation_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td>孩子已经会基础平移公式，想继续练综合变形、反向判断和关键点检验时使用</td>
      <td><a href="代数讲义/function_translation_advanced_problem_set.tex"><code>代数讲义/function_translation_advanced_problem_set.tex</code></a> / <a href="代数讲义/function_translation_advanced_problem_set.pdf"><code>代数讲义/function_translation_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td>想检查基础平移、标准变式和反向判断是否掌握稳定时使用</td>
      <td><a href="代数讲义/function_translation_weekly_test_A.tex"><code>代数讲义/function_translation_weekly_test_A.tex</code></a> / <a href="代数讲义/function_translation_weekly_test_A.pdf"><code>代数讲义/function_translation_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td>想继续检查综合判断、点的平移和较强文字说明能力时使用</td>
      <td><a href="代数讲义/function_translation_weekly_test_B.tex"><code>代数讲义/function_translation_weekly_test_B.tex</code></a> / <a href="代数讲义/function_translation_weekly_test_B.pdf"><code>代数讲义/function_translation_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>专题目录页</td>
      <td>想先看这一组对称资料该按什么顺序使用、每份资料各自解决什么问题时使用</td>
      <td><a href="代数讲义/function_symmetry_topic_index.tex"><code>代数讲义/function_symmetry_topic_index.tex</code></a> / <a href="代数讲义/function_symmetry_topic_index.pdf"><code>代数讲义/function_symmetry_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td>孩子已经学过图像平移，准备继续理解“关于 x 轴、关于 y 轴、关于原点对称”时使用</td>
      <td><a href="代数讲义/function_symmetry_handout.tex"><code>代数讲义/function_symmetry_handout.tex</code></a> / <a href="代数讲义/function_symmetry_handout.pdf"><code>代数讲义/function_symmetry_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td>孩子已经会基础对称公式，想继续练奇偶性判断、反向判断和对称与平移衔接时使用</td>
      <td><a href="代数讲义/function_symmetry_advanced_problem_set.tex"><code>代数讲义/function_symmetry_advanced_problem_set.tex</code></a> / <a href="代数讲义/function_symmetry_advanced_problem_set.pdf"><code>代数讲义/function_symmetry_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td>想检查基础对称、标准变式和奇偶性判断是否掌握稳定时使用</td>
      <td><a href="代数讲义/function_symmetry_weekly_test_A.tex"><code>代数讲义/function_symmetry_weekly_test_A.tex</code></a> / <a href="代数讲义/function_symmetry_weekly_test_A.pdf"><code>代数讲义/function_symmetry_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td>想继续检查综合判断、点的对称变化和复合变换说明能力时使用</td>
      <td><a href="代数讲义/function_symmetry_weekly_test_B.tex"><code>代数讲义/function_symmetry_weekly_test_B.tex</code></a> / <a href="代数讲义/function_symmetry_weekly_test_B.pdf"><code>代数讲义/function_symmetry_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>专题目录页</td>
      <td>想先看这一组综合变换资料该按什么顺序使用、每份资料各自解决什么问题时使用</td>
      <td><a href="代数讲义/function_transformations_topic_index.tex"><code>代数讲义/function_transformations_topic_index.tex</code></a> / <a href="代数讲义/function_transformations_topic_index.pdf"><code>代数讲义/function_transformations_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td>孩子已经分别学过平移和对称，准备进入“先变换、再判断顺序是否影响结果”的综合题时使用</td>
      <td><a href="代数讲义/function_transformations_handout.tex"><code>代数讲义/function_transformations_handout.tex</code></a> / <a href="代数讲义/function_transformations_handout.pdf"><code>代数讲义/function_transformations_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td>孩子已经会做基础综合变换，想继续练顺序比较、反向判断和关键点跟踪时使用</td>
      <td><a href="代数讲义/function_transformations_advanced_problem_set.tex"><code>代数讲义/function_transformations_advanced_problem_set.tex</code></a> / <a href="代数讲义/function_transformations_advanced_problem_set.pdf"><code>代数讲义/function_transformations_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td>想检查标准综合变换、点的对应变化和基础反向判断是否掌握稳定时使用</td>
      <td><a href="代数讲义/function_transformations_weekly_test_A.tex"><code>代数讲义/function_transformations_weekly_test_A.tex</code></a> / <a href="代数讲义/function_transformations_weekly_test_A.pdf"><code>代数讲义/function_transformations_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td>想继续检查顺序是否影响结果、分层解释能力和较强综合判断时使用</td>
      <td><a href="代数讲义/function_transformations_weekly_test_B.tex"><code>代数讲义/function_transformations_weekly_test_B.tex</code></a> / <a href="代数讲义/function_transformations_weekly_test_B.pdf"><code>代数讲义/function_transformations_weekly_test_B.pdf</code></a></td>
    </tr>
  </tbody>
</table>

### `数论讲义`

<table>
  <colgroup>
    <col style="width: 14%;">
    <col style="width: 36%;">
    <col style="width: 50%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类型</th>
      <th align="left">适合什么时候用</th>
      <th align="left">文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>总讲义</td>
      <td>想把初中竞赛常见数论内容系统讲一遍时使用</td>
      <td><a href="数论讲义/number_theory_complete_classroom_handout.tex"><code>数论讲义/number_theory_complete_classroom_handout.tex</code></a> / <a href="数论讲义/number_theory_complete_classroom_handout.pdf"><code>数论讲义/number_theory_complete_classroom_handout.pdf</code></a></td>
    </tr>
  </tbody>
</table>

### `组合讲义`

#### 总目录与早期资料

<table>
  <colgroup>
    <col style="width: 16%;">
    <col style="width: 34%;">
    <col style="width: 50%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类别</th>
      <th align="left">适合什么时候用</th>
      <th align="left">文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>总课程目录</td>
      <td>想按当前主线专题安排整体教学顺序时先看这个</td>
      <td><a href="组合讲义/combinatorics_course_catalog.tex"><code>组合讲义/combinatorics_course_catalog.tex</code></a> / <a href="组合讲义/combinatorics_course_catalog.pdf"><code>组合讲义/combinatorics_course_catalog.pdf</code></a></td>
    </tr>
    <tr>
      <td>旧版总目录</td>
      <td>想回看前三到五个专题的早期阶段组织方式时使用</td>
      <td><a href="组合讲义/combinatorics_master_index.tex"><code>组合讲义/combinatorics_master_index.tex</code></a> / <a href="组合讲义/combinatorics_master_index.pdf"><code>组合讲义/combinatorics_master_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>早期组合课堂讲义</td>
      <td>想看最早整理的一版综合组合入门讲义时使用</td>
      <td><a href="组合讲义/combinatorics_training_handout.tex"><code>组合讲义/combinatorics_training_handout.tex</code></a> / <a href="组合讲义/combinatorics_training_handout.pdf"><code>组合讲义/combinatorics_training_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>早期提高题单</td>
      <td>想回看通用组合提高题单时使用</td>
      <td><a href="组合讲义/combinatorics_advanced_problem_set.tex"><code>组合讲义/combinatorics_advanced_problem_set.tex</code></a> / <a href="组合讲义/combinatorics_advanced_problem_set.pdf"><code>组合讲义/combinatorics_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>早期周测 A/B</td>
      <td>想回看最早阶段的综合检测卷时使用</td>
      <td><a href="组合讲义/combinatorics_weekly_test_A.tex"><code>组合讲义/combinatorics_weekly_test_A.tex</code></a> / <a href="组合讲义/combinatorics_weekly_test_A.pdf"><code>组合讲义/combinatorics_weekly_test_A.pdf</code></a><br><a href="组合讲义/combinatorics_weekly_test_B.tex"><code>组合讲义/combinatorics_weekly_test_B.tex</code></a> / <a href="组合讲义/combinatorics_weekly_test_B.pdf"><code>组合讲义/combinatorics_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>早期讲义</td>
      <td>想保留最早的材料样本时参考</td>
      <td><a href="组合讲义/balls_and_boxes_handout.pdf"><code>组合讲义/balls_and_boxes_handout.pdf</code></a></td>
    </tr>
  </tbody>
</table>

#### 核心专题目录

##### 目录页与讲义

<table>
  <colgroup>
    <col style="width: 14%;">
    <col style="width: 28%;">
    <col style="width: 29%;">
    <col style="width: 29%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">专题</th>
      <th align="left">适合什么时候用</th>
      <th align="left">目录页</th>
      <th align="left">讲义</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>错位排列</td>
      <td>适合孩子已经会基础排列组合，准备进入“位置受限计数”时使用</td>
      <td><a href="组合讲义/derangements_topic_index.tex"><code>组合讲义/derangements_topic_index.tex</code></a> / <a href="组合讲义/derangements_topic_index.pdf"><code>组合讲义/derangements_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/derangements_handout.tex"><code>组合讲义/derangements_handout.tex</code></a> / <a href="组合讲义/derangements_handout.pdf"><code>组合讲义/derangements_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>容斥原理</td>
      <td>适合孩子已经接触“至少一个条件、坏事件并集、重复计数”时使用</td>
      <td><a href="组合讲义/inclusion_exclusion_topic_index.tex"><code>组合讲义/inclusion_exclusion_topic_index.tex</code></a> / <a href="组合讲义/inclusion_exclusion_topic_index.pdf"><code>组合讲义/inclusion_exclusion_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/inclusion_exclusion_handout.tex"><code>组合讲义/inclusion_exclusion_handout.tex</code></a> / <a href="组合讲义/inclusion_exclusion_handout.pdf"><code>组合讲义/inclusion_exclusion_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>递推计数</td>
      <td>适合孩子开始能接受“拆成小问题、设计状态、写递推”时使用</td>
      <td><a href="组合讲义/recursive_counting_topic_index.tex"><code>组合讲义/recursive_counting_topic_index.tex</code></a> / <a href="组合讲义/recursive_counting_topic_index.pdf"><code>组合讲义/recursive_counting_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/recursive_counting_handout.tex"><code>组合讲义/recursive_counting_handout.tex</code></a> / <a href="组合讲义/recursive_counting_handout.pdf"><code>组合讲义/recursive_counting_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>图论计数</td>
      <td>适合孩子已经会基础计数，准备把“关系”翻译成图时使用</td>
      <td><a href="组合讲义/graph_counting_topic_index.tex"><code>组合讲义/graph_counting_topic_index.tex</code></a> / <a href="组合讲义/graph_counting_topic_index.pdf"><code>组合讲义/graph_counting_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/graph_counting_handout.tex"><code>组合讲义/graph_counting_handout.tex</code></a> / <a href="组合讲义/graph_counting_handout.pdf"><code>组合讲义/graph_counting_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>数论方法中的组合构造</td>
      <td>适合孩子已经会初中数论基础，准备把奇偶性、余数分类和不变量用于组合题时使用</td>
      <td><a href="组合讲义/number_theory_constructions_topic_index.tex"><code>组合讲义/number_theory_constructions_topic_index.tex</code></a> / <a href="组合讲义/number_theory_constructions_topic_index.pdf"><code>组合讲义/number_theory_constructions_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/number_theory_constructions_handout.tex"><code>组合讲义/number_theory_constructions_handout.tex</code></a> / <a href="组合讲义/number_theory_constructions_handout.pdf"><code>组合讲义/number_theory_constructions_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>抽屉原理与极值思想</td>
      <td>适合孩子开始接触“最少保证、存在性证明、最大安全数”时使用</td>
      <td><a href="组合讲义/pigeonhole_extremal_topic_index.tex"><code>组合讲义/pigeonhole_extremal_topic_index.tex</code></a> / <a href="组合讲义/pigeonhole_extremal_topic_index.pdf"><code>组合讲义/pigeonhole_extremal_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/pigeonhole_extremal_handout.tex"><code>组合讲义/pigeonhole_extremal_handout.tex</code></a> / <a href="组合讲义/pigeonhole_extremal_handout.pdf"><code>组合讲义/pigeonhole_extremal_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>染色方法与棋盘问题</td>
      <td>适合孩子已经学过抽屉、数论分类和不变量，准备进入棋盘覆盖与不可能性证明时使用</td>
      <td><a href="组合讲义/coloring_chessboard_topic_index.tex"><code>组合讲义/coloring_chessboard_topic_index.tex</code></a> / <a href="组合讲义/coloring_chessboard_topic_index.pdf"><code>组合讲义/coloring_chessboard_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/coloring_chessboard_handout.tex"><code>组合讲义/coloring_chessboard_handout.tex</code></a> / <a href="组合讲义/coloring_chessboard_handout.pdf"><code>组合讲义/coloring_chessboard_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>欧拉路径与哈密顿路径</td>
      <td>适合孩子已经学过基础图论与染色方法，准备系统理解“每条边一次”和“每个点一次”的区别时使用</td>
      <td><a href="组合讲义/euler_hamilton_topic_index.tex"><code>组合讲义/euler_hamilton_topic_index.tex</code></a> / <a href="组合讲义/euler_hamilton_topic_index.pdf"><code>组合讲义/euler_hamilton_topic_index.pdf</code></a></td>
      <td><a href="组合讲义/euler_hamilton_handout.tex"><code>组合讲义/euler_hamilton_handout.tex</code></a> / <a href="组合讲义/euler_hamilton_handout.pdf"><code>组合讲义/euler_hamilton_handout.pdf</code></a></td>
    </tr>
  </tbody>
</table>

##### 题单与周测

<table>
  <colgroup>
    <col style="width: 16%;">
    <col style="width: 28%;">
    <col style="width: 24%;">
    <col style="width: 32%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">专题</th>
      <th align="left">适合什么时候用</th>
      <th align="left">题单</th>
      <th align="left">周测</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>错位排列</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/derangements_advanced_problem_set.tex"><code>组合讲义/derangements_advanced_problem_set.tex</code></a> / <a href="组合讲义/derangements_advanced_problem_set.pdf"><code>组合讲义/derangements_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/derangements_weekly_test_A.tex"><code>组合讲义/derangements_weekly_test_A.tex</code></a> / <a href="组合讲义/derangements_weekly_test_A.pdf"><code>组合讲义/derangements_weekly_test_A.pdf</code></a><br><a href="组合讲义/derangements_weekly_test_B.tex"><code>组合讲义/derangements_weekly_test_B.tex</code></a> / <a href="组合讲义/derangements_weekly_test_B.pdf"><code>组合讲义/derangements_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>容斥原理</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/inclusion_exclusion_advanced_problem_set.tex"><code>组合讲义/inclusion_exclusion_advanced_problem_set.tex</code></a> / <a href="组合讲义/inclusion_exclusion_advanced_problem_set.pdf"><code>组合讲义/inclusion_exclusion_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/inclusion_exclusion_weekly_test_A.tex"><code>组合讲义/inclusion_exclusion_weekly_test_A.tex</code></a> / <a href="组合讲义/inclusion_exclusion_weekly_test_A.pdf"><code>组合讲义/inclusion_exclusion_weekly_test_A.pdf</code></a><br><a href="组合讲义/inclusion_exclusion_weekly_test_B.tex"><code>组合讲义/inclusion_exclusion_weekly_test_B.tex</code></a> / <a href="组合讲义/inclusion_exclusion_weekly_test_B.pdf"><code>组合讲义/inclusion_exclusion_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>递推计数</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/recursive_counting_advanced_problem_set.tex"><code>组合讲义/recursive_counting_advanced_problem_set.tex</code></a> / <a href="组合讲义/recursive_counting_advanced_problem_set.pdf"><code>组合讲义/recursive_counting_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/recursive_counting_weekly_test_A.tex"><code>组合讲义/recursive_counting_weekly_test_A.tex</code></a> / <a href="组合讲义/recursive_counting_weekly_test_A.pdf"><code>组合讲义/recursive_counting_weekly_test_A.pdf</code></a><br><a href="组合讲义/recursive_counting_weekly_test_B.tex"><code>组合讲义/recursive_counting_weekly_test_B.tex</code></a> / <a href="组合讲义/recursive_counting_weekly_test_B.pdf"><code>组合讲义/recursive_counting_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>图论计数</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/graph_counting_advanced_problem_set.tex"><code>组合讲义/graph_counting_advanced_problem_set.tex</code></a> / <a href="组合讲义/graph_counting_advanced_problem_set.pdf"><code>组合讲义/graph_counting_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/graph_counting_weekly_test_A.tex"><code>组合讲义/graph_counting_weekly_test_A.tex</code></a> / <a href="组合讲义/graph_counting_weekly_test_A.pdf"><code>组合讲义/graph_counting_weekly_test_A.pdf</code></a><br><a href="组合讲义/graph_counting_weekly_test_B.tex"><code>组合讲义/graph_counting_weekly_test_B.tex</code></a> / <a href="组合讲义/graph_counting_weekly_test_B.pdf"><code>组合讲义/graph_counting_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>数论方法中的组合构造</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/number_theory_constructions_advanced_problem_set.tex"><code>组合讲义/number_theory_constructions_advanced_problem_set.tex</code></a> / <a href="组合讲义/number_theory_constructions_advanced_problem_set.pdf"><code>组合讲义/number_theory_constructions_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/number_theory_constructions_weekly_test_A.tex"><code>组合讲义/number_theory_constructions_weekly_test_A.tex</code></a> / <a href="组合讲义/number_theory_constructions_weekly_test_A.pdf"><code>组合讲义/number_theory_constructions_weekly_test_A.pdf</code></a><br><a href="组合讲义/number_theory_constructions_weekly_test_B.tex"><code>组合讲义/number_theory_constructions_weekly_test_B.tex</code></a> / <a href="组合讲义/number_theory_constructions_weekly_test_B.pdf"><code>组合讲义/number_theory_constructions_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>抽屉原理与极值思想</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/pigeonhole_extremal_advanced_problem_set.tex"><code>组合讲义/pigeonhole_extremal_advanced_problem_set.tex</code></a> / <a href="组合讲义/pigeonhole_extremal_advanced_problem_set.pdf"><code>组合讲义/pigeonhole_extremal_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/pigeonhole_extremal_weekly_test_A.tex"><code>组合讲义/pigeonhole_extremal_weekly_test_A.tex</code></a> / <a href="组合讲义/pigeonhole_extremal_weekly_test_A.pdf"><code>组合讲义/pigeonhole_extremal_weekly_test_A.pdf</code></a><br><a href="组合讲义/pigeonhole_extremal_weekly_test_B.tex"><code>组合讲义/pigeonhole_extremal_weekly_test_B.tex</code></a> / <a href="组合讲义/pigeonhole_extremal_weekly_test_B.pdf"><code>组合讲义/pigeonhole_extremal_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>染色方法与棋盘问题</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/coloring_chessboard_advanced_problem_set.tex"><code>组合讲义/coloring_chessboard_advanced_problem_set.tex</code></a> / <a href="组合讲义/coloring_chessboard_advanced_problem_set.pdf"><code>组合讲义/coloring_chessboard_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/coloring_chessboard_weekly_test_A.tex"><code>组合讲义/coloring_chessboard_weekly_test_A.tex</code></a> / <a href="组合讲义/coloring_chessboard_weekly_test_A.pdf"><code>组合讲义/coloring_chessboard_weekly_test_A.pdf</code></a><br><a href="组合讲义/coloring_chessboard_weekly_test_B.tex"><code>组合讲义/coloring_chessboard_weekly_test_B.tex</code></a> / <a href="组合讲义/coloring_chessboard_weekly_test_B.pdf"><code>组合讲义/coloring_chessboard_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>欧拉路径与哈密顿路径</td>
      <td>用于讲义之后的巩固、变式训练和阶段检测</td>
      <td><a href="组合讲义/euler_hamilton_advanced_problem_set.tex"><code>组合讲义/euler_hamilton_advanced_problem_set.tex</code></a> / <a href="组合讲义/euler_hamilton_advanced_problem_set.pdf"><code>组合讲义/euler_hamilton_advanced_problem_set.pdf</code></a></td>
      <td><a href="组合讲义/euler_hamilton_weekly_test_A.tex"><code>组合讲义/euler_hamilton_weekly_test_A.tex</code></a> / <a href="组合讲义/euler_hamilton_weekly_test_A.pdf"><code>组合讲义/euler_hamilton_weekly_test_A.pdf</code></a><br><a href="组合讲义/euler_hamilton_weekly_test_B.tex"><code>组合讲义/euler_hamilton_weekly_test_B.tex</code></a> / <a href="组合讲义/euler_hamilton_weekly_test_B.pdf"><code>组合讲义/euler_hamilton_weekly_test_B.pdf</code></a></td>
    </tr>
  </tbody>
</table>

## 打印版 PDF 目录

如果只是准备打印，不需要看 `.tex` 源文件，可以直接按下面的 PDF 目录使用。

### `代数讲义`

<table>
  <colgroup>
    <col style="width: 24%;">
    <col style="width: 76%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类别</th>
      <th align="left">PDF 文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>专题目录页</td>
      <td><a href="代数讲义/function_translation_topic_index.pdf"><code>代数讲义/function_translation_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td><a href="代数讲义/function_translation_handout.pdf"><code>代数讲义/function_translation_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td><a href="代数讲义/function_translation_advanced_problem_set.pdf"><code>代数讲义/function_translation_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td><a href="代数讲义/function_translation_weekly_test_A.pdf"><code>代数讲义/function_translation_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td><a href="代数讲义/function_translation_weekly_test_B.pdf"><code>代数讲义/function_translation_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>专题目录页</td>
      <td><a href="代数讲义/function_symmetry_topic_index.pdf"><code>代数讲义/function_symmetry_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td><a href="代数讲义/function_symmetry_handout.pdf"><code>代数讲义/function_symmetry_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td><a href="代数讲义/function_symmetry_advanced_problem_set.pdf"><code>代数讲义/function_symmetry_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td><a href="代数讲义/function_symmetry_weekly_test_A.pdf"><code>代数讲义/function_symmetry_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td><a href="代数讲义/function_symmetry_weekly_test_B.pdf"><code>代数讲义/function_symmetry_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>专题目录页</td>
      <td><a href="代数讲义/function_transformations_topic_index.pdf"><code>代数讲义/function_transformations_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>课堂讲义</td>
      <td><a href="代数讲义/function_transformations_handout.pdf"><code>代数讲义/function_transformations_handout.pdf</code></a></td>
    </tr>
    <tr>
      <td>提高题单</td>
      <td><a href="代数讲义/function_transformations_advanced_problem_set.pdf"><code>代数讲义/function_transformations_advanced_problem_set.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 A 卷</td>
      <td><a href="代数讲义/function_transformations_weekly_test_A.pdf"><code>代数讲义/function_transformations_weekly_test_A.pdf</code></a></td>
    </tr>
    <tr>
      <td>周测 B 卷</td>
      <td><a href="代数讲义/function_transformations_weekly_test_B.pdf"><code>代数讲义/function_transformations_weekly_test_B.pdf</code></a></td>
    </tr>
  </tbody>
</table>

### `数论讲义`

<table>
  <colgroup>
    <col style="width: 24%;">
    <col style="width: 76%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类别</th>
      <th align="left">PDF 文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>总讲义</td>
      <td><a href="数论讲义/number_theory_complete_classroom_handout.pdf"><code>数论讲义/number_theory_complete_classroom_handout.pdf</code></a></td>
    </tr>
  </tbody>
</table>

### `组合讲义`

<table>
  <colgroup>
    <col style="width: 20%;">
    <col style="width: 80%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">类别 / 专题</th>
      <th align="left">PDF 文件</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>总课程目录</td>
      <td><a href="组合讲义/combinatorics_course_catalog.pdf"><code>组合讲义/combinatorics_course_catalog.pdf</code></a></td>
    </tr>
    <tr>
      <td>旧版总目录</td>
      <td><a href="组合讲义/combinatorics_master_index.pdf"><code>组合讲义/combinatorics_master_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>早期综合资料</td>
      <td><a href="组合讲义/combinatorics_training_handout.pdf"><code>组合讲义/combinatorics_training_handout.pdf</code></a>、<a href="组合讲义/combinatorics_advanced_problem_set.pdf"><code>组合讲义/combinatorics_advanced_problem_set.pdf</code></a>、<a href="组合讲义/combinatorics_weekly_test_A.pdf"><code>组合讲义/combinatorics_weekly_test_A.pdf</code></a>、<a href="组合讲义/combinatorics_weekly_test_B.pdf"><code>组合讲义/combinatorics_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>错位排列</td>
      <td><a href="组合讲义/derangements_topic_index.pdf"><code>组合讲义/derangements_topic_index.pdf</code></a>、<a href="组合讲义/derangements_handout.pdf"><code>组合讲义/derangements_handout.pdf</code></a>、<a href="组合讲义/derangements_advanced_problem_set.pdf"><code>组合讲义/derangements_advanced_problem_set.pdf</code></a>、<a href="组合讲义/derangements_weekly_test_A.pdf"><code>组合讲义/derangements_weekly_test_A.pdf</code></a>、<a href="组合讲义/derangements_weekly_test_B.pdf"><code>组合讲义/derangements_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>容斥原理</td>
      <td><a href="组合讲义/inclusion_exclusion_topic_index.pdf"><code>组合讲义/inclusion_exclusion_topic_index.pdf</code></a>、<a href="组合讲义/inclusion_exclusion_handout.pdf"><code>组合讲义/inclusion_exclusion_handout.pdf</code></a>、<a href="组合讲义/inclusion_exclusion_advanced_problem_set.pdf"><code>组合讲义/inclusion_exclusion_advanced_problem_set.pdf</code></a>、<a href="组合讲义/inclusion_exclusion_weekly_test_A.pdf"><code>组合讲义/inclusion_exclusion_weekly_test_A.pdf</code></a>、<a href="组合讲义/inclusion_exclusion_weekly_test_B.pdf"><code>组合讲义/inclusion_exclusion_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>递推计数</td>
      <td><a href="组合讲义/recursive_counting_topic_index.pdf"><code>组合讲义/recursive_counting_topic_index.pdf</code></a>、<a href="组合讲义/recursive_counting_handout.pdf"><code>组合讲义/recursive_counting_handout.pdf</code></a>、<a href="组合讲义/recursive_counting_advanced_problem_set.pdf"><code>组合讲义/recursive_counting_advanced_problem_set.pdf</code></a>、<a href="组合讲义/recursive_counting_weekly_test_A.pdf"><code>组合讲义/recursive_counting_weekly_test_A.pdf</code></a>、<a href="组合讲义/recursive_counting_weekly_test_B.pdf"><code>组合讲义/recursive_counting_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>图论计数</td>
      <td><a href="组合讲义/graph_counting_topic_index.pdf"><code>组合讲义/graph_counting_topic_index.pdf</code></a>、<a href="组合讲义/graph_counting_handout.pdf"><code>组合讲义/graph_counting_handout.pdf</code></a>、<a href="组合讲义/graph_counting_advanced_problem_set.pdf"><code>组合讲义/graph_counting_advanced_problem_set.pdf</code></a>、<a href="组合讲义/graph_counting_weekly_test_A.pdf"><code>组合讲义/graph_counting_weekly_test_A.pdf</code></a>、<a href="组合讲义/graph_counting_weekly_test_B.pdf"><code>组合讲义/graph_counting_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>数论方法中的组合构造</td>
      <td><a href="组合讲义/number_theory_constructions_topic_index.pdf"><code>组合讲义/number_theory_constructions_topic_index.pdf</code></a>、<a href="组合讲义/number_theory_constructions_handout.pdf"><code>组合讲义/number_theory_constructions_handout.pdf</code></a>、<a href="组合讲义/number_theory_constructions_advanced_problem_set.pdf"><code>组合讲义/number_theory_constructions_advanced_problem_set.pdf</code></a>、<a href="组合讲义/number_theory_constructions_weekly_test_A.pdf"><code>组合讲义/number_theory_constructions_weekly_test_A.pdf</code></a>、<a href="组合讲义/number_theory_constructions_weekly_test_B.pdf"><code>组合讲义/number_theory_constructions_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>抽屉原理与极值思想</td>
      <td><a href="组合讲义/pigeonhole_extremal_topic_index.pdf"><code>组合讲义/pigeonhole_extremal_topic_index.pdf</code></a>、<a href="组合讲义/pigeonhole_extremal_handout.pdf"><code>组合讲义/pigeonhole_extremal_handout.pdf</code></a>、<a href="组合讲义/pigeonhole_extremal_advanced_problem_set.pdf"><code>组合讲义/pigeonhole_extremal_advanced_problem_set.pdf</code></a>、<a href="组合讲义/pigeonhole_extremal_weekly_test_A.pdf"><code>组合讲义/pigeonhole_extremal_weekly_test_A.pdf</code></a>、<a href="组合讲义/pigeonhole_extremal_weekly_test_B.pdf"><code>组合讲义/pigeonhole_extremal_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>染色方法与棋盘问题</td>
      <td><a href="组合讲义/coloring_chessboard_topic_index.pdf"><code>组合讲义/coloring_chessboard_topic_index.pdf</code></a>、<a href="组合讲义/coloring_chessboard_handout.pdf"><code>组合讲义/coloring_chessboard_handout.pdf</code></a>、<a href="组合讲义/coloring_chessboard_advanced_problem_set.pdf"><code>组合讲义/coloring_chessboard_advanced_problem_set.pdf</code></a>、<a href="组合讲义/coloring_chessboard_weekly_test_A.pdf"><code>组合讲义/coloring_chessboard_weekly_test_A.pdf</code></a>、<a href="组合讲义/coloring_chessboard_weekly_test_B.pdf"><code>组合讲义/coloring_chessboard_weekly_test_B.pdf</code></a></td>
    </tr>
    <tr>
      <td>欧拉路径与哈密顿路径</td>
      <td><a href="组合讲义/euler_hamilton_topic_index.pdf"><code>组合讲义/euler_hamilton_topic_index.pdf</code></a>、<a href="组合讲义/euler_hamilton_handout.pdf"><code>组合讲义/euler_hamilton_handout.pdf</code></a>、<a href="组合讲义/euler_hamilton_advanced_problem_set.pdf"><code>组合讲义/euler_hamilton_advanced_problem_set.pdf</code></a>、<a href="组合讲义/euler_hamilton_weekly_test_A.pdf"><code>组合讲义/euler_hamilton_weekly_test_A.pdf</code></a>、<a href="组合讲义/euler_hamilton_weekly_test_B.pdf"><code>组合讲义/euler_hamilton_weekly_test_B.pdf</code></a></td>
    </tr>
  </tbody>
</table>

## 已完成的核心专题

<table>
  <colgroup>
    <col style="width: 10%;">
    <col style="width: 24%;">
    <col style="width: 66%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">序号</th>
      <th align="left">专题</th>
      <th align="left">可直接进入的资料</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>错位排列</td>
      <td><a href="组合讲义/derangements_topic_index.pdf"><code>组合讲义/derangements_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>容斥原理</td>
      <td><a href="组合讲义/inclusion_exclusion_topic_index.pdf"><code>组合讲义/inclusion_exclusion_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>递推计数</td>
      <td><a href="组合讲义/recursive_counting_topic_index.pdf"><code>组合讲义/recursive_counting_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>4</td>
      <td>图论计数</td>
      <td><a href="组合讲义/graph_counting_topic_index.pdf"><code>组合讲义/graph_counting_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>5</td>
      <td>数论方法中的组合构造</td>
      <td><a href="组合讲义/number_theory_constructions_topic_index.pdf"><code>组合讲义/number_theory_constructions_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>6</td>
      <td>抽屉原理与极值思想</td>
      <td><a href="组合讲义/pigeonhole_extremal_topic_index.pdf"><code>组合讲义/pigeonhole_extremal_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>7</td>
      <td>染色方法与棋盘问题</td>
      <td><a href="组合讲义/coloring_chessboard_topic_index.pdf"><code>组合讲义/coloring_chessboard_topic_index.pdf</code></a></td>
    </tr>
    <tr>
      <td>8</td>
      <td>欧拉路径与哈密顿路径</td>
      <td><a href="组合讲义/euler_hamilton_topic_index.pdf"><code>组合讲义/euler_hamilton_topic_index.pdf</code></a></td>
    </tr>
  </tbody>
</table>

## 推荐打印顺序

如果希望把资料按教学顺序打印，可以优先参考下面的顺序：

<table>
  <colgroup>
    <col style="width: 10%;">
    <col style="width: 26%;">
    <col style="width: 64%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">顺序</th>
      <th align="left">资料 / 专题</th>
      <th align="left">建议打印内容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><a href="组合讲义/combinatorics_course_catalog.pdf">总课程目录</a></td>
      <td><a href="组合讲义/combinatorics_course_catalog.tex"><code>组合讲义/combinatorics_course_catalog.tex</code></a></td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="组合讲义/derangements_topic_index.pdf">错位排列</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="组合讲义/inclusion_exclusion_topic_index.pdf">容斥原理</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="组合讲义/recursive_counting_topic_index.pdf">递推计数</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="组合讲义/graph_counting_topic_index.pdf">图论计数</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="组合讲义/number_theory_constructions_topic_index.pdf">数论方法中的组合构造</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="组合讲义/pigeonhole_extremal_topic_index.pdf">抽屉原理与极值思想</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="组合讲义/coloring_chessboard_topic_index.pdf">染色方法与棋盘问题</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="组合讲义/euler_hamilton_topic_index.pdf">欧拉路径与哈密顿路径</a></td>
      <td>专题目录页 + 讲义 + 题单 + 周测</td>
    </tr>
  </tbody>
</table>

如果只是单独备课，也可以按“目录页 -> 讲义 -> 题单 -> 周测 A -> 周测 B”的顺序使用某一个专题。

## 建议学习顺序

按照目前这套资料，更自然的一条学习路线是：

<table>
  <colgroup>
    <col style="width: 10%;">
    <col style="width: 20%;">
    <col style="width: 70%;">
  </colgroup>
  <thead>
    <tr>
      <th align="left">阶段</th>
      <th align="left">专题</th>
      <th align="left">学习目标</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>错位排列</td>
      <td>先建立“位置受限计数”的模型感</td>
    </tr>
    <tr>
      <td>2</td>
      <td>容斥原理</td>
      <td>系统处理重叠条件与坏事件并集</td>
    </tr>
    <tr>
      <td>3</td>
      <td>递推计数</td>
      <td>训练状态设计和递推关系</td>
    </tr>
    <tr>
      <td>4</td>
      <td>图论计数</td>
      <td>把关系翻译成图结构，用点、边、度数与路径来计数</td>
    </tr>
    <tr>
      <td>5</td>
      <td>数论方法中的组合构造</td>
      <td>把奇偶性、余数分类和不变量加入工具箱</td>
    </tr>
    <tr>
      <td>6</td>
      <td>抽屉原理与极值思想</td>
      <td>强化存在性证明、最少保证和最值分析</td>
    </tr>
    <tr>
      <td>7</td>
      <td>染色方法与棋盘问题</td>
      <td>把分类、不变量与覆盖问题结合起来</td>
    </tr>
    <tr>
      <td>8</td>
      <td>欧拉路径与哈密顿路径</td>
      <td>把图论、染色与路径结构真正打通</td>
    </tr>
  </tbody>
</table>

## 适合的使用方式

- 先讲义，后题单，再周测
- 做完一套专题以后，建议隔两三天回做错题
- 如果某一专题错题较多，先回到讲义和题单，不急着进入下一个专题
- 带练时尽量先让孩子口头说出“这题像哪个专题、准备用什么方法”
