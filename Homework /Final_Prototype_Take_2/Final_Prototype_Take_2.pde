Spotlight spotlight;


int state= 0;
int counter= 30;
int buttonPosX = width/2-60;
int buttonPosY = height/2+20;
int buttonWidth=120;
int buttonHeight=40;

int savedTime;
int totalTime = 30;

void setup() {
  background(0);
  size(950, 600);
  savedTime = second();
  spotlight = new Spotlight();

}


void draw() {
  text("Find the Sports Team Photo", 200, 50);

  

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

    if (dist(mouseX, mouseY, buttonPosX, buttonPosY)<buttonWidth/buttonHeight) {
      if ( mousePressed == true);
      state = 0;
    }
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