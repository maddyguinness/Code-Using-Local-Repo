float angle= 0;
float x=0; //defining variable to start and then move onwards from with rect
float h = 0;
float w = 0;

//println
//DE BUGGER : break point - click on the side bar number- stops running the programme at chosen breakpoint

void setup() {
  size (500, 500);
  rectMode(CENTER); // CENTERS RECTANGLE FROM THE BEGINNING
}

void draw() {
  // move entire canvas +250 on x and y OR canvas moves with mouseX and Y 
  translate(x, height/2);
  x=x+1; //moves starting point 1 everytime changing the value of x increasingly
  // radians is degree of rotation, rotated canvas not rectangle //<>//
  angle=angle +1; //every frame it will rotate 1 degree as it is in draw 
  rotate(radians(angle));
  rect(0, 0, w, h); // assigning width and height as w and h
;
  w = w+100; // increasing width each frame
  h = h+1; //increasing height each time
  // line(0,0,0, height);
  //line(0,0,width,0);
}