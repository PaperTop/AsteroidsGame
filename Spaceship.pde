class Spaceship extends Floater  
{   
    Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 30;
      xCorners[1] = -15;
      xCorners[2] = -15;
      yCorners[0] = 0;
      yCorners[1] = 15;
      yCorners[2] = -15;
      myColor = 255;
      myCenterX = 400;
      myCenterY = 400;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperSpace(){
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }
    public double getCentX(){ return myCenterX;}
    public double getCentY(){ return myCenterY;}
   
}
