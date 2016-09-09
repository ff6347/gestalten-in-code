---  
layout: default
author: Fabian Morón Zirfas
title: Drawing with Particles
tags: [P5.js, repeat, interact, mouse, key, color, ]
permalink: /interact/drawing-with-particles
summary: This example shows different interaction types. Keycodes and mouse movement. Text on screen and also global color creation.
archive: drawing-with-particles.zip
---  

<!-- more -->
<div class="hero">{{page.summary}}</div>


<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>