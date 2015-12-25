class tile {
  int x, y;
  float h, w, r, angle;
  color c;
  
  tile(int x_, int y_, float h_, float w_)
  {
    x=x_;
    y=y_;
    h=h_;
    w=w_;
  }
  
  void display()
  {
    rect(x, y, h, w);
  }
}