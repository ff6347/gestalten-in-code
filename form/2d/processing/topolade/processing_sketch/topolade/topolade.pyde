"""
topolade.
@topada

Jonas KOEPFER 2015
"""


# PROGRESSIVE MODE
# r = 1 #uncomment (r) to increase lines and zigs amount each redraw(); 
# don't forget the last (r) occurance in the redraw() function

def setup():
    size(600,600,P3D)
    noLoop()
    
def draw():
    #[0] frame setup
    background(0)
    
    # basic color arrangement
    noFill()
    strokeWeight(2)
    stroke(255)
    
    # parameters
    lines = 5 #+r # amount of horizontal lines
    zigs = 5 #+r  # amount of zigs (and zags) of those horizontal lines
    
    areas = (lines - 1) * zigs
    lines_array = list()
    
    #[1] draw zzlines
    # this loop draws all zig-zag lines
    for i in range(lines):
        lines_array.append(zzline(i,lines,zigs))
        
    #[2] connect zigs vertically
    # this cascaded loop connects all zig-zag lines vertically
    for j in range(len(lines_array)-1):
        for k in range(len(lines_array[j])-2):
            line(lines_array[j][k+1][0],lines_array[j][k+1][1],lines_array[j+1][k+1][0],lines_array[j+1][k+1][1])
    
    #[3] crosshatch areas
    #setup lines texture
    l_texture = loadImage("lines.png")
    textureMode(IMAGE);
    
    a = list() #store all crosshatched areas into 2d List
    c = int(random(2)) #starting offset
    for l in range(lines-1):   
        c = 1 if c == 0 else 0
        for m in range(1+c,zigs+1,2):            
            beginShape()
            texture(l_texture)
            vertex(lines_array[l][m-1][0],lines_array[l][m-1][1],0,0)
            vertex(lines_array[l][m][0],lines_array[l][m][1],0,0)
            vertex(lines_array[l+1][m][0],lines_array[l+1][m][1],0,120)
            vertex(lines_array[l+1][m-1][0],lines_array[l+1][m-1][1],0,120)
            endShape(CLOSE)
            a.append([l,m])
   
    #[4] the sun    
    s = int(random(areas/2)) #random area
    sun_area = a[s] #this random area from crosshatched areas
    
    l = sun_area[0]
    m = sun_area[1]
    
    m = m - 1 if m == zigs else m + 1 # area left or right
    
    #midpoint of both diagonales
    mid_alpha = [float((lines_array[l][m-1][0]+lines_array[l+1][m][0])/2),float((lines_array[l][m-1][1]+lines_array[l+1][m][1])/2)]
    mid_beta  = [float((lines_array[l][m][0]+lines_array[l+1][m-1][0])/2),float((lines_array[l][m][1]+lines_array[l+1][m-1][1])/2)]
        
    #midpoint of both midpoints
    sun_center = [float((mid_alpha[0]+mid_beta[0])/2),float((mid_alpha[1]+mid_beta[1])/2)] 
    
    sun_size = dist(mid_alpha[0],mid_alpha[1],mid_beta[0],mid_beta[1])
    
    fill(0)
    stroke(255)
    
    ellipse(sun_center[0],sun_center[1], sun_size, sun_size)


    #[5] take screenshot
    h = hour()
    mi = minute()
    s = second()
    y = year()
    mo = month()
    d = day()
    timestamp = str(y) + str(mo) + str(d) +"-" + str(h) + str(mi) + str(s) 
    saveFrame("klee-" + timestamp +".png")
    
# [6] functions
# [A] zzline (referenced in [1])
# this function draws one zig-zag line
def zzline(i,lines,zigs):
    
    last_shift_h = 0
    line_array = list()
    
    max_shift_w = width / (lines * 2)
    max_shift_h = height / (lines * 2)
    start_h  = (i + 0.5 ) * (height / lines)
    
    beginShape()
    for j in range(0, width+1, width / zigs):
        
        shift_h = random(max_shift_h * -1, max_shift_h)
        shift_w = random(max_shift_w * -1, max_shift_w)
        
        # [A.1] Vertical Zig-Zag
        # make the zig really zag – nicely up and down
        if last_shift_h < 0 and shift_h < 0 or last_shift_h > 0 and shift_h > 0:
           shift_h *= -1
               
        last_shift_h = shift_h
        y = int(start_h+shift_h)
    
        # [A.2] Horizontal Zig-Zag
        # shift the zig left and right, but not on start or finish
        if j != 0 and j < width:
            x = int(j + shift_w)
        else:
            x = int(j)
        
        vertex(x,y)
        #append the current vertex to the line
        line_array.append([x,y])
        
        
    endShape()
    
    # return the completed line
    return line_array

def mousePressed():
  #global r
  #r += 1
  #r = 1 if r > 100 else r
  redraw()
