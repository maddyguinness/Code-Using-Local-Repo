Spotlight spotlight;

 PImage img;
 boolean overButton = false;

int state= 0;
int counter;
int buttonPosX = width/2;
int buttonPosY = height/2;
int buttonWidth=120;
int buttonHeight=40;

int passedTime;
int savedTime;
int totalTime = 10;

void setup() {
  background(0);
 rectMode(CENTER);
  size(950, 600);
  savedTime = second();
  spotlight = new Spotlight();

}


void draw() {
  text("Find the Sports Team Photo", 200, 50);

   img = loadImage("pic.jpg");
    pushMatrix();
    scale(0.5);
    image(img, 0, 0);
    //color c = img.get(mouseX,mouseY);
    popMatrix();

  switch (state) {
  case 0:
    drawLevel1();
    break;
  case 1:
    drawLevel2();
    break;
  case 2:
    drawLevel3();
  default:
    break;
  }
      drawCounter();
}

void drawCounter() {

  int passedTime = second()- savedTime;
  textSize(30);
  text(passedTime, 30, 50); 


  if (passedTime > totalTime) {

    text("Game Over", width/2-80, height/2);
    fill(0);
    rect(buttonPosX, buttonPosY, buttonWidth, buttonHeight);
    fill(255);
    textSize(20);
    text("Restart?", width/2-40, height/2+50);

    //if (mousePressed == true){
    
      

    }
    }
  void mousePressed(){
      if(passedTime > totalTime){
        if(overButton){
   state = 0;
      }
  }
  }

boolean overButton(int x, int y, int width, int height){
  if(mouseX>=x && mouseX <= x + width &&
  mouseY >= y && mouseY<= y + height){
  return true;
}else{
  return false;
}
}


void drawLevel1() {
  
 if(mousePressed == true){
    spotlight.display();

  }
}

void drawLevel2(){
  
}

void drawLevel3(){
  
}