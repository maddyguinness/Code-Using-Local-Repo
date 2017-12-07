Spotlight spotlight;

PImage img;
boolean overButton = false;

int state= 0;
int counter;


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

  
  switch (state) {
  case 0:
    drawScene1();
    break;
  case 1:
    drawScene2();
  default:
    break;
  }
  drawCounter();
}



void mousePressed() {
  switch (state) {
  case 0:
    if (passedTime > totalTime) {
      if (overButton) {
        state = 0;
      }
    }
  }
}


void nextLevel() {
  switch (state) {
  case 0:
    if (mousePressed == true) {
      if (mouseX <845 && mouseX > 800 && mouseY <70 && mouseY>40) {

        state=1;
      }
    }
  }
}


void drawScene1() {

  
    spotlight.display();
 
}

void drawScene2() {
  background(50);
}