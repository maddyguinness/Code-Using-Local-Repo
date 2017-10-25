//2D ARRAY - an array for y within an array for x

final int COL=5;
final int ROW=5;

float[][] x= new float [COL][5]; //25 positions in the array, 5 sets of 5
float[][] y= new float [ROW][5];

// an array within another array
void setup(){
  size(800,800);
  
  for (int i=0; i<COL; i++){ // 1 up here, 5 down there, 2 up here, 5 down there
    for (int j=0; j<ROW; j++){
      x[i][j] = 100+i *150;
      y[i][j]= 100+j*150;
  }
}
}

void draw(){
  background(0);
  for (int i=0; i<COL; i++){
    for (int j=0; j<ROW; j++){
      ellipse(x[i][j], y[i][j],50,50);
    }
  }
}