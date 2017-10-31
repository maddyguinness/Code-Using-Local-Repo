Dino dino;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  dino = new Dino();
  }

void draw() {
  background(100,50,100);
  println(mouseX,mouseY);

if (mousePressed == true) {
 
     dino.pixel();
     dino.move();

  }else{
    dino.display();
}
}