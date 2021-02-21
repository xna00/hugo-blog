---
title: "HTML入门笔记1.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# HTML入门笔记1
## HTML的发明人
  Tim Berners-Lee
## HTML起手
  写一个`!`，然后按`Tab`即可。如果是中文网页，将`lang`修改为`zh-CN`。`meta`标签里写元数据。`<meta charset="UTF-8">`表示字符集是`UTF-8`，`<meta http-equiv="X-UA-Compatible" content="ie=edge">`表示，如果是IE浏览器，用最新内核。
## 常用的章节标签
  `h1~h6`标题，`h1`最大。

  `section`章节

  `article`文章

  `p`段落

  `header`头部

  `footer`脚部

  `main`主要内容

  `aside`旁支内容

  `div`分块
## 全局属性
  全局属性是指所有元素都有的属性

  `class`类

  `contenteditable`内容可编辑

  `hidden`隐藏

  `id`不到万不得已，不要用id。在js中，用id可以直接调用到这个元素，如xxx.style.border = ''。但不能是全局属性。

  `style`样式。元素的style属性优先级高。

  `tabindex`设置数值，控制tab的顺序，0表示最后一个，-1表示访问不到

  `title`鼠标悬停显示
### 默认样式

​		可以覆盖默认样式

​		取消table中间的空白：

```css	
table {
      border-collapse: collapse;
      border-spacing: 0;
}
```

## 内容标签

1. ol + li

    有方向的列表

2. ul + li

    没有方向的列表

3. dl + dt + dd

   dl description list

   dt description term

   dd

4. pre
   
   保留空白用，可以包`<code>`

5. hr

   分割线

6. br

   换行

7. a anchor

8. em

   语气上的强调

9.  strong

    内容本身的强调

10. quote
    
    引用

11. blockquote
    
    比quote多了换行