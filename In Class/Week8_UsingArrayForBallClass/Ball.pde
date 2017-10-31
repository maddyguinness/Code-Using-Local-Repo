
//state new object
//defining what the new class/object is 
class Ball {
  float x;
  float y;
  float r;
  float dx;
  float dy;
  color c;

  //create a CONSTRUCTOR with arguments
  Ball(float xPos, float yPos, float radius) {
    x=xPos;
    y=yPos;// x=400 being rewritten by ball function
    r= radius;
    dx = random(-5, 5);
    dy= random(-5, 5);
    c = color(240);
  }

  //method 
  void display() {
    fill(c);
    ellipse(x, y, r*2, r*2);
    c=color(240);
  }


void update(){
  //make them bounce back
  if( x<r|| x> width-r){
   dx *= -1; 
  }
  if( y<r|| y> height-r){
   dy *= -1; 
  }
  x+= dx;
  y+=dy;
}

//chnge colour based on if mouse is over ellipse
void checkMouse(){
  if(dist(x,y,mouseX,mouseY) <r){
   c= color(250,0,200); 
  }else{
    c= color(100);
}
}
//check where other balls are for each ball in the loop
void checkBallCollision(Ball other){
//(float otherx, float othery, float otherr){
  if (dist(x,y,other.x,other.y)<r+other.r){
    changeColour(color(200,200,0));
    other.c =color(0,255,150);
  }
  
}

void changeColour(color newColour){
  c= newColour;
}

}