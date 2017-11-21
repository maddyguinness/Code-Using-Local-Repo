Heart myHeart;

void setup() {
  size(500, 500);
  background(0);
  myHeart = new Heart();
}

void draw() {
  myHeart.display() ;

}

    class Heart {

    PImage img;


    Heart() {
img = loadImage("HeartPixel.png");
 
    
    }
      void display() {
        if (mousePressed) {
          image(img, mouseX, mouseY,20,20);
        }
      }
    }
  