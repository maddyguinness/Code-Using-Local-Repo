int square= 1000;
int i;
int[] myArray = new int [50];
//float x[]= new float[square];
//float y[]=new float[square];
//float dx[]=new float[square];
//float dy[]=new float[square];
float r;
float b;
float g;

void setup() {
  size(1000, 1000);
  background(200, 0, 100);
  //rectMode(CENTER);
  
  for (int i =0; i<myArray.length; i++);{
    myArray[i] = int(random(1000));
    println(myArray);
  }

  //for (int i=0; i<square; i++) {
  //  x[i]= random(1, 1000);
  //  y[i]= random(1, 1000);
  //  dx[i]= random(1, 600);
  //  dy[i]=random(1, 600);
  //}
}

void draw() {
  //float p = int(random(40));
  background(50);
  float c = int(random(3));

  //for (int i=0; i<square; i++) {
  //  x[i] += dx[i];
  //  y[i] += dy[i];

  //  if (x[i] > width-dx[i] || x[i] <dx[i]) {
  //    dx[i]= -dx[i];
  //  }
  //  if (y[i] > height - dy[i] || y[i] < dy[i]) {
  //    dy[i]= -dy[i];
  //  }

for (int i=0; i<myArray.length; i++);{
  fill(r, g, b);
  rect(myArray[i], myArray[i], 50,50);
}
    //rect(x[i], y[i], dx[i], dy[i]);
  

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
}