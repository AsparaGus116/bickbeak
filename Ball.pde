public class Ball
{
  private int xVel;
  private int yVel;
  
  private int xPos;
  private int yPos;
  
  private int diameter = 15;
  
  public Ball()
  {
    xVel = 0;
    yVel = 0;
  }
  
  public Ball(int xPos, int yPos, int xVel, int yVel)
  {
    this.xPos = xPos;
    this.yPos = yPos;
    this.xVel = xVel;
    this.yVel = yVel;
  }
  
  public void drawBall()
  {
    fill(255,255,255);
    circle(xPos, yPos, diameter);
    xPos += xVel;
    yPos += yVel;
  }
  
  boolean hittingSides()
  {
    return 
      xPos <= 5 ||
      xPos + diameter >= width + 7; //Fine tuning for collisions
      
  }
  
  boolean hittingRoof()
  {
    return
      yPos <= 7;
  }
  
  void bounceX()
  {
    xVel *= -1;
  }
  
  void bounceY()
  {
    yVel *= -1;
  }

}
