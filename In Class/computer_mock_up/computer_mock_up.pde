void setup(){
  size(1000, 650);
  background(0);
  rectMode(CENTER);
  
}

void draw(){
  println(mouseX,mouseY);
  fill(150);
rect(width/2,height/2,900,550);
fill(255);
textSize(30);
text("Please Login", width/2-100,100);
text("Security Level One", width/2-130,140);
  
  noStroke();
  rect(100,560,40,40);
  fill(0);
  text("X",90,570);
  

}

void drawCompScreen2(){
  text("Security Level Two", width/2-130,140);
  
  
  
}