---
title: "HTML常用标签.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# HTML常用标签

### a标签

##### 属性

1. href

   * 网址
     * https://*
     * http://*
     * //:*   根据当前协议

   * 路径

     * 绝对路径
     * 相对路径

   * 伪协议

     * JavaScript:代码;
     * mailto:邮箱
     * tel:手机号

   * id

     href=#xxx   跳转到锚点

2. target

   * 内置名字

     * _blank  新标签页
     * _top  最顶层
     * _parent  当前iframe的父页面
     * _self  自己

   * window和ifrme都可以命名。target=xxx,如果有一个名叫xxx的窗口，就在这个窗口里打开；如果没有，就创建一个窗口，名叫xxx，并打开链接。

     iframe标签可以指定名字

3. download

   不打开页面,下载页面,但是一些浏览器不支持。

##### 作用

* 跳转到外部页面
* 跳转到内部锚点
* 跳转到邮箱或电话等

### img标签

##### 属性

* src图片的url
* alt如果图片加载失败，替换为文字
* height和width设置高和宽，同时设置可能会使图片变形。只设置一个，图片会按比例缩放。

##### 作用

​	发出get请求，展示一个图片

##### 事件

* onload加载成功
* onerror加载失败，加载失败时，可以替换为另一张图片

##### 响应式

​	max-width:100%

### table标签

##### 相关标签

* table
* thead 表格头部
* tbody
* tfooter
* tr table row
* td table data
* th 表头

##### 相关样式

* table-layout

  fixed等宽

  auto根据内容自动调整

* border-collapse

  collapse

* border-spacing

  0

##### 一个表格

```html
  <table>
    <thead>
      <tr>
        <th></th>
        <th>星期一</th>
        <th>星期二</th>
        <th>星期三</th>
        <th>星期四</th>
        <th>星期五</th>
        <th>星期六</th>
        <th>星期日</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>上午</th>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
      </tr>
      <tr>
        <th>下午</th>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <th>全天</th>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
        <td>忙</td>
      </tr>
    </tfoot>
  </table>
```



### form标签

##### 作用

​	发送get或post请求，然后刷新页面

##### 属性

* action指定路径
* autocomplete显示建议，on/off
* method方法
* target指定iframe的名字,与a标签的target作用一样

##### 事件

​	onsubmit

##### input标签

​	必须有一个类型为submit的标签

* 属性
  * 类型
    * button
    * checkbox
    * email
    * ...
  * 事件
    * onchange
    * onfocus
    * onblur
  * 验证器

### 感想

HTML标签太多了，记好常用的，多加练习。

