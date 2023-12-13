class Bullet extends Floater
{
  Bullet (Spaceship theShip)
  {
    corners = 5;
    xCorners = new int[]{10, 20, -5, -5, 20};
    yCorners = new int[]{0, 15, 5, -5, -15};
    myColor = 255;
    myCenterX = theShip.getCentX();
    myCenterY = theShip.getCentY();
    myXspeed = 0;          
    myYspeed = 0;
    myPointDirection = theShip.getPoint();
    accelerate(3);
  }
  public double getCentX(){ return myCenterX;}
  public double getCentY(){ return myCenterY;}
}
