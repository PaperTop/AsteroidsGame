class Asteroid extends Floater
{
  private double rotSpeed;
  Asteroid ()
  {
    corners = 4;
    xCorners = new int[]{-10, -10, 10, 10};
    yCorners = new int[]{5, -5, 5, -5};
    myColor = 200;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = (int)(Math.random()*10) - 5;
    myYspeed = (int)(Math.random()*10) - 5;
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (int)(Math.random()*20) - 10;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getCentX(){ return myCenterX;}
  public double getCentY(){ return myCenterY;}
}
