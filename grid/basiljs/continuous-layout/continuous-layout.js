#includepath "~/Documents/;%USERPROFILE%Documents";
#include "basiljs/bundle/basil.js";
/**
 * Creates a grid of rectangles
 * over several pages
 */
function draw() {
  // code goes here -----------
  var doc = b.doc(); // get the doc
  b.clear(doc); // clear everything from the pages
  while(doc.pages.length > 1){
    // we clear out all pages from the doc
    // exceppt for the first one
    doc.pages.lastItem().remove(); // BOOM!
  }
  var ph = 200; // our page width
  var pw = 300; // our page height
  // set some props of the doc
  doc.documentPreferences.properties = {
    pageWidth: pw,
    pageHeight: ph
  };
  b.clear(doc); // remove everything from the doc
  var currentPage = doc.pages[0];
  var x = 0; // the x for the rectangle
  var y = 0; // the y for the rectangle
  var w = 0; // will be a random value
  var h = ph / 3; // we have three rows
  for (var i = 0; i < 100; i++) {
    // b.rect(x,y,w,w);
    w = b.random(50, 100); // set a random width for the rectangle
    var currentRect = currentPage.rectangles.add({
      geometricBounds: [y, x, y + h, x + w],
      fillColor: doc.swatches[3]
    });
    // currentRect.place(File("path/to/image"));
    x += w; // increase the x value
    // now we need to do some checks
    // if we exceed the page width
    if (x >= pw) {
      // yes we are wider then the page
      x = 0; // reset x to zero
      y += h; // and increase y by the height of or rows
      // we remove the current rectangle and will create a neww one in the next iteration
      currentRect.remove();
      // but before we need to check if y exceeds the page height
      if (y >= ph) {
        // yes we are heigher than the page
        y = 0; // reset y to zero
        x = 0; // reset x to zero
        var newPage = doc.pages.add(); // ceate a new page
        // b.page(newPage); // DOES NOT WORK RIGHT
        currentPage = newPage; // set the new page to be our working current page
      } // end of if y > ph
    } // end of if x > pw
  } // end if i loop
  // end of your code ---------
} // end of draw
b.go(); // run that thing