float x;
float y;
float r;
float b;
float g;

void setup() {
  size(1000, 1000);
  background(200, 0, 100);
 rectMode(CENTER);
}

void draw() {
  float p = int(random(40));
  float c = int(random(3));
  
   if (x > width + 20) {
    x = -20;
    y += 20;
  } else {
    x += 20;
  } 
  if (y>1000){
    y=-20;
  } else if (y<0){
    y=y+20;
  }

  if (p<10) {
    y = y-100;
  } else if (p>10 && p<20) {
    x = x+100;
  } else if ( p>20 && p<30) {
    y= y+100;
  } else if (p>30 && p<40) {
    x = x-100;
  }

  if (c==3) {
    r=200;
    g=0;
    b=0;
  } else if (c==2) {
    r=150;
    g=50;
    b=250;
  } else if (c==1) {
    r=0;
    g=50;
    b=205;
  }

if (x<300) {
  fill(100);
 ellipse(400,400,100,100);
} else if (y>300){
  fill(0);
  ellipse(100,100,300,300);
} else if (x>800){
  fill(50);
  ellipse(600,600, 200,200);
} else if (y<200){
  fill(150);
  ellipse (900,800,400,400);
} else if (x>750){
  fill(200);
  ellipse(300,300,50,50);
}

  fill(r, g, b);
  rect(x, y, 100,100);
}