class SDog {
 int x;
  int y;
  PVector loc, mouse, acc, vel;
  float angle;


  ArrayList<Boid> boids; 

  SDog() {
    vel = new PVector(random(-2, 2), random(-2, 2));
    mouse = new PVector(mouseX, mouseY);
    boids = new ArrayList<Boid>();
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);
    }
  }
  void update(){
    PVector dir = PVector.sub(  mouse, loc); 
    dir.normalize();
    dir.mult(1);
    //acc.add(dir);
    vel.add(dir);
    loc.add(vel);
    vel.limit(5);
  }
  
  void addBoid(Boid b) {
    boids.add(b);
  }
}

