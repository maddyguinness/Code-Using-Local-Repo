Ball[] b= new Ball[10];
int n=0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i=0; i<n; i++) {
    b[i].update();
    b[i].display();
  }
}

void mousePressed() {
  b[n] = new Ball(mouseX, mouseY, 50);
  if (n < b.length-1) {
    n++;
  } else {
    n=0;
  }
}