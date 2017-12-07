int number1= 0;
int number2 = 0;
int number3= 0 ;
int number4 = 0;
int y1= 145;
int y2 = 175;
int y3 = 175;



void setup() {
  size(400, 500);
}

void draw() {
  background(100);
  
  if ( mouseX > 28 && mouseX < 55 && mouseY > 145 && mouseY < 175) {
    if (mousePressed == true) {
      number1++;
      
     if( number1==10){
       number1 = 0;
     }
    }
  }


  println(number1);
  noStroke();
  triangle(140, y1, 155, y2, 125, y3);
  triangle(240, y1, 255, y2, 225, y3);
  triangle(240, y1, 255, y2, 225, y3);
  triangle(340, y1, 355, y2, 325, y3);

  textSize(70);
  text(number1, 25, 250);
  text(number2, 125, 250);
  text(number3, 225, 250);
  text(number4, 325, 250);
}