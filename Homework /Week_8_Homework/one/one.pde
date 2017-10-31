
ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();
int n=10;
void setup() {
  size(1200, 800);
}

void draw() {
  background(255);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
  
  textAlign(CENTER,CENTER);
  fill(0);
  textSize(20);
 
} 

void mousePressed() {
  systems.add(new ParticleSystem(n+=20,790));
}