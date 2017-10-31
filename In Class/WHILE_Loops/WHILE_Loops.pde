// while most commonly used to get something ready that takes time 

void setup() {
  size(600, 600);

  //int n= 0;
  //while(n<10){
  //  n++;
  //  println(n);
  //}
}

void draw() {
  background(255);
  //do this thing ten times and change the value of one of these things 
  // dont repeat yourself, make the computer do it 
  int x= 50;
  int y= 50;

  while (x<600) {
    while (y<600) {
      float d = dist(x,y,mouseX,mouseY);
      fill(map(x,0,600,0,255), map(y,0,600,0,255), 300);
      ellipse(x, y, d, d);
      y += 50;
    }
    // y loops until it hits 600
    //bring y back to 50 and then start on x loop
    y= 50;
    x+=50;
  }
}