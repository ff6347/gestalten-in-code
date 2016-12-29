'use strict';

var _fs = require('fs');

var fs = _interopRequireWildcard(_fs);

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj.default = obj; return newObj; } }

var Canvas = require('canvas');


function main() {
  console.log('main');
  var outPath = process.cwd() + '/out.png';
  var canvas = new Canvas(400, 400);
  var ctx = canvas.getContext('2d');
  // ----
  ctx.fillStyle = 'rgba(255,255,255,1)';
  ctx.fillRect(0, 0, canvas.width, canvas.height);
  ctx.fillStyle = '#000';
  ctx.fillRect(10, 10, 190, 190);
  // ----
  fs.writeFile(outPath, canvas.toBuffer(), function (err) {
    if (err) {
      throw err;
    }
    console.log('wrote file');
  });
}
main();
