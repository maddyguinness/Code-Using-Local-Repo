PImage img;
import processing.pdf.*;


void setup() {
  beginRecord(PDF, "everything.pdf");
  size(1200, 675);
  img = loadImage("louis.jpg");
}

void draw() {
 //Stroke();
  for (int i = 0; i < width; i+=8) {
    for (int j = 0; j < height; j+=8) {
      color c = img.get(i, j);
      fill(c);
      ellipse(i, j, frameCount, frameCount);
    }
  }
 
  
}
 void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
 }