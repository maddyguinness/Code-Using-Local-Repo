// QUESTION 5 - 
// pressing the button should change the background color. figure out why it doesn't and fix it

int buttonX = 100;
int buttonY = 100;
int buttonW = 100;
int buttonH = 100;


void setup() {
  size(300, 300);
}

void draw() {
  background(40);
println(mouseX,mouseY);
  if (mousePressed) {
    if (mouseX < buttonX+100 && mouseX > buttonW) {
      if (mouseY < buttonY+100 && mouseY > buttonH) {
        background(255);
      }
    }
  }
  
    
  rect(buttonX, buttonY, buttonW, buttonH);

}