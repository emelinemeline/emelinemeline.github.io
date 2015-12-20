float num1, num2, n1, n2, angle;
void setup()
{
  size(400,400);
  num1=11;
  num2=11;
  angle = 0;
  rectMode(CENTER);
}

void draw()
{
  background(255, 55);
  n1 = width/num1;
  n2 = height/num2;
  for (int j=0; j<=num2; j++){
    for (int i=0; i<=num1; i++){
      pushMatrix();
      noStroke();
      fill(0, 50);
      translate(n1*i, n2*j);
      if ((i+j)%2==0) {
        rotate(angle);
        fill(0, 60);
        polygon(0,0,50,7);
      }
      else {
        rotate(angle*-1);
        fill(0, 20);
        polygon(0, 0, 30, 4);
      }
      popMatrix();
    }
  }
  angle+=0.015;
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}