import java.util.Iterator;

Particle p;
int total = 100;
float x1, x2, y1, y2;

int elapsedFrames = 0;

ArrayList<Particle> particles;

PVector mouse, mouse_p, velocity;
PVector dir;
int magnitude;

void setup()
{
  size(640, 600);
  particles = new ArrayList<Particle>();
}

void draw()
{
  background(255);
  
  mouse = new PVector(mouseX, mouseY);
  mouse_p = new PVector(pmouseX,pmouseY);
  dir = PVector.sub(mouse, mouse_p);
  magnitude = int(dir.mag());
  int numPart = magnitude*3;
  
  for (int i=1; i<=numPart;i++) {
    float rand_1 = random(-magnitude, magnitude);
    float rand_2 = random(-magnitude, magnitude);    
    PVector rand = new PVector(rand_1, rand_2);
    particles.add(new Particle(PVector.add(mouse,rand)));
  }
  
  Iterator<Particle> it = particles.iterator();
  while (it.hasNext()){
    Particle p = it.next();
    p.run();
    if (p.isDead()){
      it.remove();
    }
  }
  
  elapsedFrames++;
}

