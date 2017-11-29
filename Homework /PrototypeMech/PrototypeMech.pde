Heart myHeart;
Skull skull;


void setup() {
  size(500, 500);
  background(0);

  myHeart = new Heart();
  skull = new Skull();
}

void draw() {
  myHeart.display() ;
  skull.display();;

}