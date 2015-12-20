int count;
Particle[] p;

void setup()
{
  size(600,600);
  smooth();
  
  count = 100;
  p = new Particle[count];
  for (int i = 0; i<p.length; i++)
  {
    p[i] = new Particle();
  }
  background(255);
}

void draw()
{
  fill(255, 20);
  rect(0,0,width,height);
  for (int k=0;k<p.length;k++)
  {
    p[k].display();
  } 
}