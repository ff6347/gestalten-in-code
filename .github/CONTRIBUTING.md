Contribution Guide  
==================

First of all: Awesome you want to contribute. Please follow this guide.    

For contributing an example to the Gestalten in Code website you need to meet the following criteria.  

Find the right main category for your example and add it to the according folder. Add the tags where it also should appear:  

- chance
- color
- data (!not "_data")  
- form
- grid
- interact
- motion
- repeat
- typography

Within these folders are subfolders for the different frameworks (processing, p5js, basiljs,…). For example like this

    .
    ├── chance
    │   ├── basiljs
    │   ├── p5js
    │   └── processing


Possible additional sub-categories are added as tags in the yaml frontmatter of index.md (see below). You also can add tags for the different laws of gestalt:   

- "Law of Causality"
- "Law of Closure"
- "Law of Common-Fate"
- "Law of Prägnanz"
- "Law of Connected-Elements"
- "Law of Continuity"
- "Law of Contrast"
- "Law of Direction of Reading"
- "Law of Emotion"
- "Law of Figure-Ground"
- "Law of Multistable-perception"
- "Law of Preference"
- "Law of Proximity"
- "Law of Regularity"
- "Law of Relativity of Properties"
- "Law of Sign-and-Image"
- "Law of Similarity"
- "Law of Simplicity"
- "Law of Space"
- "Law of Symmetry"


## P5.js

A PR for P5.js has to have the following files:  

- index.md (see example below)
- index.js (with your code)
- out.png (an image of the example in 500 × 500 px)
- thumb.png (a thumbnail of the out.png in 128 × 128 px)

The index.md for P5.js should look like this (elements in square brackets should be edited):  


    ---  
    layout: p5js
    author: [Max Mustermann]
    author-url: [https://my-homepage.tld]
    title: [My cool example]
    tags: [P5.js,[CATEGORY], [ADDITIONAL CATEGORIES], "Law of Something"]
    permalink: /[CATEGORY]/[my-title]/
    summary: [A short summary of my example used for the overview pages.]
    ---  
    
    Your additional explanation or even additional images come here!  
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  

    ![](path/to/another/image.png)  

Make sure that the [yaml frontmatter](https://jekyllrb.com/docs/frontmatter/) ist valid. For example wrong would be:

    ---
    layout:p5js
    ---

The right way is (just a single whitespace):  

    ---
    layout: p5js
    ---



The content of the the index.js file will be shown in a `div` called `sketch`. So a simple `index.js` could look like this:  

```js
var x = 0;
function setup() {
  var canvas = createCanvas(100, 100);
  canvas.parent('sketch');
}

function draw() {
  ellispe(x, height/2, 10, 10);
  x++;
  if(x === width){
    x = 0;
  }
}

```

See the [raw source](https://raw.githubusercontent.com/fabianmoronzirfas/gestalten-in-code/master/color/p5js/hsb/index.md), the [folder on github](https://github.com/fabianmoronzirfas/gestalten-in-code/tree/master/color/p5js/hsb) and the [rendered page](https://interface.fh-potsdam.de/gestalten-in-code/form/hsb/) of the HSB example.  

## Processing

tbd  

## Basil

tbd

## Projects

tbd

