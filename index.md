---  
layout: default
title: Gestalten in Code
meta: True
---  

> "program the beautiful"  
> Max Bense  


<div class="hero">What is <em>"Gestalten in Code"</em>?<br>It is an exploration into the the depths of generative design. It is learning material for an upcoming seminar at the <a href="http://www.fh-potsdam.de/">University of Applied Sciences Potsdam (Germany)</a> by <a href="http://fabianmoronzirfas.me/">Fabian Morón Zirfas</a>. It is an attempt to apply the "Laws of Gestalt" in programming. Last but not least it is a comparison of several creative coding frameworks. To show how the same language can be applied in different contexts. .</div>  

The examples on this site are clustered in different ways. By categories like [form](/gestalten-in-code/form/), [color](/gestalten-in-code/color/), [typography](/gestalten-in-code/typography/), by language like [Processing](/gestalten-in-code/processing/), [P5.js](/gestalten-in-code/p5js), [Basil.js](/gestalten-in-code/basiljs) and also by the Laws of Gestalt like the [Law of Proximity](/gestalten-in-code/law-of/proximity), the [Law of Similarity](/gestalten-in-code/law-of/similarity) or the [Law of Common Fate](/gestalten-in-code/law-of/common-fate) _(to name a few)_. Some of them might appear in different categories. Feel free to explore them. If you run into any errors, have questions or contributions contact me on [GitHub](https://github.com/fabianmoronzirfas/gestalten-in-code/issues).  

<hr>

<div class="index-overview">
{% include thumb-noblock.html url="/gestalten-in-code/frameworks" title="Frameworks" thumb="/gestalten-in-code/assets/images/logo-thumb.png" %}

{% include thumb-noblock.html url="/gestalten-in-code/laws" title="Laws of Gestalt" thumb="/gestalten-in-code/assets/images/gest-thumb.png" %}

{% include thumb-noblock.html url="/gestalten-in-code/categories" title="Categories" thumb="/gestalten-in-code/assets/images/cats-thumb.png" %}
</div>
<div class="clear-float"></div>

{% comment %}
{% capture tgs %}{% for page in site.pages %}{% for tag in page.tags %}{{ tag}},{% endfor %},{% endfor %}{% endcapture %}
{% assign tag_words = tgs | split:',' | sort | uniq %}
{{tgs}}

{% for tg in tag_words %}
{% for page in site.pages %}
{% assign title = page.title | downcase | replace: '.','' | replace: ' ','-'| replace:'ä','ae' | replace:'ö','oe'| replace:'ü','ue'| replace:'ß','ss' %}
{% assign tgtxt = tg | downcase | replace: '.','' | replace: ' ','-'| replace:'ä','ae' | replace:'ö','oe'| replace:'ü','ue'| replace:'ß','ss' %}
{% if title == tgtxt %}
found a match --> {{title}}:{{tg}} <br> 
{% endif %}
{% endfor %}
{% endfor %}
{% endcomment %}