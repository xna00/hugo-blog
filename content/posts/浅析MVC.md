---
title: "浅析MVC.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# 浅析MVC

### M V C

- **模型（Model）** 用于封装与应用程序的业务逻辑相关的数据以及对数据的处理方法。“ Model ”有对数据直接访问的权力，例如对数据库的访问。“Model”不依赖“View”和“Controller”，也就是说， Model 不关心它会被如何显示或是如何被操作。但是 Model 中数据的变化一般会通过一种刷新机制被公布。为了实现这种机制，那些用于监视此 Model 的 View 必须事先在此 Model 上注册，从而，View 可以了解在数据 Model 上发生的改变。
- **视图（View）**能够实现数据有目的的显示（理论上，这不是必需的）。在 View 中一般没有程序上的逻辑。为了实现 View 上的刷新功能，View 需要访问它监视的数据模型（Model），因此应该事先在被它监视的数据那里注册。
- **控制器（Controller）**起到不同层面间的组织作用，用于控制应用程序的流程。它处理事件并作出响应。“事件”包括用户的行为和数据 Model 上的改变。

一个通过 JavaScript所实现的基于 MVC 模型

~~~javascript
/** 模擬 Model, View, Controller */
var M = {}, V = {}, C = {};

/** Model 負責存放資料 */
M.data = "hello world";

/** View 負責將資料輸出到螢幕上 */
V.render = (M) => { alert(M.data); }

/** Controller 作為一個 M 和 V 的橋樑 */
C.handleOnload = () => { V.render(M); }

/** 在網頁讀取的時候呼叫 Controller */
window.onload = C.handleOnload;
~~~

### EventBus

EventBus至少要有三个api，on(), off(), toggle().

* `obj1.on('event', fn)`,obj1监听事件event
* `obj1.off('event', fn)`,obj1取消监听event
* `obj2.toggle('event',  args)`,obj2触发事件event，并传递参数args

### 表驱动编程

表驱动法就是一种编程模式(scheme)——从表里面查找信息而不使用逻辑语句(if 和case)。

### 模块化

将代码分成多个模块，使得代码更易于维护，降低耦合度，代码之间的关系更清晰。