color grey = color(55, 55, 55);
color green = color(0, 220, 0);

Paddle p;
Ball b;

void setup()
{
  size(800, 600);
  frameRate(60);
  background(grey);
  surface.setResizable(true);
  b = new Ball(200, 200, 3, -3);
  p = new Paddle();
}

void draw()
{
  background(grey);
  p.drawPaddle();
  b.drawBall();

  if (b.hittingSides())
  {
    b.bounceX();
  }
  if (b.hittingRoof())
  {
    b.bounceY();
  }

  if (keyPressed)
  {
    if (key == 'a')
    {
      p.setXPos(p.getXPos() - distance);
      redraw();
      if (p.getXPos() <= 0)
      {
        p.setXPos(0);
      }
    }

    if (key == 'd')
    {
      p.setXPos(p.getXPos() + distance);
      redraw();
      if (p.getXPos() >= 1835)
      {
        p.setXPos(1835);
      }
    }
    if (key == CODED)
    {
      if (keyCode == LEFT)
      {
        p.setXPos(p.getXPos() - distance);
        redraw();
        if (p.getXPos() <= 0)
        {
          p.setXPos(0);
        }
      }
    }
    if (key == CODED)
    {
      if (keyCode == RIGHT)
      {

        p.setXPos(p.getXPos() + distance);
        redraw();
        if (p.getXPos() >= width - 85)
        {
          p.setXPos(width - 85);
        }
      }
    }
  }
}
