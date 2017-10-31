//2D ARRAY - an array for y within an array for x
int x;
int y;
PImage emoji[][] = new PImage[x][y];
final int COL=5;
final int ROW=5;



// an array within another array
void setup(){
  size(800,800);
  
  for (int i=0; i<x; i++){ // 1 up here, 5 down there, 2 up here, 5 down there
    for (int j=0; j<y; j++){
 emoji[x][y] = loadImage("emoji"+i+".jpeg");
      
  }
}
}

void draw(){
  background(0);
  for (int i=0; i<COL; i++){
    for (int j=0; j<ROW; j++){
      image(emoji[i][j],50,50);
    }
  }
}