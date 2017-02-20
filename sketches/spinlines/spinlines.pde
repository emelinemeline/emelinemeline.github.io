int num = 120;
aLine[] lines = new aLine[num];
void setup(){
  size(500,360);
  fill(255);

  for (int i=0; i<num;i++){
    lines[i] = new aLine(new PVector(i*(width/num), height/2));
  }
  }

void draw(){
  background(255);
  stroke(0);
  for (int j=0; j<lines.length;j++){
    lines[j].run();
  }
}

void mouseClicked(){
    for (int j=0; j<lines.length;j++){
    lines[j].reset();
  }
}