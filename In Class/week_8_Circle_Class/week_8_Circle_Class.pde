Ball b;
Ball bb;
// same as int a, ball is new class

//b has got no value as we must assign it 

void setup() {
  size(800, 800);
  b = new Ball(random(width), random(height), random(100));
  //() Ball was automatically made a funtion (CONSTRUCTOR)

}

void draw() {

  b.display();
  bb.display();
}