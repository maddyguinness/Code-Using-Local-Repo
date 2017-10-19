int x=0;
int y=20;
float red;
float blue;
float green;
float w;

void setup()
{
  size (600, 600);
  background(100);
}

void draw()
{
w= width;
w=(random(5));
  float red = map(x, 0, 600, 0, height);
  float green = map(x, 0, 600, 0, 255);
  float blue = map(y, 0, 600, 0, width);

  //r= (random(4));
  //b=(random(4));

  if (x > width + 20) {
    x = -20;
    y += 20;
  } else {
    x += 20;
  }
  //pushMatrix();
  stroke(mouseY);
  fill(red, blue, green);
  ellipse(x, y, 100, 100);
  ellipse(x, y+200, 100, 100);
  ellipse(x, y+100, 100, 100);


  //popMatrix();

  //rotate(radians(40));
}