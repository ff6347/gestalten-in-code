---
layout: default
title: Authors
meta: True
permalink: /authors/
nosource: True
---  

{% capture authors_string %}
{% for page in site.pages %}{% if page.meta == nil  %}{{page.author}};{% endif %}{% endfor %}
{% endcapture %}

{% assign authors_array = authors_string | split: ";" | uniq %}

{% for author in authors_array %}
<h2>{{ author }}</h2>  
{% include filtered-index-author-overview.html param=author %}
{% endfor %}