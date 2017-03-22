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
void setup() {
 size(500, 500); 
  midx = width/2;
  midy = height/2;
currentx = midx;
currenty = midy;
  speed = 10;
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
  void drawGrid() {
     for (float x = minGridX; x <= maxGridX; x+= gridLines) {
       line(x - currentx, minGridY - currenty, x - currentx, maxGridY - currenty);
       
     }
     for (float y = minGridY; y <= maxGridX; y+= gridLines) {
       line(minGridX - currentx, y - currenty, maxGridX - currentx, y - currenty);
     }
      
   }
void draw() {
  checkBoundries();
  background(70);
  drawGrid();
ellipse(midx, midy, 25, 25);  
  
  println(currentx + ", " + currenty);
  
}
void keyPressed(){
  if (keyCode == UP) {
  currenty += speed; 
  }
  if (keyCode == DOWN) {
    currenty -= speed;
  }
  if (keyCode == LEFT) {
    currentx += speed;
  }
   if (keyCode == RIGHT) {
    currentx -= speed; 
   }
 
}