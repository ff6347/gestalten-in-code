---
layout: default
author: Fabian Morón Zirfas
title: John Venn's Randomness
tags: [P5.js, chance, repeat, Law of Similarity,Law of Connected Elements, grid,]
permalink: /chance/john-venn-randomness
summary: This sketch shows the visual representation of randomness by John Venn
archive: john-venn-randomness.zip
---

<div class="hero">{{page.summary}}</div>  

Actually the idea for the algorithm was brought up by a student. That it nearly the same as [John Venn's diagramm](http://dada.compart-bremen.de/item/artwork/621) from 1866 came out later. You also should take a look at [Manfred Mohr's P018 Random Walk](http://www.emohr.com/sc69-73/vfile_18.html) from 1969 which resembles the algorithm as well. The algorihm below works with a one dimensional array. To see the same algoritm with a two dimensional array you can take a [look here.](https://github.com/fabianmoronzirfas/neighbours)  

<!-- more -->

<div id="sketch"></div>

```js
{% include_relative index.js %}
```

<script type="text/javascript" src="{{site.baseurl}}/assets/js/p5.min.js"></script>
<script type="text/javascript" src="{{site.baseurl}}/{{ page.path | replace:'.md','.js' }}"></script>