![Gedankenblitze](splash.png)

<h2>The assignment</h2>

The assignment was to create an algorithm that had to be sketched on paper by 10 test persons. Content of the algorithm was a simple drawing instruction after defining parameters like tools, format, time and material. The description should be precise and easy to execute while leaving room for free interpretation. Further on, more iterations were conducted by changing parameters of the algorithm to improve its description and output. 

„Analog algorithm“ was the first assignment of »Designing with code – the basic of generative design« by Fabian Morón Zirfas at the University of Applied Sciences Potsdam.

<h2>My inspiration</h2>
I was inspired by the shapes of lightning which can be recreated with paper by crumpling it. Furthermore, I drew inspiration from an artwork by Anders Hoff, who published a study of generative algorithms. The centralized arrangement of the elements in the picture really appealed to me. So I wanted to implement this aspect into my algorithm. 

![Inspiration](assets/inspiration.png) </br>
(source http://inconvergent.net/) 

<h2>The algorithm</h2>

<h3> Material and tools</h3>
a white piece of paper: »background layer«</br>
a tracing paper: »drawing layer«</br>
tools: 3 pens of different thickness


<h3>Background layer</h3>
Thick pen: Draw an oval or circle which is almost as big as the drawing surface. This is your auxiliary line. Divide this line in 2 - 4 parts. There are gaps between these parts which are as wide as 2 - 5 fingers. 

<h3>On the tracing paper</h3>
Crumple the paper and flatten it again. Put it on top of the background layer. 

Now trace the rigid lines which came from crumpling the paper. </br>
Thick Pen: Trace the rigid lines along the auxiliary line. </br> 
Medium-size pen: Draw one to three branches from each line into the centre of the oval/circle.</br>
Thin pen: Repeat the previous step one to two times. 


<h3>Digitalising</h3>
The two papers are scanned and colours are reverted.


<h2>First iterations</h2>

![Algorithm](assets/algorithm01.png)

Part of the initial algorithm were lines, which originated from one point on the paper and along which the test persons were supposed to draw triangles. I played around with the algorithm by changing the parameters:
<ul>
<li>material like aluminium, toilet paper, oranges</li>
<li>shape of the drawing surface like circle and triangle</li>
<li>size, style and amount of triangles on the line </li>
<li> circles instead of triangles</li>
<li>colors</li>
</ul>

It was very important two conduct more iterations. First of all to improve the description of the algorithm to avoid misunderstandings and to improve the output. At this stage this was my favourite : ![Favourite](assets/gut.png)


<h2>License (MIT)</h2> 

(c) 2017 Julian Broocks, University of Applied Sciences Potsdam (Germany)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

See also http://www.opensource.org/licenses/mit-license.php
