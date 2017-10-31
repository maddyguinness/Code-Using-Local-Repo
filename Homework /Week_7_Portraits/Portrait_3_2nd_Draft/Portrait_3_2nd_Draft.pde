// takes a little while to load...
PImage img;
import processing.pdf.*;
int i=20;
int c;

void setup() {
  beginRecord(PDF, "3.pdf");
  size(1200, 675);
  img = loadImage("louis.jpg");
  noStroke();
}

void draw() {
  map(c,0,255,0,600);
  background(c);

  int widthStep = 20;
  int heightStep = 20;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      fill(c);
      ellipse(i, j, 15, 15);
    }
  }
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}