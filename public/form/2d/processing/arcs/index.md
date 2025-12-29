---   
layout: default
author: Fabian Morón Zirfas
title: arcs
tags: [processing,2D,Law of Closure,form, ]
permalink: /form/arcs/
summary: The "Law of closure".  > The law of closure states that individuals perceive objects such as shapes, letters, pictures, etc., as being whole when they are not complete. Specifically, when parts of a whole picture are missing, our perception fills in the visual gap.  > [wikipedia](https://en.wikipedia.org/wiki/Gestalt_psychology#Pr.C3.A4gnanz)  
---  

<div class="hero">{% capture sum %}{{ page.summary }}{% endcapture %}
{{ sum | markdownify }}</div>

<!-- more -->

{% include out.html %}

```java
{% include_relative arcs.pde %}
```


