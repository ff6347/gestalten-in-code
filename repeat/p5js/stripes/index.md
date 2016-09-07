---  
layout: default
author: Fabian Morón Zirfas
title: Black and white Stripes
tags: [P5.js, repeat, Law of Figure and Ground, Sol LeWitt]
permalink: /repeat/stripes
summary: Simple stripes. "Law of Figure and Ground".
archive: stripes.zip
---  

<!-- more -->
<div class="hero">{{page.summary}}</div>


<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>