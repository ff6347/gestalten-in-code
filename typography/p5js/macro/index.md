---  
layout: default
author: Fabian Morón Zirfas
title: Macro
tags: [P5.js, typography, macro]
permalink: /typography/macro
summary: Come closer. Can you still spot the character?
archive: macro.zip
---  

{{page.summary}}

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>