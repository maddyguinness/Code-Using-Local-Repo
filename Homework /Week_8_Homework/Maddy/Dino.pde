
class Dino {
  int x;
  int y;
  PImage dinoImg;
  int r;

  Dino() {
    dinoImg=loadImage ("dino.png");
    x=width/2;
    y=height/2;
  }

  void display() {

    dinoImg.resize(0, 500);
    image(dinoImg, mouseX, mouseY);
  }

  void pixel() {

    int widthStep = 5;
    int heightStep = 10;
    image(dinoImg, x+=50, y);
    for (int i = 0; i < width; i+=widthStep) {
      for (int j = 0; j < height; j+=heightStep) {
        color c = dinoImg.get(i, j);
        fill(c);
        ellipse(i, j, 15, 15);
      }
    }
  }

  void move() {
    image(dinoImg, x+=50, y);
  }
}