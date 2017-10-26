PImage img;
import processing.pdf.*;

void setup() {
  beginRecord(PDF, "1.pdf");
  size(1200, 675);
  img = loadImage("louis.jpg");
}

void draw() {
background(0,100,100);
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