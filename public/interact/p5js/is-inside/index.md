---  
layout: default
author: Fabian Morón Zirfas
title: Is Inside?
tags: [P5.js, repeat, interact, mouse, key, color, chance, ]
permalink: /repeat/is-inside/
summary: Check whether the mouse is inside of an element. If so, change the color.  
archive: is-inside.zip
---  

<!-- more -->
<div class="hero">{{page.summary}}</div>


<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>