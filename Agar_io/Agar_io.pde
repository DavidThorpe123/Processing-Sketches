float midx;
float midy;
float currentx;
float currenty;
float speed;
float minGridX = -500;
float maxGridX = 500;
float minGridY = -500;
float maxGridY = 500;
float gridLines = 25;
float clickx;
float clicky;
boolean clicked;
void setup() {
  size(500, 500); 
  midx = width/2;
  midy = height/2;
  currentx = midx;
  currenty = midy;
  speed = 100;
}
void checkBoundries() {
  if (currentx < minGridX) {
    currentx = minGridX;
  }
  if (currentx > maxGridX) {

    currentx = maxGridX;
  }
  if (currenty < minGridY) {

    currenty = minGridY;
  }
  if (currenty > maxGridY) {
    currenty = maxGridY;
  }
}
void drawGrid(float shiftx, float shifty) {

  for (float x = minGridX; x <= maxGridX; x+= gridLines) {
    line(x + shiftx, minGridY + shifty, x + shiftx, maxGridY + shifty);
  }
  for (float y = minGridY; y <= maxGridX; y+= gridLines) {
    line(minGridX + shiftx, y + shifty, maxGridX + shiftx, y + shifty);
  }
}
void draw() {
  checkBoundries();
  //currentx = mouseX;
  //currenty = mouseY;
  float shiftx = midx - currentx;
  float shifty = midy - currenty;
  if (clicked == true) {
    moveTo(shiftx, shifty);
    
  }
  background(70);
  drawGrid(shiftx, shifty);
  ellipse(midx, midy, 25, 25);  

  println(currentx + ", " + currenty);
}
void keyPressed() {
  if (keyCode == UP) {
    currenty -= speed;
  }
  if (keyCode == DOWN) {
    currenty += speed;
  }
  if (keyCode == LEFT) {
    currentx -= speed;
  }
  if (keyCode == RIGHT) {
    currentx += speed;
  }
}
void mouseReleased() {
  println("Mouse Clicked " + mouseX + mouseY);
  clickx = currentx  - (midx - mouseX);
  clicky = currenty - (midy - mouseY);
  clicked = true;
}
void moveTo(float shiftx, float shifty) {
  if(dist(currentx, currenty, clickx, clicky) <= speed) {
     currentx = clickx;
     currenty = clicky;
  } else {
    float rise = clickx - currentx;
    float run = clicky - currenty;
    float angle = atan(run/rise);
    float deltax = speed * cos(angle);
    if((run > 0 && deltax < 0) || (rise<0 && deltax>0)) {
      deltax = -deltax;
    }
    float deltay = speed * sin(angle);
    if((rise > 0 && deltay < 0) || (run<0 && deltay>0)) {
      deltay = -deltay;
    }
    currentx += deltax;
    currenty += deltay;
    
  }
  
}