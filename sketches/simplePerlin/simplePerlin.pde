int num = 1000;
Particle[] particles = new Particle[num];


void setup()
{
  size(600,600);
  smooth();
  
  for (int i=0;i<particles.length;i++)
  {
    particles[i] = new Particle(new PVector(random(0,width),random(0,height)));
  }
  background(0);
}

void draw()
{
  for(int j=0;j<particles.length;j++)
  {
    particles[j].run();
  }
}