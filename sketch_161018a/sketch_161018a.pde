void setup () {
  size (1500, 1500);
  PImage face = loadImage ("face.jpeg");
  image (face, 0, 0);
  face.resize (1000, 1000);
  int red = 256;
  int green = 153;
}
void draw () {
  text("ZOMBIE", mouseX, mouseY);
  if (mouseX %2==0) {
    fill (0, 255, 0);
  } else {
    fill (255, 0, 0);
  }
  ellipse (650, 500, 200, 200);
  ellipse (975, 500, 200, 200);
} 



