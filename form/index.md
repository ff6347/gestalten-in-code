---  
layout: default
title: Form
tags: [basil.js, processing, P5.js, 2D, 3D]
---  


The form.  

<div id="blocks">
{% for page in site.pages %}
{% for tag in page.tags %}
{% if tag == "form" %}
<div class="block{% for t in page.tags  %}{% if t != 'form' %} {{t | replace: '.' | replace:'-'| downcase }}{% endif %}{% endfor %}">
<h3>{{page.title}} </h3>
<div class="thumb">
<img src="{{site.baseurl}}/{{ page.path | replace:'index.md','' }}/thumb.png">
</div>
{% if page.summary %}
<div class="summary">
    <p>{{ page.summary }}</p>
</div>
<div class="block-page-tags">Tags: 
    {% for t in page.tags  %}
    {% if t != "form" %}
    <span> {{t}} </span>
    {% endif %}
    {% endfor %}
</div>
<a href="{{ page.permalink | prepend: site.baseurl }}">see the sketch →</a>
</div>
{% endif %}
{% endif %}
{% endfor %}
{% endfor %}
</div>