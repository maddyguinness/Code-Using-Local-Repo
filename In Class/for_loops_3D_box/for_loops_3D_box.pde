void setup(){
  size(600,600, P3D);
}

void draw(){
  background(255);
  translate (width/2, height/2);
  rotateX(radians(mouseX*0.2));
  rotateY(radians(mouseY*0.2));
  for (int i=0; i <=10; i++){
   for (int j=0; j<=10; j++){
     for( int k= 0; k<= 10; k++){
     float x= map(i,0,10,0,600);
     float y= map(j,0,10,0,600);
     float z= map(k,0,10,0,600);
     //ellipse(x,y,50,50);
     
     pushMatrix();
     rotate(radians(mouseX));
     translate(x,y,z);
     box(20);
     popMatrix();
     }
   }
  }
}