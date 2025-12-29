// world map image taken from here
// http://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/World_location_map_(equirectangular_180).svg/1280px-World_location_map_(equirectangular_180).svg.png
// checkout http://dbsgeo.com/latlon/ 
// for locations

PImage worldmap;

void setup(){

  worldmap = loadImage("world.png");
  
  size(1280/*worldmap.width*/, 640/*worldmap.height*/);
}
void draw(){
  image(worldmap,0,0);
//  Berlin
 float lon = 13.0; 
 float lat = 52.0;
//San Francisco
//Latitude, Longitude: 37.77493, -123.47410
  //float lon = -123;
  //float lat = 37;

  float x = map(lon,-180,180,0,worldmap.width);
  float y = map(lat,90,-90,0,worldmap.height);
  ellipse(x,y,10,10);

}