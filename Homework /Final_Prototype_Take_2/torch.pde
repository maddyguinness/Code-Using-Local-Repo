//what I am trying to do is make it so the image only appears within the ellipse 
//and the rest of the screen is black
//also I have no idea why there are two counters being drawn!

class Spotlight {
  color c;
 
  float life;

  //constructor
  Spotlight() {

 life = 10;
  }

  void display() {
   
    ellipse(mouseX, mouseY, life, life);
    life--;
  }
}