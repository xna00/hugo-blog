---
title: "jQuery设计思想.md"
date: 2020-10-15T14:24:13+08:00
draft: false
---

# jQuery设计思想

### 一、选择网页元素

#### CSS选择器

```javascript
$(document) //选择整个文档对象

$('#myId') //选择ID为myId的网页元素

$('div.myClass') // 选择class为myClass的div元素

$('input[name=first]') // 选择name属性等于first的input元素
```

#### jQuery特有的表达式

```javascript
$('a:first') //选择网页中第一个a元素

$('tr:odd') //选择表格的奇数行

$('#myForm :input') // 选择表单中的input元素

$('div:visible') //选择可见的div元素

$('div:gt(2)') // 选择所有的div元素，除了前三个

$('div:animated') // 选择当前处于动画状态的div元素
```

### 二、改变结果集

```javascript
$('div').has('p'); // 选择包含p元素的div元素

$('div').not('.myClass'); //选择class不等于myClass的div元素

$('div').filter('.myClass'); //选择class等于myClass的div元素

$('div').first(); //选择第1个div元素

$('div').eq(5); //选择第6个div元素
$('div').next('p'); //选择div元素后面的第一个p元素

$('div').parent(); //选择div元素的父元素

$('div').closest('form'); //选择离div最近的那个form父元素

$('div').children(); //选择div的所有子元素

$('div').siblings(); //选择div的同级元素
```

### 三、链式操作

```javascript
$('div') //找到div元素
    .find('h3') //选择其中的h3元素
    .eq(2) //选择第3个h3元素
    .html('Hello'); //将它的内容改为Hello

$('div')
    .find('h3')
    .eq(2)
    .html('Hello')
    .end() //退回到选中所有的h3元素的那一步
    .eq(0) //选中第一个h3元素
    .html('World'); //将它的内容改为World
```

### 四、元素的操作：取值和赋值

```javascript
.html() 取出或设置html内容

    .text() 取出或设置text内容

    .attr() 取出或设置某个属性的值

    .width() 取出或设置某个元素的宽度

    .height() 取出或设置某个元素的高度

    .val() 取出某个表单元素的值
```

### 五、元素的操作：移动

```javascript
	.insertAfter()和.after()：在现存元素的外部，从后面插入元素

    .insertBefore()和.before()：在现存元素的外部，从前面插入元素

    .appendTo()和.append()：在现存元素的内部，从后面插入元素

    .prependTo()和.prepend()：在现存元素的内部，从前面插入元素
```

### 六、元素的操作：复制、删除和创建

复制元素使用.clone()

删除元素使用.remove()和.detach()。两者的区别在于，前者不保留被删除元素的事件，后者保留，有利于重新插入文档时使用。

清空元素内容（但是不删除该元素）使用[.empty()](http://api.jquery.com/empty/)。

创建新元素的方法非常简单，只要把新元素直接传入jQuery的构造函数就行了：

```javascript
$('<p>Hello</p>');

$('<li class="new">new list item</li>');

$('ul').append('<li>list item</li>');
```

### 七、工具方法

$.trim() 去除字符串两端的空格。

$.each() 遍历一个数组或对象。

$.inArray() 返回一个值在数组中的索引位置。如果该值不在数组中，则返回-1。

$.grep() 返回数组中符合某种标准的元素。

$.extend() 将多个对象，合并到第一个对象。

$.makeArray() 将对象转化为数组。

$.type() 判断对象的类别（函数对象、日期对象、数组对象、正则对象等等）。

$.isArray() 判断某个参数是否为数组。

$.isEmptyObject() 判断某个对象是否为空（不含有任何属性）。

$.isFunction() 判断某个参数是否为函数。

$.isPlainObject() 判断某个参数是否为用"{}"或"new Object"建立的对象。

$.support() 判断浏览器是否支持某个特性。

### 八、事件操作

```javascript
$('p').click(function(){

    alert('Hello');

});


	.blur() 表单元素失去焦点。

    .change() 表单元素的值发生变化

    .click() 鼠标单击

    .dblclick() 鼠标双击

    .focus() 表单元素获得焦点

    .focusin() 子元素获得焦点

    .focusout() 子元素失去焦点

    .hover() 同时为mouseenter和mouseleave事件指定处理函数

    .keydown() 按下键盘（长时间按键，只返回一个事件）

    .keypress() 按下键盘（长时间按键，将返回多个事件）

    .keyup() 松开键盘

    .load() 元素加载完毕

    .mousedown() 按下鼠标

    .mouseenter() 鼠标进入（进入子元素不触发）

    .mouseleave() 鼠标离开（离开子元素不触发）

    .mousemove() 鼠标在元素内部移动

    .mouseout() 鼠标离开（离开子元素也触发）

    .mouseover() 鼠标进入（进入子元素也触发）

    .mouseup() 松开鼠标

    .ready() DOM加载完成

    .resize() 浏览器窗口的大小发生改变

    .scroll() 滚动条的位置发生变化

    .select() 用户选中文本框中的内容

    .submit() 用户递交表单

    .toggle() 根据鼠标点击的次数，依次运行多个函数

    .unload() 用户离开页面
```

为多个事件绑定同一个函数：

```javascript
　　$('input').bind(

　　　　'click change', //同时绑定click和change事件

　　　　function() {

　　　　　　alert('Hello');

　　　　}

　　);
```

运行一次，这时可以使用.one()方法

```javascript
$("p").one("click", function() {

    alert("Hello"); //只运行一次，以后的点击不会运行

});
```



用来解除事件绑定。

`$('p').unbind('click');`

有两种方法，可以自动触发一个事件。

```javascript
$('a').click();

$('a').trigger('click');
```



### 九、特殊效果

​	　[.fadeIn()](http://api.jquery.com/fadeIn/) 淡入

　　[.fadeOut()](http://api.jquery.com/fadeOut/) 淡出

　　[.fadeTo()](http://api.jquery.com/fadeTo/) 调整透明度

　　[.hide()](http://api.jquery.com/hide/) 隐藏元素

　　[.show()](http://api.jquery.com/show/) 显示元素

　　[.slideDown()](http://api.jquery.com/slideDown/) 向下展开

　　[.slideUp()](http://api.jquery.com/slideUp/) 向上卷起

　　[.slideToggle()](http://api.jquery.com/slideToggle/) 依次展开或卷起某个元素

　　[.toggle()](http://api.jquery.com/toggle/) 依次展示或隐藏某个元素

除了[.show()](http://api.jquery.com/show/)和[.hide()](http://api.jquery.com/hide/)，所有其他特效的默认执行时间都是400ms（毫秒），但是可以改变这个设置。

　`$('h1').fadeIn(300); // 300毫秒内淡入`

　`$('h1').fadeOut('slow'); // 缓慢地淡出`

在特效结束后，可以指定执行某个函数。

`$('p').fadeOut(300, function() { $(this).remove(); });`

更复杂的特效，可以用[.animate()](http://api.jquery.com/animate/)自定义。

```javascript
$('div').animate(

    {

        left : "+=50", //不断右移

        opacity : 0.25 //指定透明度

    },

    300, // 持续时间

    function() { alert('done!'); } //回调函数

);
```

[.stop()](http://api.jquery.com/stop/)和[.delay()](http://api.jquery.com/delay/)用来停止或延缓特效的执行。

[$.fx.off](http://api.jquery.com/jQuery.fx.off/)如果设置为true，则关闭所有网页特效。

