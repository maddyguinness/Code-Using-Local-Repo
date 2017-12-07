PImage img, maskImage;
PGraphics pg;

void setup(){
  size(500,500);
  img = loadImage("pic.png");
  maskImage= loadImage("spotlight mask.png");
  img.mask(maskImage);
}

void draw(){
  image(img,0,0);
  image(img,width/2,0);
  
  
}