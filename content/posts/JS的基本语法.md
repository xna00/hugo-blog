---
title: "JS的基本语法.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# JS的基本语法

### 表达式和语句

* 表达式一般有值
* 语句可能有值，也可能没有
* 并不绝对

### 标识符

第一个字符，可以是Unicode字母或$或_或 中文。之后的字符，还可以是数字。

### if else

两种比较好的写法

* ```javascript
  if (表达式) {
  	语句
  } else if (表达式) {
      语句
  } else {
      语句
  }
  ```

* ```javascript
  function fn(){
      if ( ) {
      return
      }
      if ( ) {
      return
      }
      return
  }
  ```

### switch

```javascript
switch (fruit) {
    case "banana":
    // ...
    break;
    case "apple":
    // ...
    break;
    default:
    // ...
}

```

### 循环语句

```javascript
while(表达式) {
    
}
```

```javascript
for(语句1; 表达式2; 语句3){
}
```

* break跳出最近的一层循环
* continue跳过当前的这次循环

### label

```javascript
foo: {
console.log(1);
break foo;
console.log('本行不会输出');
}
console.log(2);
```

```javascript
{
foo: 1
}
```

这是个label？

### &&和||

* A && B
* fn && fn()
* A || B
* A = A || B