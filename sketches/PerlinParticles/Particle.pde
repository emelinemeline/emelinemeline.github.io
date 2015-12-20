class Particle
{
  PVector location;
  PVector velocity;
  PVector noiseVector;
  
  float noise;
  float lifespan;
  float age;
  float dist;
  
  boolean isDead;
  
  color c;
  
  
  Particle(PVector location_)
  {
    location = location_;
    velocity = new PVector(random(-1,1), random(-1,5));
    age = 0;
    lifespan = 255;
    isDead = false;
    noiseVector = new PVector();
    
    
    int index = int((((mouse.y/2)/height)*10)+1);
    color[] choices = {#f2eee6, #e6e6b5, #65877c, #111229, #6e5e6a, #bdc4c9};
    //int index = int(random(choices.length));
    c = choices[index];
  }

  void run()
  {
    update();
    display();
  }  
  
  void update()
  {
    noise = noise(location.x*0.005, location.y*0.005, elapsedFrames*0.005);
    noiseVector.x = cos(((noise - 0.3)*TWO_PI)*10);
    noiseVector.y = sin(((noise - 0.3)*TWO_PI)*10);
  
    velocity.add(noiseVector);
    velocity.div(2);
    location.add(velocity);
  
    lifespan-=7;
  }
  
  boolean isDead()
  {
    if (lifespan < 0.0) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void display()
  {
    noStroke();
    fill(c, lifespan);
    ellipse(location.x, location.y,5,5);
  }
  
}
