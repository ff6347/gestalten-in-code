---  
layout: default
author: Fabian Morón Zirfas
title: Circle Raster
tags: [P5.js, repeat, Law of Prägnanz, Law of Similarity, ]
permalink: /repeat/circle-raster/
summary: Creates a rster of circles. one circle is "prägnant".
archive: circle-raster.zip
---  

<!-- more -->
<div class="hero">{{page.summary}}</div>


<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>