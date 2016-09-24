float angle;
float c;
float a=5;
float b=500/a;
void setup(){
  size(500,360);
  fill(0);
}

void draw(){
  background(0);
  float x=0;
  float y=height/2;
  for (int i=0; i<b; i++){
    c = (i*sin(angle))/10;
    pushMatrix();
    translate(x, y);
    rotate(c);
    stroke(80, i*2, 186);
    strokeWeight(a);
    line(-100,0,100,0);
    popMatrix();
    x=x+a;
  }
  angle = angle+0.01;
}

void mouseClicked(){
    a=random(10);
    b=500/a;
}