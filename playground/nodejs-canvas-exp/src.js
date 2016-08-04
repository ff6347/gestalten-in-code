const Canvas = require('canvas');
import * as fs from 'fs';


function main() {
  console.log('main');
  let outPath = process.cwd() + '/out.png';
  let canvas = new Canvas(400, 400);
  let ctx = canvas.getContext('2d');
  // ----
  ctx.fillStyle = 'rgba(255,255,255,1)';
  ctx.fillRect(0, 0, canvas.width, canvas.height);
  ctx.fillStyle = '#000';
  ctx.fillRect(10, 10, 190, 190);
  // ----
  fs.writeFile(outPath, canvas.toBuffer(), (err) => {
    if (err) {
      throw err;
    }
    console.log('wrote file');
  });
}
main();
