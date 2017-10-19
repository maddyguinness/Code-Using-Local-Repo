float switchPosX = 120;
float switchPosY = 500;
float switchRadius = 40;
int x = 0;
int y = 0;
boolean switchState =false;
float angle=0;

void setup() {
  size(600, 600);
 
}

void draw() {
  background(0, 0, 50);
angle++;
  println(mouseX, mouseY);

  if (switchState== true) {
    
    //rotate(radians(angle));
    drawStar(17, 24, 55, 20, 45, 50);
    pushMatrix();
    translate(400, 50);
   drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
    pushMatrix();
    translate(300,200);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
      pushMatrix();
    translate(250,100);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
       pushMatrix();
    translate(100,200);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
          pushMatrix();
    translate(500,120);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
     pushMatrix();
    translate(50,90);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
    pushMatrix();
     translate(150,25);
    drawStar(17, 24, 55, 20, 45, 50);
    popMatrix();
    
    
  } 

  ellipse(switchPosX, switchPosY, switchRadius * 2, switchRadius * 2);


  fill(0, 100, 0);
  ellipse(500, 800, 600, 850);
  ellipse(50, 800, 1000, 800);
  fill(0);
  rect(70, 450, 100, 100);
  fill(200, 0, 0);
  ellipse(switchPosX, switchPosY, switchRadius * 2, switchRadius * 2);
}

void drawStar(int x1, int y1, int x2, int y2, int x3, int y3) {
pushMatrix();
translate(30,40);
rotate(radians(angle));
  fill(255);
  triangle(x1, y1, x2, y2, x3, y3);
  triangle(x1+15, y1-13, x2+10, y2+20, x3-20, y3-5);

  popMatrix();
}
void mousePressed() {
  if (dist(mouseX, mouseY, switchPosX, switchPosY) < switchRadius) {
    switchState = !switchState;
  }
}