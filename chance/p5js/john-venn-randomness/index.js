// getting started with p5js

var w = 500;
var h = 500;
var step = 10;
var points = [];
var startpoint = null;
var nextpoint = null;

var get_neighbours = function(ndx, list, width, height, steps) {
  var w_steps = (width / steps) - 1;
  var h_steps = (height / steps) - 1;
  var curr_point = list[ndx];
  var neighbours = [];
  var left = false;
  var right = false;
  var top = false;
  var bottom = false;
  var centered = false;
  // for(var i = 0; i < list.length;i++){
  if (ndx < h_steps) {
    // we are at the left border
    // console.log('Left border with index "%s" point is at x: %s y: %s ', ndx, list[ndx].x, list[ndx].y);
    left = true;
  }
  if (ndx > (list.length - 1) - h_steps) {
    // right border
    // console.log('Right border with index "%s" point is at x: %s y: %s ', ndx, list[ndx].x, list[ndx].y);
    right = true;
  }
  if (ndx % (h_steps) === 0) {
    // upper border
    // console.log('Upper border with index "%s" point is at x: %s y: %s ', ndx, list[ndx].x, list[ndx].y);
    top = true;
  }
  if (ndx % (h_steps) === h_steps - 1) {
    // lower border
    // console.log('Lower border with index "%s" point is at x: %s y: %s ', ndx, list[ndx].x, list[ndx].y);
    bottom = true;
  }
  if (right !== true && left !== true && top !== true && bottom !== true) {
    // console.log('centered with index "%s" point is at x: %s y: %s ', ndx, list[ndx].x, list[ndx].y);
    centered = true;
  }
  if (right === true && bottom === false && top === false) {
    neighbours = [];
    neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    neighbours.push(ndx - (h_steps - 1));
    neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);
  }
  if (right === true && top === true && bottom === false) {
    neighbours = [];
    // neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    neighbours.push(ndx - (h_steps - 1));
    // neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);

  }
  if (right === true && bottom === true && top === false) {
    neighbours = [];
    neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    // neighbours.push(ndx - (h_steps - 1));
    neighbours.push(ndx - 1);
    // neighbours.push(ndx + 1);

  }
  if (left === true && bottom === false && top === false) {
    neighbours = [];
    neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    neighbours.push(ndx + (h_steps - 1));
    neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);
  }
  if (left === true && top === true && bottom === false) {
    neighbours = [];
    neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    // neighbours.push(ndx + (h_steps - 1));
    // neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);
    // neighbours.push(ndx - (h_steps + 1));
    // neighbours.push(ndx - h_steps);
    // neighbours.push(ndx - (h_steps - 1));

  }
  if (left === true && bottom === true && top === false) {
    neighbours = [];
    // neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    neighbours.push(ndx + (h_steps - 1));
    neighbours.push(ndx - 1);
    // neighbours.push(ndx + 1);
    // neighbours.push(ndx - (h_steps + 1));
    // neighbours.push(ndx - h_steps);
    // neighbours.push(ndx - (h_steps - 1));
  }
  if (top === true && left === false && right === false) {
    neighbours = [];
    neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    // neighbours.push(ndx + (h_steps - 1));
    // neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);
    // neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    neighbours.push(ndx - (h_steps - 1));
  }
  if (bottom === true && left === false && right === false) {
    neighbours = [];
    // neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    neighbours.push(ndx + (h_steps - 1));
    neighbours.push(ndx - 1);
    // neighbours.push(ndx + 1);
    neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    // neighbours.push(ndx - (h_steps - 1));
  }

  if (centered === true) {
    neighbours = [];
    neighbours.push(ndx + (h_steps + 1));
    neighbours.push(ndx + h_steps);
    neighbours.push(ndx + (h_steps - 1));
    neighbours.push(ndx - 1);
    neighbours.push(ndx + 1);
    neighbours.push(ndx - (h_steps + 1));
    neighbours.push(ndx - h_steps);
    neighbours.push(ndx - (h_steps - 1));
  }

  return neighbours;
};

function setup() {
  var canvas = createCanvas(w, h);
  canvas.parent('sketch');
  var counter = 0;
  for (var x = step; x < w; x += step) {
    for (var y = step; y < h; y += step) {
      points.push({
        x: x,
        y: y,
        ndx: counter
      });
      counter++;
    }
  }
  startpoint = points[Math.floor(Math.random() * points.length)];

}
// http://stackoverflow.com/questions/10073699/pad-a-number-with-leading-zeros-in-javascript
function pad(n, width, z) {
  z = z || '0';
  n += '';
  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;
}

function draw() {
  var nearest_neighbours = get_neighbours(startpoint.ndx, points, w, h, step);
  var nextindex = nearest_neighbours[Math.floor(Math.random() *
    nearest_neighbours.length)];
  nextpoint = points[nextindex];
  line(startpoint.x, startpoint.y, nextpoint.x, nextpoint.y);
  startpoint = nextpoint;
  if(frameCount === 500) {
    // saveCanvas(canvas, 'out', 'png');
  }
}
