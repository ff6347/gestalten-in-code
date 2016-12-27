var canvas,
	CORNER_WIDTH,
	CORNER_HEIGHT,
	corners,
	c_color,
	cc_color;

function setup() {

	canvas = createCanvas(800, 800);
	canvas.parent('sketch');	
	background(0);
    
    // sizes
	CORNER_WIDTH  = 100;
	CORNER_HEIGHT = CORNER_WIDTH;

	// positions
	corners = [
		{ x: 200, y: 200 }, 
		{ x: 600, y: 600 }, 
		{ x: 200, y: 600 }, 
		{ x: 600, y: 200 }
	];
	// colors
	cc_color = {r: 255, g: 98, b: 95 };
	c_color  = {r: 65, g: 95, b: 98 };	
}


function draw() { 
	// corners
	fill(c_color.r, c_color.g, c_color.b);
	for(var i = 0; i < corners.length; i++){
 		var current = corners[i];
 		ellipse(current.x, current.y , CORNER_WIDTH, CORNER_HEIGHT );
	}

  fill(cc_color.r, cc_color.g, cc_color.b);
	ellipse(width/2 , height/2, CORNER_WIDTH, CORNER_HEIGHT);

	noLoop();
}
