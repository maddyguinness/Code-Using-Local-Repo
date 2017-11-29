 class Heart {

    PImage img;


    Heart() {
img = loadImage("HeartPixel.png");
 
    
    }
      void display() {
        if (mousePressed) {
          image(img, mouseX-10, mouseY-10,20,20);
        }
      }
 }
 