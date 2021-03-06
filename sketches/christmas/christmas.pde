ParticleSystem ps;

void setup() {
  size(500,300);
  ps = new ParticleSystem(new PVector(width/2,200));
  textSize(32);
  fill(0);
  textAlign(CENTER);
}

void draw() {
  background(#FFF2F0);
  ps.addParticle();
  ps.run();
  textSize(52);
  fill(#0F2F0F);
  text("Merry Christmas!!", width/2, 240);
}





// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}



// A simple Particle class

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  color c;

  Particle(PVector l) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-2,2),random(-6,-1));
    location = l.get();
    lifespan = 255.0;
    color[] choices = {#3C8D0D, #BFE463, #EB3232, #C21717};
    int index = int(random(0,3));
    c=choices[index];
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(c,lifespan);
    fill(c,lifespan);
    ellipse(location.x,location.y,10,10);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}