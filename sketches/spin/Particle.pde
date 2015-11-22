class Particle
{
  PVector loc = new PVector();
  PVector center = new PVector();
  PVector offset = new PVector(height/2, width/2);
  int r;
  float sp;
  
  Particle()
  {
    float deg = random(360);
    float bigR = random(100,200);
    center.x = cos(radians(deg))*bigR+offset.x;
    center.y = sin(radians(deg))*bigR+offset.y;
    r = (int)random(50,150);
    sp = random(800,1500);
  }
  
  void display()
  {
    noStroke();
    fill(0);
    
    float t = millis()/sp;
    loc.x = (int)(center.x+r*cos(t));
    loc.y = (int)(center.y+r*sin(t));
    ellipse(loc.x,loc.y, 1, 1);
  }
}