float angle = 0;
void setup() {
  size(800,800);
}

void draw() {
  pushMatrix();
  //save starting co ordinate system
  
  rect(0,0,200,200);

  translate(width/2,height/2);
  //makes 0 the centre of the canvas and the top left is -400 
  //as it moves 400 on x axis and 400 on y axis 
  
  //scale(0.5); //makes top left corner -800,-800  
  
  rotate(radians(angle));
  angle= angle +1;
//radians allows angle in degrees value)
fill(50);
rect(50,50,300,300);

//go back to that saved starting co ordinate
popMatrix(); 

fill(255,0,0);
ellipse(400,400,200,200);
//mouse x and mouse y follow canvas values despite translation in println

//each rectangle can be given its own co ordinate system
pushMatrix();
translate(100,100);
ellipse(0,0,200,200);
popMatrix();

ellipse(200,200,200,200);
ellipse(300,300,200,200);
}