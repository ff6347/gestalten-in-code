---  
layout: default
author: Fabian Morón Zirfas
title: Open Paths
tags: [P5.js, data, repeat, Law of Connected Elements, ]
permalink: /data/open-paths
summary: Loading and displaying data
archive: open-paths.zip
---  

<div class="hero">{{page.summary}}</div>

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>