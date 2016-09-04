 void setup() {
  size(800, 800);
 }

void draw() {
 
   //2. make it a nice color

   //3. if the mouse is pressed, fill the circle with a different color          
if(mousePressed){
  fill(random(255),random(255),random(255));
}
 else{
 fill(255, 0, 0);
 }
   //1. draw an ellipse
ellipse(100, 100, 100, 100);
text("DavidIsCool", mouseX, mouseY);
 
}
// Copyright Wintriss Technical Schools 2013


