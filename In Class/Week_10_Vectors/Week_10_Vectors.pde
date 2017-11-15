//vectors - a quantity having direction as well as magnitude, 
//especially as determining the position of one point in space relative to another.

PVector location;
PVector speed;
float x;
float y;

void setup(){
  size(500,500);
  
  location= new PVector(100,100);
  speed = new PVector(1,3,3);
}

void draw(){
  ellipse(location.x,location.y,20,20);
  
  location=location.add(speed);
  
  if((location.x>width)||(location.x<0)){
    speed.x=speed.x*-1;
  }
  if ((location.y>height)||(location.y<0)){
    speed.y=speed.x*-1;
  }
  
    
}