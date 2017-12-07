ArrayList<Page> page = new ArrayList<Page>();

void setup() {
  size(1000, 650);

}

void draw() {
  background(255);
  for (int i = 0; i < page.size(); i++) {
    Page p = page.get(i);
    p.update();
    p.display();
    
    
  }
  
 page.add(new Page(random(0,600),random(0,600)));

}