//easing motion 

float xPos, yPos;
float targetX, targetY;

void setup() {
  size(600,600);
}

void draw() {
  targetX=mouseX;
  targetY=mouseY;
  
  
  background(255);
  fill(0);
  ellipse(xPos, yPos, 80, 80);

  xPos+= (targetX-xPos)*0.1;
  yPos+=(targetY- yPos)*0.1;
}