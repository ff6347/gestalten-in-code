---
layout: default
author: Fabian Morón Zirfas
title: Stick Figure
tags: [P5.js, form, ]
permalink: /form/stick-figure
summary: A simple stick figure - heavily parameterized.
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