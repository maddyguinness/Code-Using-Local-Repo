// QUESTION 4 -
// this is currently drawing an angled line of rectangles - it should draw a square grid.
  int widthStep=20;
  int heightStep=20;
  
void setup() {
  size(600, 600);

}

void draw() {
  for (int i = 0; i <= width; i+=widthStep) {
    for (int j = 0; j <= height; j+=heightStep) {
      rect(i , j , 25, 25);
    }
  }
}