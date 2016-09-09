---
layout: default
author: Fabian Morón Zirfas
title: Random Circles
tags: [P5.js, chance, repeat, Law of Similarity,]
permalink: /chance/random-circles-p5js
summary: Generate random circles with one simple loop. Break at the width of the canvas.
archive: random_circles.zip
---

<div class="hero">{{page.summary}}</div>
This sketch shows how to draw a parameterized figure with basic shapes.

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>