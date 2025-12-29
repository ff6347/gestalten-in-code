---
layout: default
author: Fabian Morón Zirfas
title: Noise Line
tags: [P5.js, chance, repeat, noise]
permalink: /chance/noise-line/
summary: Generate a line from the middle of one side of the convas to another. Similar to the sketch <a href="/chance/noise/">Noise</a>.
archive: noise-line.zip
---

<div class="hero">{{page.summary}}</div>

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>
