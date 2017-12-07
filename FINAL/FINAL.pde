//Timer timer;
Spotlight spotlight;
int state= 0;
PImage scene;
PImage body;

float bodyX = 150;
float bodyY = 565;
boolean computerOn = false;

int number1= 0;
int number2 = 0;
int number3= 0 ;
int number4 = 0;
int y1= 245;
int y2 = 275;
int y3 = 275;

ArrayList<Page> page = new ArrayList<Page>();

void setup() {
  size(1000, 650);
  println(mouseX, mouseY);
  //timer = new Timer(10);
  spotlight= new Spotlight();
}

void draw() {



  //timer.countDown();
  //textSize(20);
  //text(timer.getTime(), 50, 50);
  //spotlight.nextLevel();

  switch (state) {
  case 0:
    drawSceneOne();
    break;
  case 1:
    drawCompScreen1();
    break;
  case 2:
    drawCompScreen2();
  default:
  }

  switch (state) {
  case 0:
    if (mouseX <845 && mouseX>810 && mouseY<440 && mouseY >415) {
      if (mousePressed==true && spotlight.objectFound == true) {
        state =1;
      }
    }
  case 1:
    if (mouseX >80 && mouseX<120 && mouseY>540 && mouseY<585 && mousePressed== true) {
      computerOn = true;
      state=0;
      
    }

  case 2:
    if ( number4 == 1 && number1 == 4 && number2 == 3 && number3==9) {
      if ( mouseX > 440 && mouseX<560 && mouseY > 423 && mouseY<485) {
        if ( mousePressed == true && computerOn == true) {
          state = 2;
        }
      }
    }
  }
  spotlight.display();
}





void drawSceneOne() {

  scene = loadImage("Scene.png");
  pushMatrix();
  scale(1);
  image(scene, -30, -70);
  popMatrix();

  pushMatrix();
  scale(0.48);
  body = loadImage("murderScene.png");
  image(body, bodyX, bodyY);
  popMatrix();
  note = loadImage("Screen Shot .png");

  if (mouseY >75 && mouseY<100 && mouseX >700 && mouseX<740) {
    if (mousePressed == true) {
      pushMatrix();
      scale(0.7);
      image(note, mouseX, mouseY);
      popMatrix();
    }
  }
}


void drawCompScreen1() {
  computerOn = true;
  println(mouseX, mouseY);
  rectMode(CENTER);
  background(0);
  fill(150);
  rect(width/2, height/2, 900, 550);
  fill(255);
  textSize(30);
  text("Please Login", width/2-100, 100);
  text("Security Level One", width/2-130, 140);

  textSize(20);
  text("Ah I should have known, the code must be around here somewhere", 150, 550);

  noStroke();
  rect(100, 560, 40, 40);
  fill(0);
  text("X", 90, 570);

  //code
  if ( mouseX > 325 && mouseX < 355 && mouseY > 250 && mouseY < 278) {
    if (mousePressed == true) {
      number4++;

      if ( number4==10) {
        number4 = 0;
      }
    }
  }

  if ( mouseX > 425 && mouseX < 455 && mouseY > 250 && mouseY < 278) {
    if (mousePressed == true) {
      number1++;
      if ( number1 ==10) {
        number1=0;
      }
    }
  }
  if ( mouseX > 525 && mouseX < 555 && mouseY > 250 && mouseY < 278) {
    if (mousePressed == true) {
      number2++;
      if ( number2 ==10) {
        number2=0;
      }
    }
  }
  if ( mouseX > 625 && mouseX < 655 && mouseY > 250 && mouseY < 278) {
    if (mousePressed == true) {
      number3++;
      if ( number3 ==10) {
        number3=0;
      }
    }
  }



  noStroke();

  triangle(440, y1, 455, y2, 425, y3);
  triangle(540, y1, 555, y2, 525, y3);
  triangle(640, y1, 655, y2, 625, y3);
  triangle(340, y1, 355, y2, 325, y3);

  textSize(50);
  text(number1, 425, 350);
  text(number2, 525, 350);
  text(number3, 625, 350);
  text(number4, 325, 350);

  rect(width/2, 450, 120, 60);
  textSize(20);
  fill(255);
  text("Submit", width/2-20, 450);
}

void drawCompScreen2() {
    background(255);
  for (int i = 0; i < page.size(); i++) {
    Page p = page.get(i);
    p.update();
    p.display();
    
}
page.add(new Page(random(0,600),random(0,600)));
}