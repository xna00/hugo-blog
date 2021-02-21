---
title: "虚拟 DOM 和 DOM diff.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# 虚拟 DOM 和 DOM diff

### 虚拟 DOM 是什么

虚拟dom，与真实dom相对，是JS对象

### 虚拟DOM的优点

在某些情况下，dom操作的速度较快

* 将多次操作合并为一次，如添加1000个节点
* 借助DOM diff将多余的操作省去，如添加1000个节点，但只有10个是新增的

### 虚拟DOM的缺点

在大量DOM操作时，会造成卡顿，因为进行的额外计算太多了

### DOM diff是什么

DOM diff是虚拟DOM的对比算法

### DOM diff的优点

通过DOM diff，可以简化DOM操作

### DOM diff的问题

DOM diff的算法可能有Bug,[Vue key的作用](https://www.zhihu.com/question/61064119/answer/766607894)