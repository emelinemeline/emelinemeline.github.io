int count=150;
int sz=2;
float[][] dots = new float[count][4];
float closeradius=35;
float spd = 0.15;

void setup()
{
  size(1200,300);
  frameRate(60);

  for (int i=0; i<count;i++)
  {
    dots[i][0]=random(width); //x location
    dots[i][1]=random(height); //y location
    dots[i][2]=random(-spd,spd); //x speed
    dots[i][3]=random(-spd,spd); //y speed
  }
}

void draw()
{
  background(#313131);
  fill(255);
  for (int j=0;j<count;j++)
  {
    fill(#8FB9BA);
    //draw dots
    ellipse(dots[j][0], dots[j][1], sz, sz);
    //move dots
    dots[j][0]+=dots[j][2];
    dots[j][1]+=dots[j][3];
    
    //have dots 'bounce' off of bounds
    if (dots[j][0] > width || dots[j][0]<0){
      dots[j][2]*=-1;}
    if (dots[j][1] > height || dots[j][1]<0){
      dots[j][3]*=-1;}
    
    stroke(#8FB9BA);
    strokeWeight(0.6);
    //loop through all dots
    for (int k=0; k<count; k++) {
      //Connect if dots are close
      if ( (sq(dots[j][0] - dots[k][0]) + sq(dots[j][1] - dots[k][1])) < sq(closeradius) ) {
        line(dots[j][0], dots[j][1], dots[k][0], dots[k][1]);
      }
    }
  }
}
