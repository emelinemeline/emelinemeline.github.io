ArrayList<Particle> particles;

void setup()
{
  size(600,600);
  smooth();
  particles = new ArrayList<Particle>();
  particles.add(new Particle());
  
  background(255);
}

void draw()
{
  fill(255,20);
  rect(0,0,width,height);
  for (int i = 0; i<particles.size(); i++)
  {
    Particle p = particles.get(i);
    p.display();
  }
}

void mouseClicked()
{
  for (int j=1; j<20; j++)
  {
    particles.add(new Particle());
  }

}