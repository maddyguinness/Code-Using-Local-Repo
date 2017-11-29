class Spotlight {
color c;
PImage img;
float life;

  //constructor
  Spotlight() {




    life = 60;
  }

  void display() {
    noStroke();
    img = loadImage("School.png");
    color c = get(mouseX,mouseY);
    fill(c);
    ellipse(mouseX, mouseY,20, 20);
   
  }
}