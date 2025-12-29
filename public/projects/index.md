---
layout: default
title: Projects
---

<div class="hero"><p>These are projects created during the seminar.</p></div>


{% comment %}
{% for page in site.pages %}
{%if page.type == 'project' %}
- {{page.title}}
{%endif%}
{% endfor %}
{% endcomment %}


{% include overview-projects.html %}