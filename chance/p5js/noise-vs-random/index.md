---
layout: default
author: Fabian Morón Zirfas
title: Noise vs Random
tags: [P5.js, chance, repeat]
permalink: /chance/noise-vs-random
summary: Shows the difference between noise and random values.  
archive: noise-vs-random.zip
---

<div class="hero">{{page.summary}}</div>

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>