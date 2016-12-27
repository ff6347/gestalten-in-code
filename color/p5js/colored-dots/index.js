var CANVAS_WIDTH  = 500,
	CANVAS_HEIGHT = CANVAS_WIDTH,
	DOT_WIDTH  = CANVAS_WIDTH * 0.2,
	DOT_HEIGHT = CANVAS_HEIGHT * 0.2,
	offsetX = CANVAS_WIDTH  * 0.25,
	offsetY = CANVAS_HEIGHT * 0.25;

var dots;
function setup() {
	// setup Canvas
	var canvas = createCanvas(CANVAS_WIDTH, CANVAS_HEIGHT);
	canvas.parent('sketch');	
	background(0);
    // dots-colors
	var c_color  = {r: 65, g: 95, b: 98 };
	var cc_color = {r: 255, g: 98, b: 95 };	
	// dots-positions
	dots = [
		{ x: 0 + offsetX, y: 0 + offsetY, color: c_color }, 
		{ x: CANVAS_WIDTH - offsetX, y: 0 + offsetY , color: c_color },
		{ x: 0 + offsetX, y: CANVAS_HEIGHT - offsetY, color: c_color }, 		
		{ x: CANVAS_WIDTH - offsetX, y: CANVAS_HEIGHT - offsetY, color: c_color },
		// center
		{ x: CANVAS_WIDTH / 2, y: CANVAS_HEIGHT / 2, color: cc_color }
	];
}

function draw() { 
	for(var i = 0; i < dots.length; i++){
 		var dot = dots[i];
		fill(dot.color.r, dot.color.g, dot.color.b); 		
 		ellipse(dot.x, dot.y , DOT_WIDTH, DOT_HEIGHT );
	}
	noLoop();
}

