class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float life;
  float maxSpeed;
  float repelPoint;
  

  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-1, 1), random(-1, 1));
    acc = new PVector(0, 0);
    life = 300;
    maxSpeed = 70;
    repelPoint = 50;
  }

  void update() {
    acc.mult(0.5);
    vel.add(acc);
    vel.limit(maxSpeed);
    pos.add(vel);

    life--;
  }

  void display() {
    float s = map(life, 300, 0, 20, 0);
    fill(150);
    stroke(255);
    rect(pos.x, pos.y, s, s);
  }

  void addAttract(float x, float y, float maxForce) {
    float angle = atan2(y - pos.y, x - pos.x);
    float forceStr = maxForce / (1 + dist(pos.x, x, pos.y, y));
    PVector newForce = new PVector(cos(angle), sin(angle));
    newForce = newForce.mult(forceStr);
    acc.add(newForce);
    // pos is direction 
    
  
  }

  void addRepel(float x, float y, float maxForce) {
   float angle = atan2(y - pos.y, x - pos.x)+PI;
    float forceStr = maxForce / (1 + dist(pos.x, x, pos.y, y));
    PVector newForce = new PVector(cos(angle), sin(angle));
    newForce = newForce.mult(forceStr);
    acc.add(newForce);
    
    for(int i=0; i>5; i++){
      
    }
  }
}