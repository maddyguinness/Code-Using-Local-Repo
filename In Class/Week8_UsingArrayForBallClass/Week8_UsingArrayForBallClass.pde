Ball[] b= new Ball[15];

//could have made more like Ball bb = new Ball;
//Used an array to draw 100 balls

// same as int a, ball is new class

//b has got no value as we must assign it 

void setup() {
  size(800, 800);
  for( int i=0; i<b.length; i++){
  b[i] = new Ball(random(width), random(height), random(50));
  
  //() Ball was automatically made a funtion (CONSTRUCTOR)
}
}

void draw() {
background(0);
for( int i=0; i<b.length; i++){
  //b[i].checkMouse();
  //inside for loop write another to affect each ball individually
  
 for( int j=i+1; j<b.length; j++){
   if(i!=j){
   b[i].checkBallCollision(b[j]);
   //(b[j].x, b[j].y, b[j].r);
   // [j] is whatever ball is being looked at at the time 
 }
 }
  b[i].display();
  b[i].update();
}
}