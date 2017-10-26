int IMG = 5;
PImage[] emoji = new PImage[IMG];

int whichEmoji = int (random(0, 5));
//int whereEmoji = int (random(100, 900));

final int COL=5;
final int ROW=5;
float[][] x= new float[COL][5];
float[][] y= new float[ROW][5];


void setup() {
  size(1000, 1000);
  imageMode(CENTER);

  for (int i=0; i<COL; i++){
    for (int j=0; j<ROW; j++){
x[i][j] = i*10;
y[i][j]= j*10;
    emoji[i] = loadImage("emoji"+i+".jpeg");
  }
}
}

void draw() {
  background(200);

  for (int i=0; i< COL; i++) {
        for(int j=0; j< ROW; j++){
image(emoji[whichEmoji], x[i][j], y[i][j]);
  }
  }


//  if (whichEmoji >= emoji.length) {
//    whichEmoji = 0;
//  }
}