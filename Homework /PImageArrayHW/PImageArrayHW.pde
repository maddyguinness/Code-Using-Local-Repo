import processing.pdf.*;
int IMG_NUM = 6;
PImage[] emoji = new PImage[IMG_NUM];
int nextEmoji = 0;

void setup() {
  beginRecord(PDF, "Array.pdf");
  background(255);
  size(500, 500);
  imageMode(CENTER);

  for ( int i = 0; i < emoji.length; i++) {
    emoji[i] = loadImage("emoji"+i+".jpeg");
  }
}

void draw() {

  image(emoji[nextEmoji], width/2, height/2, 500, 500);

  if (frameCount % 10 ==0) {

    nextEmoji++;
  }

  if (nextEmoji ==6) {
    nextEmoji = 0;
  }
}
void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}