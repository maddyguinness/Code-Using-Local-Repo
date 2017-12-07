int buttonPosX = width/2;
int buttonPosY = height/2;
int buttonWidth=120;
int buttonHeight=40;

void drawCounter() {
println(mouseX,mouseY);
  int passedTime = second()- savedTime;
  textSize(30);
  text(passedTime, 30, 50); 


  if (passedTime >= totalTime) {
//game over text 
    text("Game Over", width/2-80, height/2);
    fill(0);
    rect(buttonPosX, buttonPosY, buttonWidth, buttonHeight);
    fill(255);
    textSize(20);
    text("Restart?", width/2-40, height/2+50);
    passedTime = 0;
  }
    }
    
    
    //boolean overButton(buttonPosX, buttonPosY, buttonWidth, buttonHeight){
//  if(mouseX>=buttonPosX && mouseX <= buttonPosX + buttonWidth &&
//  mouseY >= buttonPosY && mouseY<= buttonPosY + buttonHeight){
//  return true;
//}else{
//  return false;
//}
//}