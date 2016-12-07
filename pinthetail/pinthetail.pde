import ddf.minim.*;
AudioSample soundl;
AudioSample sound2;
PImage donkey;
  PImage tail;
  PImage blackscreen;
  int x;
  int y;
void setup() {
  Minim minim = new Minim (this);
  soundl = minim.loadSample("yay.wav");
  sound2 = minim.loadSample("boo2.mp3");
 frameRate(10);
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
  
 println(x, y);
if (x > 188 && x < 202 && y > 30 && y < 48 ) {
  soundl.trigger();
  println("Complete");
  
}
else {
  sound2.trigger();
}
  }  
}
//180 197 44 26
