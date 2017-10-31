int x = -20;
int y = 0;
float angle = 0;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {  
  float fillGreyscaleColor = map(mouseX, 0, width, 0, 255);
  fill(fillGreyscaleColor);
  float strokeGreyscaleColor = map(mouseY, 0, height, 255, 0);
  stroke(strokeGreyscaleColor);
  ellipse(x, y, 12, 12);

  if (x > width + 20) {
    x = -20;
    y += 20;
  } else {
    x += 20;
  }
}