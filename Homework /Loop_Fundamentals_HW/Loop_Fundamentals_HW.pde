void setup() {
}

void draw() {
  //1
  int x=0;
  while (x<100) {
    x+=10;
    println(x);
  }

  //2
  int y=0;
  while (y>-10) {
    y-=1;
    println(y);
  }

  //3
  for (int z=10; z>0; z--) {
    println(z);
  }

  //// infinite while loop
  //int w =5;
  //while (w<10) {
  //  w--;
  //  println(w);
  //}

  //// infinite for loop
  //for (int f= 0; f<1; f+=0) {
  //  println(f);
  }