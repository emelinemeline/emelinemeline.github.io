// https://forum.processing.org/two/discussion/23879/complete-graph
int COUNT = 7;
int RAD = 200;
int angle = 0;
int pos = 1;

float getX(float a) {
 return (RAD * cos(a * TWO_PI / COUNT));
}

float getY(float a) {
 return (RAD * sin(a * TWO_PI / COUNT));
}

void setup() {
 size(600, 600);
}

void draw() {
 background(40);
 translate(width / 2, height / 2);
 strokeWeight(10);
 if (pos == 1) {
  rotate(angle += 0.01);
 } else {
  rotate(angle -= 0.01);
 }
 for (int i = 0; i < COUNT; i++) {
  for (int j = 0; j < i; j++) {
   stroke(140, 140 + sin(angle) * 20, 190);
   line(getX(i), getY(i), getX(j), getY(j));
  }
 }
 RAD = 220 + sin(angle * 1) * 70
}

void mousePressed() {
 COUNT++;
 if (COUNT > 15) {
  COUNT = 2;
 }
 pos *= -1;
}
