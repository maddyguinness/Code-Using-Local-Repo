//create square canvas 
void setup(){
  size (200,200);
}
void draw() {
  // draw a line from the middle downwards to the bottom edge
  line(width/2,height/2,100,200);
  
  //draw a line from the middle point to the top left corner
  line(width/2,height/2,200,0);
  
  // draw a line from the middle to the top right corner
  line(width/2,height/2,0,0);
  
  //create a smaller triangle within the first 
  line(width/2,70,30,0);
  line(width/2,70,170,0);
  
  //create another smaller triangle within 
  line(width/2,40,60,0);
  line(width/2,40,140,0);
  
  //draw diagonal lines from the left hand side down to the middle line
  line(width/2,130,0,30);
   line(width/2,160,0,60);
    line(width/2,190,0,90);
     line(80,200,0,120);
     line(50,200,0,150);
     line(20,200,0,180);
    
    //do the same on the other side
    line(width/2,130,200,30);
   line(width/2,160,200,60);
    line(width/2,190,200,90);
    line(120,200,200,120);
    line(150,200,200,150);
    line(180,200,200,180);
     }