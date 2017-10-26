int faceMiddleX=400;
int faceMiddleY=400;
int eyeRightX = faceMiddleX + 50;
int eyeRightY = faceMiddleY - 10;
int eyeLeftX = faceMiddleX - 50;
int eyeLeftY = faceMiddleX -10;
int eyebrowX = eyeRightX;
int eyebrowY = eyeRightY - 20;
int faceHeight = 300;
int faceWidth = 200;

void setup() {
  size(800, 800);
  //face
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  //eyes
  ellipse(eyeRightX, eyeRightY, 40, 30);
  ellipse(eyeLeftX, eyeLeftY, 40, 30);
  //eyebrows
  ellipse(eyebrowX, eyebrowY, 40, 10);
  ellipse(eyebrowX/2, eyebrowY/2, 40, 10);
  //nose
  //triangle(400, 200, 200,600, 300, 600);
  //mouth
  //ellipse(400, 600, 200, 100);
  //ears
  ellipse(500, 400, 50, 70);
  ellipse(300, 400, 50, 70);
  //single line for hair
}

//HARD CODING all our variables
//use variables to parameterize this drawing

void draw() {
// command t to auto format it)
  //refresh bakground 
  background(240);
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  ellipse(eyebrowX, eyebrowY, 40, 10);
  ellipse(eyebrowX/2, eyebrowY/2, 40, 10);
    ellipse(eyeRightX, mouseY * 1, 40, 10);
    ellipse(eyeRightX, eyeRightY, 40, 30);
  ellipse(eyeLeftX, eyeLeftY, 40, 30);
  ellipse(500, 400, 50, 70);
  ellipse(300, 400, 50, 70);
}
  
  //draw face FUNCTION
  //function syntax: void, name of parenthesis (), open and close bracket {/// scope///}
 
  void drawface() {
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  ellipse(eyebrowX, eyebrowY, 40, 10);
  ellipse(eyebrowX/2, eyebrowY/2, 40, 10);
    ellipse(eyeRightX, eyeRightY, 40, 10);
    ellipse(eyeRightX, eyeRightY, 40, 30);
  ellipse(eyeLeftX, eyeLeftY, 40, 30);
  ellipse(500, 400, 50, 70);
  ellipse(300, 400, 50, 70);
    }
    
    // you can wright drawFace(); in another void
  