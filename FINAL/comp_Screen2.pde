class Page {
  float x; 
  float y; 
  float dx;
  float dy;
  color c; 
  float s; 
  float r;
  float g;
  float b;

  //constructor takes an x and a y value to set the ball's position
  Page(float Mx, float My) {
    x = Mx;
    y = My;
    dx = random(-3, 3);
    dy = random(-3, 3);
    r = (int)random(255);
    g = (int)random(255);
    b = (int)random(255);
    s = random(10, 600);
  }

  void display() {
    stroke(10);
    fill(r, g, b);
    rect(x, y, s, s);
  }

  void update() {
    
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 

    if (y < s/2 || y > height-s/2) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  
  void removePage(){
    Page p = new Page(x,y);
    if(mouseX<s && mouseY<s && mousePressed ==true){
p=null;
    }
    
  }
  
}