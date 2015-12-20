Particle[] particles = new Particle[800];
Connector[] c = new Connector[6];

float elapsedFrames, d, limit;
PVector loc, vel, mouse, mouse_, direction;
PVector cloc, rand;

void setup()
{
  size(800,600);
  
  for (int i=0; i<particles.length; i++)
  {
    loc = new PVector(random(0,width), random(0,height));
    vel = new PVector(0,0);
    particles[i] = new Particle(loc, vel);
  }
  
  for (int m=0; m<c.length;m++)
  {
    rand = new PVector(random(width), random(height));
    c[m] = new Connector(rand);
  }
  
}

void draw()
{
  background(#020122);
  
  elapsedFrames++;
  mouse = new PVector(mouseX, mouseY);
  for (int n=0; n<c.length; n++)
  {
    c[n].update(mouse);
    c[n].run();
  }

}