// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
  import javax.swing.*;
void setup() {
  PImage waldo = loadImage("atthebeach.jpg"); // 2. Change this to match your file name.
  size(waldo.width, waldo.height);
  image(waldo, 0, 0);

}

void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
  // println("X: " + mouseX + " Y: " + mouseY); 
println(mouseX, mouseY);
  // 4. If the mouse is on Waldo, print “Waldo found!”
if(mousePressed && mouseX >= 495 && mouseX <= 520 && mouseY >= 270 && mouseY <= 310){
println("Waldo Found");
playWoohoo();
JOptionPane.showMessageDialog(null,"Waldo Found");
  // 5. If Waldo is found, also use the method below to play “Woohoo”

}
  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”
else if(mousePressed){
  
playDoh();
}
}

void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
  doh.stop();
  doh.trigger();
}


import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");



