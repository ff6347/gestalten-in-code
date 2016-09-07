---  
layout: default
author: Fabian Morón Zirfas
title: Splatter
tags: [P5.js, repeat, chance]
permalink: /repeat/splatter
summary: Creates circles within a range of the canvas.
archive: splatter.zip
---  

<!-- more -->
<div class="hero">{{page.summary}}</div>


<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>