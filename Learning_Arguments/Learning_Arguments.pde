void setup() {
  size(800,800);
}

void draw() {
drawCircle(100,200,200,50);
drawCircle(300,400,400,100);
drawCircle(500,500,100, 50);
}

//declaring argument so you can change parameters in draw circle function
//flexible functions accept arguments
void drawCircle(float x, float y, float d, int c) {
  fill(c);
   ellipse(x,y,d,d); 
   // must give x and y variables to ellipse itself 
}