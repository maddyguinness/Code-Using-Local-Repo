class Spotlight {
color c;
PImage img;
float life;

  //constructor
  Spotlight() {




    life = 30;
  }

  void display() {
    img = loadImage("pic.jpg");

   image(img,0,0);
    //color c = img.get(mouseX,mouseY);

    ellipse(mouseX, mouseY,life, life);
    life--;
   
  }
}