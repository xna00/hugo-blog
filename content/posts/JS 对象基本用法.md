---
title: "JS 对象基本用法.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# JS 对象基本用法

对象的属性名是字符串，有时候可以省略引号。

### 声明对象

1. obj = {}
2. 使用Object构造

### 删除对象的属性

delete obj.xxx

### 查看对象的属性

* obj.xxx
* obj['xxx']
* obj[name] 要对name求值
* Object.keys(obj)
* console.dir(obj)

### 修改或增加对象的属性

* 直接赋值
* 批量赋值 Object.assign()

如果要修的属性不存在，就增加属性。

### 'name' in obj和obj.hasOwnProperty('name') 

* 'name' in obj 包括原型里的属性
* obj.hasOwnProperty('name') 不包括原型里的属性