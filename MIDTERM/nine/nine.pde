k// QUESTION 9 - 
// put together a skeleton Pong game.

// create a bouncing ball that starts in the middle of the screen 
// either use a class or independent variables, it doesn't matter
// make it bounce only on the top and bottom walls
// create two paddles. this can also be a class or not
// have key presses control the up and down movement of the paddles independently
// make the ball reverse x direction when it touches the paddles
// return the ball to the middle of the screen with a random position when it goes off screen
// keep score for the two players
float onePaddleX=750;
float onePaddleY=400;
  float paddleW=20;
float paddleH=100;

int score1=0;
int score2=0;

float twopaddleX=50;
float twopaddleY=400;

int up=1;

float x = 100;
float y = 100;
float r = 20;
float dx = 5;
float dy = 7;
float gravity = 0.8;

void setup() {

  size(800, 600);
}

void draw() {
  background(0);
  
  textSize(50);
  text(score1,50,50);
  text(score2,760,50);

  rect(onePaddleX, onePaddleY, paddleW, paddleH);
  rect(twopaddleX, twopaddleY=400, paddleW, paddleH);

  x += dx;
  y += dy;

  //dy += gravity;
  //dy *= 0.99;

  fill(255);
  ellipse(x, y, r*2, r*2);

  if (x > width - r || x < r) {
    x=width/2;
    //score
  }

  if (y > height - r || y < r) {
    dy = -dy;
  }


if(x>onePaddleX || x>onePaddleX+paddleW && y>onePaddleY-paddleH  || y>onePaddleY+paddleH){
 dx= -dx;
 dy=-dy;
  
}
}

//void keyPressed() {
//  if (key==CODED) {
//    if (keyCode ==UP) {
//   onePaddleY+10;
//  twopaddleY+10;
//    }
  