class Particle
{
  PVector loc;
  PVector vel;
  PVector noiseVec;
  
  float noise;
  
  Particle(PVector loc_)
  {
    loc=loc_.copy();
    vel = new PVector(random(-1,1), random(-1,1));
    noiseVec = new PVector();
  }
  
  void run()
  {
    update();
    display();
  }
  
  void update()
  {
    noise = noise(loc.x*0.003, loc.y*0.003, frameCount*0.003);
    noiseVec.x = cos(((noise - 0.3)*TWO_PI)*10);
    noiseVec.y = sin(((noise - 0.3)*TWO_PI)*10);
    
    vel.add(noiseVec);
    vel.div(2);
    loc.add(vel);
  }
  
  void display()
  {
    noStroke();
    fill(255,55);
    ellipse(loc.x,loc.y,1,1);
  }
}
