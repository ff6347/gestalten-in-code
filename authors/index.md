---
layout: default
title: Authors
meta: True
permalink: /authors/
nosource: True
---  

Thanks to all the fantastic contributions. Some are made directly from the students of the seminar some are found around the web.  

{% capture authors_string %}
{% for page in site.pages  %}{% if page.meta == nil or page.meta == False %}{{page.author}};{% endif %}{% endfor %}
{% endcapture %}
{% assign authors_array = authors_string | split: ";" | sort | uniq  %}


{% for author in authors_array offset: 2 %}
<h2 class="loop" id="{{ author | downcase | replace: ' ','-' |replace: 'ó','o'|replace:'í','i' | replace: 'ä',''| replace: 'ö',''| replace: 'ü',''| replace:'ß',''}}">{{ author }}</h2>  
<div class="sketches">{% include filtered-index-author-overview.html param=author %}</div>
{% endfor %}