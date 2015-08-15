float num1, num2, n1, n2, angle;
ArrayList tiles = new ArrayList<Tile>();
int[] colorindex;
int number;

void setup()
{
  size(700,700);
  num1=31;
  num2=31;
  rectMode(CENTER);
  
  colorindex = new int[int(num1*num2)];
  
  n1 = width/num1;
  n2 = height/num2;
  number=1;
  for (int j=0; j<=num2; j++){
    for (int i=0; i<=num1; i++){
      int index = j+i;
      colorindex[index] = number*number;
      Tile t = new Tile(0,0,10,10, colorindex[index]);
      tiles.add(t);
      number+=1;
    }
  }
  angle=0;
  smooth();
}

void draw()
{
  background(0);
  for (int x=0; x<=num2; x++){
    for (int y=0; y<=num1; y++){
      int index = x+y;
      Tile localTile = (Tile) tiles.get(index);
      pushMatrix();
      translate(n1*x, n2*y);
      rotate(angle);
      localTile.display();
      popMatrix();
    }
  }
  angle+=0.02;
}

class Tile {
  int x, y;
  float h, w, r;
  color c;
  
  Tile(int x_, int y_, float h_, float w_, float r_)
  {
    x=x_;
    y=y_;
    h=h_;
    w=w_;
    r=r_;
    float random = random(0, r);
    c = color(random, 100, 100);
  }
  
  void display()
  {
    noFill();
    stroke(c);
    strokeWeight(2);
    rect(x, y, h, w);
  }
  
}