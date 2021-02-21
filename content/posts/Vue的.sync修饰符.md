---
title: "Vue的.sync修饰符.md"
date: 2020-10-15T15:43:54+08:00
draft: false
---

# Vue的.sync修饰符
有些时候，需要对一个props“双向绑定”，但是真正的双向绑定会带来维护上的问题，因为子组件可以变更父组件，且在父组件和子组件都没有明显的变更来源。

这时候可以用事件实现，在子组件中触发事件

`this.$emit'update:title', newTitle)`

在父组建中监听事件

```
<text-document
  v-bind:title="doc.title"
  v-on:update:title="doc.title = $event"
></text-document>
```

为了方便起见，我们为这种模式提供一个缩写，即 .sync 修饰符：

`<text-document v-bind:title.sync="doc.title"></text-document>`

也就是说，.sync只是个语法糖