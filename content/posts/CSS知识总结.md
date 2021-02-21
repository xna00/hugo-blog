---
title: "CSS知识总结.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# CSS知识总结

### 简介

CSS，全称Cascading Style Sheets，层叠样式表。CSS2.1是使用最广泛的版本。

### 了解浏览器对CSS的支持

caniuse.com

### 调试CSS

* W3C验证器
* VScode/WebStorm提示
* 开发者工具警告
* Border调试法

### 查资料

* MDN
* CSS tricks
* 张鑫旭博客

### 练习素材



### 标准制定者

W3C。[CSS2.1标准](http://www.ayqy.net/doc/css2-1/cover.html)

### 基本概念

#### 文档流

* 流动方向

  inline，从左到右，到最右边换行

  block，从上到下，每个都另起一行

  inline-block， 从左到右

* 宽度

  inline宽度是内部inline元素宽度的总和，不能用width指定

  block可用width指定

  inline-block结合前两者，可用width指定

* 高度

  inline高度由line-height间接确定

  block高度由内部文档流元素决定，可用height指定

  inline-block也可以设置height

#### overflow

可以分为overflow-x和overflow-y

* visible直接显示溢出部分
* hidden直接隐藏
* scroll永远显示滚动条
* auto灵活显示滚动条

#### 脱离文档流

* float
* position：absolute | fixed

#### 两种盒模型

* content-box
* border-box

#### margin合并

##### 合并的情形

* 父子margin合并
* 兄弟margin合并

##### 如何阻止合并

* 父子合并用padding/border挡住
* 父子合并用overflow：hidden挡住
* 父子合并，display：flex
* 兄弟合并：inline-block

#### 基本单位

##### 长度单位

* px
* em相对于自身font-size的倍数
* 百分数
* 整数
* rem
* vw
* vh

##### 颜色

* 十六进制 #FF6600，简写为#F60
* rgb/rgba
* hsl

### 布局

#### 分类

* 固定布局
* 自适应布局
* 两种混合

#### 用什么CSS布局

1. 需要兼容IE9，用float，给父元素添加clearfix
2. 不需要兼容IE9
   * 如果只兼容最新浏览器，用gird
   * 否则，用flex
3. 必要时要用到负margin

#### float布局

* 子元素加float，left，width
* 父元素加 .clearfix
* 可以留一些空间，或最后一个不射width
* 无需响应式，因为手机不用IE
* IE6/7存在双倍margin bug
  1. 针对IE6/7把margin减半
  2. display：inline-block

#### flex布局

[flex青蛙游戏](https://flexboxfroggy.com/)

#### grid布局

[grid教程](https://css-tricks.com/snippets/css/complete-guide-grid/)

[Grid Garden](https://cssgridgarden.com/#zh-cn)

### 定位

布局是屏幕平面上的

定位是垂直与屏幕的

#### 一个div的分层

从下到上：

1. background
2. border
3. 块级子元素
4. 浮动元素
5. 内联子元素

#### position属性

position的值

* static，默认值，在文档流里
* relative相对定位，升起来，不脱离文档流
* absolute，定位基准是祖先里的非static
* fixed，定位基准是viewport(有诈)
* sticky

一些经验

* 写了absolute，一般要补一个relative
* 写了absolute或fixed，一定要补top和left
* sticky的兼容性较差

#### 层叠上下文

### CSS动画

#### CSS动画优化

[google](https://developers.google.com/web/fundamentals/performance/rendering/stick-to-compositor-only-properties-and-manage-layer-count)

* js优化

  使用requestAnimationFrame代替setTimeout

* CSS优化

  使用will-change或translate

#### transform

* 一般要配和transition，transition过度属性自动脑补中间帧
* 没有重新绘制，性能好
* inline元素不支持，需要先变成block

##### 四个常用功能

* translate
* scale
* rotate
* skew，用的比较少

transform多重效果

* 组合使用

  transform：  ；

  transform：none；取消所有

#### transition

作用是补充中间帧

##### 不是所有的属性都能过渡

* display：none->block，一般改成visibility：hidden->visible

#### animation

* 声明关键帧
* 添加动画
* animation：时长| 过渡方式| 延迟| 次数| 方向| 填充方式| 是否暂停| 动画名

#### @keyframes

* from to写法
* 百分数



### 浏览器的渲染原理

#### 步骤

1. 构建HTML树（DOM）
2. 构建CSS树（CSSOM）
3. 将两棵树合并成一颗渲染树（render tree）
4. layout布局（文档流，盒模型，计算大小和位置）
5. paint绘制（把边框颜色，文字颜色，阴影等画出来）
6. compose合成（根据层叠关系展示画面）

#### 如何更新

js->style->layout->paint->composite

1. div.remove()，全走

2. 改变背景颜色，跳过layout

3. tranform，跳过layout和paint

   全屏看效果，iframe里看会有问题

4. [更新方式汇总](https://csstriggers.com/)

