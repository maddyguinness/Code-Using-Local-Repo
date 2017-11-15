ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(1000, 600);
  background(50);
}

void draw() {
  background(80);
  
  particles.add(new Particle(width/2, height/2));
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addAttract(mouseX, mouseY, 100);
    p.addRepel(500,500,50);
    p.addRepel(900,500,10);
    p.update();
    p.display();
    
    if (p.life < 0) {
      particles.remove(i);
    }
  }
}