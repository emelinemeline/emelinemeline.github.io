class aLine
{
  PVector loc;
  float angle=0;  
  aLine(PVector loc_)
  {
    loc = loc_;
  }

  void run()
  {
    update();
    display();
  }  
  
  void update()
  {
    float d=dist(loc.x, loc.y, mouseX, mouseY);
    float maxDist = dist (0,0, width/2, height/2);
    angle = angle+map(d,0, maxDist, 0.08, 0.001);
  }
  
  
  void display()
  {
    rectMode(CENTER);
    pushMatrix();
    
    translate(loc.x, loc.y);
    rotate(angle);
    line(-100,0,100,0);
    popMatrix();
  }
  
  void reset(){
    angle = 0;
  }
}