---
title: "passive event listeners.md"
date: 2020-12-29T12:51:29+08:00
draft: false
---

# passive event listeners

为了提高滚动性能，设置了{passive: true}后，表示 listener 永远不会调用 preventDefault()。如果 listener 仍然调用了这个函数，客户端将会忽略它并抛出一个控制台警告。

这释放了浏览器，无需等待JavaScript就可以立即响应滚动，从而确保了用户可靠的流畅滚动体验。

给svg的元素设置touchstart事件的listener，结果有时响应，有时不响应，设置了passive:true后就正常响应了。
