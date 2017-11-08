float x;
float y;
float amp;
float rate;
float angle;
color c;

void setup() {
  size(800, 800);
      background(7, 50, 70);

  angle=0;
  rate=0.01;
  amp=50;
}

void draw() {


  angle+=rate;
 
  x=-70+ sin(angle)*amp;
  y++;
  
float c= map(y,0,width,0,255);
fill(c,0,0);

for(int i=0; i<50; i++){
  x+=20;
   rect(x, y-10, 10, 10);
  rect(x+20, y-10, 5, 5);
}




//pushMatrix();
//angle++;
//rotate(radians(angle));
//popMatrix();

   
}