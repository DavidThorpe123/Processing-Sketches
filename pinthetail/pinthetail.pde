PImage donkey;
  PImage tail;
  PImage blackscreen;
  int x;
  int y;
void setup() {
 
  size(220, 157);
 
  tail = loadImage ("tail.png");
   donkey = loadImage("donkey.jpg");
   blackscreen = loadImage ("blackscreen.png");
   background(donkey);
   tail.resize(100, 100);
   blackscreen.resize(220, 157);
   background(blackscreen);
  
  
  
}
void draw() {
  rect(0, 0, 45, 45);
  println(mouseX, mouseY);
  if (mouseX >0 && mouseX <45 && mouseY >0 && mouseX <45) {
 background(donkey);
  
  
}
else {
  background(blackscreen);
}
  
  image(tail, x-10, y-20);
  if (mousePressed) {
 x = mouseX;
 y = mouseY;
  }
if (x == 188 && y == 42) {
  println("Comeplete");
  
}
  
}
//188 41
