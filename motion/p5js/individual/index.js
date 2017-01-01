/**
 * Created by ludwigfrank on 26/12/2017.
 */

// Booleans
var
  TICK = false

// Constants
var
  spring = 0.78,
  speed = 0.006,
  animationInterval = 2000,
  numberOfDots = 4,
  dotWidth = 5

var
  dots = [],
  shadows = [],
  position,
  destinationVector,
  velocity

// noinspection JSUnresolvedFunction,JSUnresolvedVariable
function setup() {
  createCanvas(windowWidth, windowHeight)
  background(244)
  noStroke()

  position = new p5.Vector(0,0)
  velocity = new p5.Vector(0,0)

  // center created Objects
  translate(width/2, height/2)

  setInterval(function() {
    updateAnimate()
  }, animationInterval)

  for (var i = 0; i < numberOfDots; i++) {
    destinationVector = new p5.Vector(100 * i - ((numberOfDots-1) * 100)/2, -200)
    var dot = new Dot(100 * i - ((numberOfDots-1) * 100)/2, 0, dotWidth, new p5.Vector(100*i - ((numberOfDots-1) * 100)/2, -200), 80)
    var shadow = new Rectangle((100 * i - ((numberOfDots-1) * 100)/2) - dotWidth/2,  10, dotWidth, 2, 0, 10)

    dots.push(dot)
    shadows.push(shadow)
    dot.render()
    shadow.render()
  }
}


function draw() {
  fill(244,244,244,50)
  rect(0,0,windowWidth,windowHeight)
  translate(width/2,height/2)
  var randomOutsider = 2
  for(var i = 0; i < dots.length; i ++) {
    var d = dots[i]
    if (TICK) {
      if (i === randomOutsider) {
        destinationVector.set(100 * i - ((numberOfDots-1) * 100)/2, 0)
      } else {
        destinationVector.set(100 * i - ((numberOfDots-1) * 100)/2, 0)
      }
    }
    else {
      if (i === randomOutsider) {
        destinationVector.set(d.destinationVector.x, d.destinationVector.y + 40)
      } else {
        destinationVector.set(d.destinationVector.x, d.destinationVector.y)
      }
    }

    // Spring animation Val Head https://www.youtube.com/watch?v=VWfXiSUDquw
    position.set(d.x, d.y)
    velocity.set(d.velocityX, d.velocityY)
    velocity.mult(spring)

    var diff = p5.Vector.sub(destinationVector, position);
    diff.mult(speed)
    velocity.add(diff)
    position.add(velocity)

    d.x = position.x
    d.y = position.y

    d.velocityX = velocity.x
    d.velocityY = velocity.y

    d.render()
    var s = shadows[i]
    s.width = map(d.y, 0, -200, dotWidth, dotWidth * 12)
    s.x = (100 * i - ((numberOfDots-1) * 100)/2) - s.width/2
    s.color = map(d.y, 0, -200, 230, 244)
    s.render()
  }

}

function updateAnimate() {
  if (!TICK) { TICK = true }
  else if (TICK) { TICK = false }
}


/**
 * Dot Class
 * TODO: Params as Object.
 *
 * @param {Integer} x The x-Position.
 * @param {Integer} y The y-Position.
 * @param size
 * @param destinationVector
 * @param color
 */
function Dot(x, y, size, destinationVector, color) {
  this.x = x
  this.y = y
  this.destinationVector = destinationVector
  this.velocityX = 0
  this.velocityY = 0
  this.size = size

  this.render = function() {
    fill(color)
    ellipse(this.x, this.y, this.size, this.size)
  }
}

/**
 * Rectangle Class
 * TODO: Params as Object.
 *
 * @param {Integer} x The x-Position.
 * @param {Integer} y The y-Position.
 * @param width
 * @param height
 * @param destinationVector
 * @param color
 */
function Rectangle(x, y, width, height, destinationVector, color) {
  this.x = x
  this.y = y
  this.heigt = height
  this.width = width
  this.destinationVector = destinationVector
  this.velocityX = 0
  this.velocityY = 0
  this.color = color
  this.render = function() {
    fill(this.color)
    rect(this.x, this.y, this.width, this.heigt)
  }
}
