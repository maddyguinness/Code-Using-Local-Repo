float angle= 0;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);


  for (int x= 1; x<800; x+=30) {
    for (int y=0; y<height; y+=10) {
      pushMatrix(); 

      float r = map(x, 0, width, 0, 255); 
      float g= map(y, 0, height, 0, mouseY);
      float b= map(x, 0, height, 0, mouseX);

      if (y>400 && y<600) {
        noStroke();
      }


      fill(r, g, b);
      rect(x, y, 200, 200);
      popMatrix();
    }
  }
}