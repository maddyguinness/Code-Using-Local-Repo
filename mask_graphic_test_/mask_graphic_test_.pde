//PGraphics pg;
PImage img;
PImage imgE;

void setup() {
  size(600, 600);
  //pg = createGraphics(600, 600);
  imgE= loadImage("spotlight mask.png");
  img = loadImage("pic.png");
}

void draw() {
  background(50);
  
  image(img, 0, 0);
 

  image(imgE, mouseX-imgE.width/2, mouseY-imgE.height/2);
}