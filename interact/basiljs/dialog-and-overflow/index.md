---
layout: default
author: Fabian Morón Zirfas
title: Dialog and Overflow
tags: [Basil.js, repeat, interact, typography, unicode]
permalink: /repeat/dialog-and-overflow/
summary: This example creates a dialog and waits for the user to make a selection.     
archive: dialog-and-overflow.zip
---

<div class="hero">{{page.summary}}</div>
When done it will add the selected unicode signs to a textframe and scale them up until the text overflows. Then it gets scaled down again.

<!-- more -->

{% include out.html %}

```js
{% include_relative dialog-and-overflow.jsx %}
```



