---
title: "移动端的hover问题.md"
date: 2020-12-15T12:38:42+08:00
draft: false
---

# 移动端中的hover问题

移动端中，如果给元素添加hover效果，触摸元素，会触发hover效果（safari也是吗？），手指离开后，依然保持hover状态。

使用媒体查询：

```
@media (any-hover: hover) {
  a:hover {
    background: yellow;
  }
```

PC支持hover事件，移动端不支持？

经测试，手机接上鼠标后，`any-hover`和`hover`媒体查询均失效，触摸依然会触发和维持hover效果。
