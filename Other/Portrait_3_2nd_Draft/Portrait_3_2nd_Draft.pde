// takes a little while to load...
PImage img;
import processing.pdf.*;

void setup() {
    beginRecord(PDF, "everything2.pdf");
  size(1200, 675);
  img = loadImage("louis.jpg");
  //noStroke();
}

void draw() {
  background(255);

  int k= 5;
  int l=2;

  for (int i = 0; i < width; i+=l) {
    for (int j = 0; j < height; j+=k) {
      color c = img.get(i, j);
      fill(c);

      ellipse(i, j, 100, 100);
    }
  }
}
 void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
 }