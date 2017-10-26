float angle = 0;
void setup() {
  size(800,800);
}

void draw() {
  noStroke();
  fill(255,10);
  rect(0,0,width*2,height*2);
  
pushMatrix();
rect(200,200,200,200);
 rotate(radians(angle));
 angle = angle +1;
 rect(200,200,200,200);
 popMatrix();
 
 
pushMatrix();
strokeWeight(50);
rotate(radians(angle));
fill(mouseX,mouseY,mouseY,150);
translate(150,150);
ellipse(100,500,50,50);
angle = angle +1;
 popMatrix();
 
 ellipse(300,400,100,100);
}