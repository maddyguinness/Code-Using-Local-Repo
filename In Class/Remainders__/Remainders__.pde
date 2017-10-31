float[] x= new float[25];
float[] y= new float[25];

void setup() {
  size(800, 800);

  //modulo % = remainder
  // 10/0 = 0, remainder is 10
  // 5/3 = 1, remainder is 2

  //0/5 = r0;
  //  2/5 = r2
  //  3/5 = r3
  //  4/5 = r4
  //  5/5 = r0
  //  6/5 = r1
  //  7/5 = r2
  //  8/5 = r3


  for (int i=0; i<25; i++) {
    x[i] = 100+ (i% 5)*50;
    y[i]= 100+ (i /5)*50;
  }
}

void draw() {
  for (int i=0; i<25; i++) {
    ellipse(x[i], y[i], 50, 50);
  }
}