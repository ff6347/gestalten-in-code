---  
layout: default
author: Fabian Morón Zirfas
title: Gestalten in Code
tags: [welcome, foo]
meta: True
---  

## Gestalt | Definition of Gestalt by Merriam-Webster

>gestalt
>noun  ge·stalt \gə-ˈstält, -ˈshtält, -ˈstȯlt, -ˈshtȯlt\
>Simple Definition of gestalt
>psychology : something that is made of many parts and yet is somehow more than or different from the combination of its parts; broadly : the general quality or character of something  
[source](http://www.merriam-webster.com/dictionary/gestalt)  

{% for page in site.pages %}
{% if page.meta == nil  %}
<div class="thumb" style="float:left; margin: 1em;max-width:128px;">
<a href="{{ page.permalink | prepend: site.baseurl }}"><img src="{{site.baseurl}}/{{ page.path | replace:'index.md','' }}thumb.png">
<div><small>{{page.title | truncate: 13,'…' | append: ' →'}}</small></div>
</a>
<div class="clear-float"></div>
</div>
{% endif %}
{% endfor %}

<div class="clear-float"></div>