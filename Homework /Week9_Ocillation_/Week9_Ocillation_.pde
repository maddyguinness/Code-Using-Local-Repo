float x;
float y;
float amp;
float rate;
float angle;
color c;

void setup() {
  size(800, 800);
      background(7, 50, 70);

  angle=20;
  rate=0.1;
  amp=500;
}

void draw() {

stroke(255);
  angle+=rate;
  x=width/2+ sin(angle)*amp;
  y=50;
  y++;

color(map(c,0,255,0,height));
fill(c);
angle++;
rotate(radians(angle));
    rect(x, y, 800, 50);
}