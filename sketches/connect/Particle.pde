class Particle{
  PVector pos, vel, noiseVec;
  float noiseFloat;
  boolean out;
  float distance;
  int index;
  color c;

  
  Particle(PVector _pos, PVector _vel)
  {
    pos = _pos;
    vel = _vel;
    noiseVec = new PVector();
    
    color[] choices = {#7C898B, #636564, #474044, #4f5165};
    index = int(random(choices.length)-1);
    c = choices[index];
  }
  
  void update()
  {
    noiseFloat = noise(pos.x * 0.005, pos.y * 0.005, elapsedFrames * 0.005);
    noiseVec.x = -cos((noiseFloat * TWO_PI));
    noiseVec.y = sin((noiseFloat * TWO_PI));

    vel.add(noiseVec);
    vel.div(2.5);
    pos.add(vel);
  }
  
  void display()
  {
    fill(c,55);
    noStroke();
    ellipse(pos.x, pos.y, 3, 3);
  }
  
  void bounds()
  {
    if(pos.y > height || pos.y < 0 || pos.x > width || pos.x < 0){
      pos.x = 0;
      pos.y = random(height);
    }
  }

  void run()
  {
    update();
    bounds();
    display();
  }  
  
  PVector getPosition()
  {
    return pos;
  }
  
  float getDistance(float tx, float ty)
  {
    PVector target = new PVector(tx, ty);
    PVector dir = PVector.sub(pos, target);
    distance = dir.mag();
    return distance;
  }
  
}