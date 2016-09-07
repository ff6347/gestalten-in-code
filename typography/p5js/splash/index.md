---  
layout: default
author: Fabian Morón Zirfas
title: Splash
tags: [P5.js, typography, parameterized, Law of Prägnanz,todo]
permalink: /typography/splash
summary: Heavily parameterized splash image creation. Uses a font that has to be installed on the users machine.
archive: splash.zip
---  

{% comment %}
- needs some fallback to standard fonts installed on the users machine. 
- remove color
{% endcomment %}
{{page.summary}}

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>