

void setup(){

 size(600,600);
 noStroke();

}

void draw(){
  float x= random(width);
  float y = random(height);
  
  //convert mouseX range (0-600) to 0-255
  float r = map(x,0,600,0,255);
  float m = map(y,0,600,0,255);
  
  fill(r,0,m);
  ellipse(r,m,100,100);
  fill(map(x,0,600,0,255));
}