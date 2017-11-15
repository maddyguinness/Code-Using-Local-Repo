float angle;
PImage pg;
float incr;

void setup(){
 size(600,600);
 angle=0;
 incr=3;
 pg= get(0,0,600,600);
 
}

void draw(){
 image(pg,1,0);
 angle+= incr;
 float result = sin(radians(angle)); // TIMES AMP TIMES RATE
 //do the same with cos to create a circular motion 
 // AMP IS HOW FAR IT TRAVELS 
 // INCR IS THE SPEED 
 
 float y=map(result,-1,1,height/2-100,height/2+100);
 ellipse(y,y,20,20);
 
 //get function drawing the ellipse one pixel arross each frame 
 pg= get(0,0,600,600);
 //pg is screen capturing and changing each frame 
}