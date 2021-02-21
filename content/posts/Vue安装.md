---
title: "Vue安装.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# Vue安装

### 安装

[点击](https://cn.vuejs.org/v2/guide/installation.html)

### Vue的两个版本

Vue的编译器，用来将模板字符串编译成为 JavaScript 渲染函数的代码。

* 完整版，vue.js，同时包含编译器和运行时的版本。
* 只包含运行时版，vue.runtime.js，用来创建 Vue 实例、渲染并处理虚拟 DOM 等的代码。基本上就是除去编译器的其它一切。

### 运行时 + 编译器 vs. 只包含运行时

如果你需要在客户端编译模板 (比如传入一个字符串给 `template` 选项，或挂载到一个元素上并以其 DOM 内部的 HTML 作为模板)，就将需要加上编译器，即完整版：

```javascript
// 需要编译器
new Vue({
  template: '<div>{{ hi }}</div>'
})

// 不需要编译器
new Vue({
  render (h) {
    return h('div', this.hi)
  }
})
```

当使用 `vue-loader` 或 `vueify` 的时候，`*.vue` 文件内部的模板会在构建时预编译成 JavaScript。你在最终打好的包里实际上是不需要编译器的，所以只用运行时版本即可。

因为运行时版本相比完整版体积要小大约 30%，所以应该尽可能使用这个版本。如果仍然希望使用完整版，则需要在打包工具里配置一个别名：

#### webpack

```
module.exports = {
  // ...
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js' // 用 webpack 1 时需用 'vue/dist/vue.common.js'
    }
  }
}
```

### 用codesandbox创建Vue项目

[点击](https://codesandbox.io/)