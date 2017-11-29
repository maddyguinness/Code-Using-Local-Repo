class Skull {
  
  PImage img;
  
  
  Skull(){
    img = loadImage("SKULL.png");
    
    
  }
  
  void display(){
    
   for(int i = 0; i<width; i+=20){
     for(int j = 0; j> height; j+=20){
       
       image(img,i,j,10,10);
     } 
   }
    
  }
}