
//state new object
//defining what the new class/object is 
class Ball {
  float x;
  float y;
  float r;

//create a CONSTRUCTOR with arguments
  Ball(float xPos, float yPos,float radius) {
    x=xPos;
    y=yPos;// x=400 being rewritten by ball function
    r= radius;
  }

//method 
  void display() {
    ellipse(x, y, r*2, r*2);
  }
}