---
title: "build出错.md"
date: 2020-12-09T05:33:50+08:00
draft: false
---

# npm run build出错
## npm run dev正常，npm run build报错
1. 代码链接
   
   https://gitee.com/xna00/btfly-ui/tree/master/
    https://gitee.com/xna00/btfly-ui.git
2. 运行步骤
   1. `npm install`
   2. `npm run build`
   
   操作系统：ubuntu

   node版本：v14.15.1

   npm版本：6.14.8

   在mac上测试，结果一样
3. 错误复现步骤
   1. `git clone https://gitee.com/xna00/btfly-ui.git`
   2. `cd btfly-ui`
   3. `npm install`
   4. `npm run build`
   
   报错信息
   ```
   [vite] Build errored out.
    SyntaxError: Invalid end tag.
    at createCompilerError (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:16:19)
    at emitError (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:1178:29)
    at parseChildren (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:629:25)
    at parseElement (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:807:22)
    at parseChildren (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:639:28)
    at parseElement (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:807:22)
    at parseChildren (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:639:28)
    at Object.baseParse (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-core/dist/compiler-core.cjs.js:559:23)
    at parse (/home/ubuntu/btfly-ui/node_modules/@vue/compiler-dom/dist/compiler-dom.cjs.js:3047:25)
    at compileHtml (/home/ubuntu/btfly-ui/node_modules/vite/dist/node/build/buildPluginHtml.js:109:17) {
    code: 23,
    loc: {
    start: { column: 3, line: 19, offset: 436 },
    end: { column: 3, line: 19, offset: 436 },
    source: ''
        }
    } 
    ```
4. 解决方法

    在编译器文件中添加`console.log()`，报错前打印出出错代码，发现index.html中多了一个结束标签。