float num1, num2, n1, n2, angle;
tile t;
void setup()
{
  size(400,400);
  angle = 0;
  rectMode(CENTER);
  t = new tile(0,0, 150, 150);
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  rotate(angle);
  t.display();
  
  float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  angle = angle+map(d, 0, maxDist, 0.15, .001);
  float c = map(d, 0, maxDist, 255, 80);
  noStroke();
  fill(120,160,c);

}