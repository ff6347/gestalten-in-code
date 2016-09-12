FHP IO algorithm topolade
======

##Abstract
###Getting to know your machine – To gain a deeper understanding of the foundation of our *daily digital helpers,* the Input Output Course ([University of Applied Science, Potsdam](http://www.fh-potsdam.de/)) started off with the assignment to understand **the concept of algorithm,** the languages and precise grammar required to make your systems work.

Before we went all digital, our first task was to come up with **drawing instructions,** so that volonteers could execute those rules with pen and paper within a certain time period. I experimented with different parameters, the precision of everday language and various materials, such as **black paper and white calk pencils.** Eventually, I was quite pleased with my final algorithm. 

In a second step, after we analysed the execution of those pen and paper algorithm by our human volonteers, our assignment was to translate it into a **digital algorithm.** We chose **Processing with python mode** as development enviroment, based on the rather simple python syntax as well as the almost instant preview functionality of Processing.

##What you'll need
* [**Processing 2.2.1**](https://processing.org/)
* [**Python Mode for Processing**](https://github.com/jdf/processing.py#python-mode-for-processing) by Johnatan Feinberg
* **Crosshatch Image** – which is included in this repo

To execute the **topolade algorithm** copy and open this repos processing sketch **topoplade** with Processing. Be sure to switch to the python mode once installed. 


##What it does
The **topolade algorithm** draws a certain amount of horizontal zig-zag lines. Next, close zig-zags are connected vertically. Every second area is filled with a crosshatch pattern. Finally a random, still blank area recieves a circle.

![processing sketch](http://topada.hercules.uberspace.de/d_fhp/io/doc/01_algorithm/io_1-2.png)

![processing sketch](http://topada.hercules.uberspace.de/d_fhp/io/doc/01_algorithm/io_1-1.png)


##What you can do
Feel free to play around with the algorithm! Take a look at the commented source code, written in python. You can easily adjust the canvas size, the amount of lines drawn and the amount of zig-zags. 

In additon you may comment out **the progressive mode** (further instructions in the code): clicking the canvas will produce another itteration, while increasing the line and zig-zag amount.

![processing sketch](http://topada.hercules.uberspace.de/d_fhp/io/doc/01_algorithm/io_1-3.png) 

##What's it for
The entire assignment was aimed at learning the concepts of algorithm. From *analog* pen and paper algorithm completed by humans, to this *digital* algorithm processed by machines. Our last task was to conceive an analog purpose utilizing our digital algorithm to have come full circle.

I was thinking about **mass-produced products** like chocolate bars. Bringing the algorithm together with a dynamic chocolate mold could create unique chocolate bars, adding a symbolic value to the product.

![processing sketch](http://topada.hercules.uberspace.de/d_fhp/io/doc/01_algorithm/io_1-4.png)

Besides, siblings would or would not fight differently about their shares. And who gets the bit with the circle on top? 

##Thanks
Of Course, I want to thank the academy! Especially our tutor pal [@fabiantheblind](https://github.com/fabiantheblind), whose inspiring excitement always pushed us further. Also, I have to thank my fellow students for their helping critisim and ideas.

##Ahoi
Follow me on twitter [@topada](http://twitter.com/topada), or get in touch via mail [info@topada.de](mailto:info@topada.de), I'll keep you informed as soon as topada.de eventually rises from the grave.

##License
![CC_CC](http://creativecommons.org/wp-content/themes/creativecommons.org/images/chooser_cc.png)
![CC_BY](http://creativecommons.org/wp-content/themes/creativecommons.org/images/chooser_by.png)
![CC_NC](http://creativecommons.org/wp-content/themes/creativecommons.org/images/chooser_nc.png)
![CC_SA](http://creativecommons.org/wp-content/themes/creativecommons.org/images/chooser_sa.png)

This project is licensed under a [**Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License**](http://creativecommons.org/licenses/by-nc-sa/4.0/)

###The source code is licensed under the MIT License (MIT)

Copyright (c) 2015 Jonas Köpfer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
