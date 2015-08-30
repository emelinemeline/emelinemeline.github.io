int num = 100;
Particle[] particles = new Particle[num];


void setup()
{
  frameRate(60);
  size(300,300);
  smooth();
  colorMode(RGB,255,255,255,100);
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

void mouseClicked()
{
  setup();
}
