public class Paddle
{
  private int xPos;
  private int xVel;

  int getXPos()
  {
    return xPos;
  }
  
  void setXPos(int xPos)
  {
    this.xPos = xPos;
  }
  
  int getXVel()
  {
    return xVel;
  }
  
  void setXVel(int xVel)
  {
    this.xVel = xVel;
  }

  public Paddle()
  {
    xPos = width / 2  - (85 / 2);
    xVel = 25;
  }

  public void drawPaddle()
  {
    fill(255,255,255);
    
    fill(255,255,255);
    rect(xPos, 500, 85, 15, 2, 2, 550, 550);
  }
}
