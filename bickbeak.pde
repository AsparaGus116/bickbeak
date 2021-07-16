color grey = color(55,55,55);
color green = color(0,220,0);

Ball b;

void setup()
{
  size(800,600);
  background(grey);
  b = new Ball(200,200,3,-3);
}

void draw()
{
  background(grey);
  b.drawBall();
  
  if(b.hittingSides())
  {
    b.bounceX();
  }
  if(b.hittingRoof())
  {
    b.bounceY();
  }
}
