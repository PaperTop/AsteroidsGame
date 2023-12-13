class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  public void show(){
    fill(255);
    ellipse(myX, myY, 5,5);
  }
}
