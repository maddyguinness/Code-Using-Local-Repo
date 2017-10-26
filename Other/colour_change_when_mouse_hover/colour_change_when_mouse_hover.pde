void setup() {
  size(600, 600);
  rectMode (CORNER);
}

void draw() {
  background(220);
  
  if (mouseX  >  125 && mouseX< 475 &&
    mouseY > 200 && mouseY <400) {
    fill(random(255), random(255), random(255));
  } else {
    fill(255);
  }
  
  //add x or y value to the corresponding size e.g. 125 + 350 =475
  rect(125, 200, 350, 200);
 



//float getDistance(float x1, float y1,float x2, float y2){
// float value; 
// float dx= abs(x1-x2);
// float dy= abs(y1-y2);
// float dx2 = pow(dx, 2);
// float dy2 - pow(dy, 2);
// value = sqrt (dx2 + dy2);
 // return value;
 
 //instead use dist()
}