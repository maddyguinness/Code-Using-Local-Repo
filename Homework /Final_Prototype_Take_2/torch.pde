//what I am trying to do is make it so the image only appears within the ellipse 
//and the rest of the screen is black
//also I have no idea why there are two counters being drawn!
PImage imgE;

class Spotlight {
  color c;

  float life;

  //constructor
  Spotlight() {

    life = 10;
  }

  void display() {
    imgE= loadImage("spotlight mask.png");
    pushMatrix();
scale(5);
    image(imgE, mouseX-imgE.width-100, mouseY-imgE.height-100);
    popMatrix();
    text("Find the Sports Team Photo", 200, 50);
  }
}  