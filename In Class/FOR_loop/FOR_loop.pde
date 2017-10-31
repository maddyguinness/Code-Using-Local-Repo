//FOR LOOP
int angle;

void setup() {
  size(600, 600);

  //variable to track;
  //condition to check;
  //increment?

  //i means iterrator as we will repeat
  //declaring variable in for function means that it only exists within for area
  for (int i=0; i<10; i++) {
    println(i);
  }
}

void draw() {
  background(255);
  angle++;
    for (int i = 0; i<=100; i++) {
    pushMatrix();
    float x = map(i, 0, 50, 0, 600);
    translate(x, 300);
    rotate(radians(angle+ i*1.5));
    line(0, -i, 0, 100);
    popMatrix();
  }

  //for(int i=0; i< width; i+=20){
  //  line(i,400,i,600);
}