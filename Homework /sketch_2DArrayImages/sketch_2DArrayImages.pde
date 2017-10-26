int i;
int j;
int IMG_NUM = 5;
PImage[] emoji = new PImage[IMG_NUM];

void setup() {
    background(255);
  size(1000, 1000);
  imageMode(CENTER);

  for ( int m=0; m< emoji.length; m++) {
    emoji[i] = loadImage("emoji"+m+".jpeg");
  }
}

void draw(){
  for (int i = 0; i < (int)sqrt(IMG_NUM); i++) {
    for (int j = 0; j < (int)sqrt(IMG_NUM); j++) {
      
      
      int index = (int)sqrt(IMG_NUM) * j + i;
      
      //draw the image in the array at that recalculated index position
     image(emoji
    }
  }
}