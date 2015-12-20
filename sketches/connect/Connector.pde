class Connector{
  PVector c_loc;
  PVector c_loc_;
  PVector initloc;
  PVector interact;
  float pushforce, recoverforce;

  
  Connector(PVector _c_loc)
  {
    float deg = random(360);
    float r = random(10,300);
    initloc = _c_loc;
    c_loc = initloc;
    
    pushforce = 300;
    recoverforce = 30;
  }
  
  void update(PVector _target)
  {
    PVector loc0 = c_loc;
    interact = _target;
    PVector ab = PVector.sub(interact, loc0);
    float r = pushforce/(ab.x*ab.x+ab.y*ab.y);
    PVector go = new PVector(c_loc.x-ab.x*r, c_loc.y-ab.y*r);
    PVector pull = new PVector(((initloc.x-loc0.x)/recoverforce), ((initloc.y-loc0.y)/recoverforce));
    c_loc = PVector.add(go, pull);
  }
  
  void bounds()
  {
    if(c_loc.y > height || c_loc.y < 0 || c_loc.x > width || c_loc.x < 0){
      c_loc.x = random(width);
      c_loc.y = random(height);
    }
  }
  
  void display()
  {
    limit = 80;

    for (int j=0; j<particles.length; j++)
    {
      particles[j].run();
      d = particles[j].getDistance(c_loc.x, c_loc.y);
      PVector posNow = particles[j].getPosition();
      if (d<limit)
      {
        stroke(#f8fa90);
        strokeWeight(.5);
        line(posNow.x, posNow.y, c_loc.x, c_loc.y);
      }    
    }

  }
  
  void run()
  {
    bounds();
    display();
  }
  
  
}
