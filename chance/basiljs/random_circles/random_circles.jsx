// @includepath "~/Documents/;%USERPROFILE%Documents";
// @include "basiljs/bundle/basil.js";
var x = 5;
var y = 5;
var scaler = 0;
function setup () {
  doc = b.doc();
  doc.properties = {
    documentPreferences: {
      pageWidth: 400, pageHeight: 400
    }
  };
}

function draw() {
  var step = 100;
  for (var i = 0; i < b.width * b.height; i += step) {
    scaler = b.random(10);
    b.ellipse(x, y, scaler, scaler);
    x += step;
    if (x >= b.width) {
      x = 5;
      y += step;
    }
  }

  var fname = File($.fileName).parent.fsName + '/' + ($.fileName.split('/')[$.fileName.split('/').length - 1]).split('.')[0] + '.indd';
  b.println(fname);
  doc.save(fname, false, 'basil', true);
  b.savePNG('out.png');
}
b.go();
