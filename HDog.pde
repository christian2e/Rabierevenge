class HDog{
  int x;
  int y;
  PVector loc, mouse, acc, vel;
  float angle;
  
  HDog(PVector location, PVector velocity){
  
    loc = location;
    vel = velocity;
    acc = new PVector(0, 0);
  }
  
  
  void run(){
    display();
    update();
    checkEdges();
  }
  
  void display(){
      float angle = radians(0);
      pushMatrix();
      translate(loc.x, loc.y);
      scale(.5);
      rotate(angle);
      image(healthyDogImage, 0, 0 );
      popMatrix();
  }
  
  void update(){
   
  }
  
  void checkEdges(){
    
  }
  
}
