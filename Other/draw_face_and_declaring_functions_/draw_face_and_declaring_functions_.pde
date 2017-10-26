void setup () {
  size(800, 800);
}

void draw() {
  drawFace(width/2, height/2);
} 

void greyScaleCircle(float x, float y, float d) {
  ellipse(x, y, d, d);
}

//supplying arguments/ parametres to a function  e.g.

//declaration of a function ; void, function name, (arguments), {Behaviour}
//call them use function function name (arguments)
void drawFace(float x, float y) {
  float faceMiddleX = x;
  float faceMiddleY = y;
  float eyeRightX = faceMiddleX + 50;
  float eyeRightY = faceMiddleY - 10;
  float eyeLeftX = faceMiddleX - 50;
  float eyeLeftY = faceMiddleY -10;
  float reyebrowX = eyeRightX;
  float reyebrowY = eyeRightY - 10;
  float leyebrowX = eyeLeftX;
  float leyebrowY = eyeLeftY - 10;
  float faceHeight = 300;
  float faceWidth = 200;

  //face
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);


  //ellipse(eyeRightX, eyeRightY, 40, 10);
  ellipse(eyeRightX, eyeRightY, 40, 30);
  ellipse(eyeLeftX, eyeLeftY, 40, 30);

  ellipse(reyebrowX, reyebrowY + mouseY * 0.1, 40, 10);
  ellipse(leyebrowX, leyebrowY, 40, 10);
  //ellipse(500, 400, 50, 70);
  //ellipse(300, 400, 50, 70);
}