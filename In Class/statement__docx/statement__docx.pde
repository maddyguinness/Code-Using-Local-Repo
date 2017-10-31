//sorry i know this isn't great, I found Arrays the hardest topic so far,
//I will go to tutoring next week as i didnt have time this week! Sorry

int square = 1000;
int i;
float x[] =new float[square];
float y[]= new float [square];
float dx[]= new float [square];
float dy[]= new float [square];
float r;
float b;
float g;

void setup() {
  size(1000, 1000);
  background(200, 0, 100);
 rectMode(CENTER);
 
   for (int i =0; i< square; i++){
    x[i] = random(1,1000);
    y[i]= random(1,1000);
    //dx[i]= random(1,1000);
    //dy[i]= random(1,1000);
    
  }
}

void draw() {
  float p = int(random(40));
  float c = int(random(3));
  
   for (int i = 0; i < square; i++) {
    x[i] += dx[i];
    y[i] += dy[i];

 
   if (x[i] > width + 20) {
    x[i] = -20;
    y[i] += 20;
  } else {
    x[i] += 20;
  } 
  if (y[i]>1000){
    y[i]=-20;
  } else if (y[i]<0){
    y[i]=y[i]+20;
  }

  if (p<10) {
    y[i] = y[i]-100;
  } else if (p>10 && p<20) {
    x[i] = x[i]+100;
  } else if ( p>20 && p<30) {
    y[i]= y[i]+100;
  } else if (p>30 && p<40) {
    x[i] = x[i]-100;
  }
  
  if (p<10) {
    dy[i] = dy[i]-400;
  } else if (p>10 && p<20) {
    dx[i] = dx[i]+400;
  } else if ( p>20 && p<30) {
    dy[i]= dy[i]+400;
  } else if (p>30 && p<40) {
    dx[i] = dx[i]-400;
  }
  
  if (dx[i] > width + 20) {
    dx[i] += -20;
    dy[i] += 20;
  } else {
    dx[i] += 20;
  } 
  if (dy[i]>1000){
    dy[i]=dy[i]-20;
  } else if (dy[i]<0){
    dy[i]=y[i]+20;
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

  fill(r, g, b);
  rect(x[i], y[i], 60,30);
fill(200,0,0);

ellipse(dx[i], dy[i],50,50);


   }
}