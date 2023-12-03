Spaceship ship = new Spaceship();
ArrayList <Asteroid>  junk = new ArrayList <Asteroid>();
ArrayList <Star> stars = new ArrayList <Star>();
//your variable declarations here
public void setup() 
{
  for (int i = 0; i < 10; i++){
    stars.add(new Star());
  }
  for (int i = 0; i < 50; i++){
    junk.add(new Asteroid());
  }
  background(0);
  size(800,800);
}
public void draw() 
{
  background(0); 
  for (int i = 0; i < stars.size(); i++){
    stars.get(i).show();
  }
  for (int i = 0; i < junk.size(); i++){
    junk.get(i).move();
    junk.get(i).show();
    if (dist((float)ship.getCentX(), (float)ship.getCentY(), (float)junk.get(i).getCentX(), (float)junk.get(i).getCentY()) < 20){
      junk.remove(i);
    }
  }
  ship.show();
  ship.move();
  
}
public void keyPressed()
{
  if(key == 'w'){
    ship.accelerate(1);
  }
  if (key == 's'){
    ship.accelerate(-1);
  }
  if (key == 'a'){
    ship.turn(-10);
  }
  if (key == 'd'){
    ship.turn(10);
  }
  if (key == ENTER){
    ship.hyperSpace();
  }
}
