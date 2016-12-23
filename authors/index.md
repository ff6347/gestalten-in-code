---
layout: default
title: Authors
meta: True
permalink: /authors/
nosource: True
---  

## Julia Hilt  

{% include filtered-index-author-overview.html param="Julia Hilt" %}  

## Fabian Morón Zirfas  

{% include filtered-index-author-overview.html param="Fabian Morón Zirfas" %}

{% for page in site.pages %}{% if page.meta == nil  %}{{page.author}}{% endif %}{% endfor %}
