ArrayList<Particle> particles = new ArrayList<Particle>();

PVector rP1;
PVector rP2;
PVector rP3;
PVector rP4;

void setup() {
  size(1000, 600);
  background(50);
  
 rP1= new PVector(width/2-100,height/2);
 rP2=new PVector(width/2+100,height/2);
 rP3=new PVector(width/2,height/2+100);
 rP4=new PVector(width/2,height/2-100);
  
}

void draw() {
  background(80);
  
  particles.add(new Particle(random(1,1000), height/2));
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addAttract(mouseX, mouseY, 100);
    
    p.addRepel(rP1.x, rP1.y,80);
    p.addRepel(rP2.x,rP2.y,60);
    p.addRepel(rP3.x,rP3.y,50);
    
    p.update();
    p.display();
    
    if (p.life < 0) {
      particles.remove(i);
    }
  }
}