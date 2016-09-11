void setup() {
  size(500, 500);
    background(200, 200, 200);
  noStroke();
  fill(255, 0, 0);
  ellipse(150, 200, 150, 150);
  fill(255, 0, 0);
  ellipse(212, 200, 150, 150);
  fill(0, 255, 0);
  rect(176, 103, 12, 32);
}
void draw() {

 println(mouseY, mouseX);
  if(mousePressed){
    fill(200, 200, 200);
  ellipse(mouseX, mouseY, 50, 50);
  
  
  }
}

