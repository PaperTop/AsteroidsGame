Spaceship ship = new Spaceship();
Star [] stars = new Star[100];
//your variable declarations here
public void setup() 
{
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  background(0);
  size(800,800);
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed(){
  if(key == 'w'){
    ship.accelerate(1);
  }
  if (key == 's'){
    ship.accelerate(-1);
  }
  if (key == 'a'){
    ship.turn(-20);
  }
  if (key == 'd'){
    ship.turn(20);
  }
  if (key == ENTER){
    ship.hyperSpace();
  }
}
