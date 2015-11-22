import megamu.mesh.*;

int count;
Particle[] p;

float[][] points;
Delaunay mesh;
float[][] edges;

float x, y, x_, y_;

void setup()
{
  size(600,600, P2D);
  smooth();
  
  count = 300;
  p = new Particle[count];
  for (int i = 0; i<p.length; i++)
  {
    p[i] = new Particle();
  }
}

void draw()
{
  background(255);
  
  points = new float[p.length][2];
  for (int k=0; k<points.length; k++)
  {
  PVector pos = p[k].loc;
  points[k][0] = pos.x;
  points[k][1] = pos.y;
  }
  
  mesh = new Delaunay(points);
  edges = mesh.getEdges();
  for (int j=0; j<edges.length; j++)
  {
  x = edges[j][0];
  y = edges[j][1];
  x_ = edges[j][2];
  y_ = edges[j][3];
  strokeWeight(0.5);
  stroke(0);
  line(x, y, x_, y_);
  }

  for (int k=0;k<p.length;k++)
  {
    p[k].display();
  }  
}