PImage img;
import processing.pdf.*;

void setup() {
    beginRecord(PDF, "everything2.pdf");
  size(1200, 675);
  img = loadImage("louis.jpg");
  background(50,0,70);
}

void draw() {

  noStroke();
  for (int i = 0; i < width; i+=8) {
    for (int j = 0; j < height; j+=8) {
      color c = img.get(i, j);
      fill(c);
      rect(i, j, 5, 5);
    }
  }
}
 void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
 }