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

__Lorem__ ipsum dolor sit _amet_, ___consectetur___ _**adipisicing**_ elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo `consequat`. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  


```js
console.log('hello world');
```

1. foo
2. bah
3. baz

- foo
- bah
- baz
- - foo foo
- bah bah
    - baz

---  

1. foo
2. bah
    1. bah bah
    2. baz
3. baz baz

# heading 1

## heading 2

### heading 3

#### heading 4

##### heading 5

###### heading 6


<small>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.    
</small>

<p class="font_small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


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