/*
 * create a bounding box
 * upper left and lower right
 * check out http://dbsgeo.com/latlon/
 * for getting geolocations
 */

/**
 * This is the wolrd
 */
var WORLD_westlon = 180; // the most left point
var WORLD_northlat = 90; // the most top point
var WORLD_southlat = -90; // the most bottom point
var WORLD_eastlon = -180; // the most right point

/**
 * Canada
 */
var CANADA_westlon = -133.81259; // the most left point
var CANADA_northlat = 54.47974; // the most top point
var CANADA_southlat = 46.69105; // the most bottom point
var CANADA_eastlon = -119.75009; // the most right point

/**
 * This is Germany bounding box
 */
var DE_westlon = 2.50652; // the most left point
var DE_northlat = 54.81060; // the most top point
var DE_southlat = 46.99199; // the most bottom point
var DE_eastlon = 17.31609; // the most right point

/**
 * This is Berlin and Potsdam bounding box
 */
var BPM_westlon = 12.9638671875; // the most left point
var BPM_northlat = 52.70468296296834; // the most top point
var BPM_southlat = 52.338695481504814; // the most bottom point
var BPM_eastlon = 13.8153076171875; // the most right point

/**
 * This is Potsdam bounding box
 *
 */
var PM_westlon = 12.935028076171875; // the most left point
var PM_northlat = 52.43299020014247; // the most top point
var PM_southlat = 52.338695481504814; // the most bottom point
var PM_eastlon = 13.16436767578125; // the most right point

/**
 * This is campus FHP bounding box
 */
var FHP_northlat = 52.41493264663135; // the most top point
var FHP_westlon = 13.045835494995117; // the most left point
var FHP_southlat = 52.40954011714691; // the most bottom point
var FHP_eastlon = 13.054676055908203; // the most right point

var locs = [];
var json = null;
function preload() {

  json = loadJSON('https://raw.githubusercontent.com/fabianmoronzirfas/gestalten-in-code/master/data/p5js/open-paths/openpaths_fabiantheblind.json');
}
function setup() {
  var canvas = createCanvas(640, 360);
  canvas.parent('sketch');
  // console.log(json);
  background(255);
  noStroke();
  fill(255);
  rect(0, 0, width, height);
  smooth();
  noFill();
  strokeWeight(1);
  stroke(0);
  beginShape();
  for(var i = 0; i < json.length; i++) {
    // console.log(json[i].lat);
    var x = width * ((WORLD_westlon - json[i].lon) / (WORLD_westlon - WORLD_eastlon));
    var y = (height * ((WORLD_northlat - json[i].lat) / (WORLD_northlat - WORLD_southlat)));
    vertex(x, y); // draw the vertex
  }
  endShape();
  // saveCanvas(canvas, 'out', 'png');
}
function draw() {
}
