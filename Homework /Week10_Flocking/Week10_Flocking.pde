Flock flock;

void setup() {
  size(1200, 800);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 600; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() {
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
}