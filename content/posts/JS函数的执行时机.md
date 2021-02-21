---
title: "JS函数的执行时机.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# JS函数的执行时机

### 一、6个6

```javascript
let i = 0
for(i = 0; i<6; i++){
  setTimeout(()=>{
    console.log(i)
  },0)
}
```

以上代码会打印出6个6，因为`console.log`会在for循环结束后执行，此时i的值是6

### 二、打印0、1、2、3、4、5

```javascript
for(let i = 0; i<6; i++){
  setTimeout(()=>{
    console.log(i)
  },0)
}
```

以上代码会打印出0、1、2、3、4、5。i是在for里面声明的，有块级作用域。每次循环都会创建一个新的i。

### 三、另一个打印0、1、2、3、4、5的方法

```javascript
let i = 0
for(i = 0; i<6; i++){
    !function() {
      let j = i;
      setTimeout(() => {
        console.log(j)
      },0)
    }()
}
```

