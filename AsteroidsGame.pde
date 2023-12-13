Spaceship ship = new Spaceship();
ArrayList <Asteroid>  junk = new ArrayList <Asteroid>();
ArrayList <Star> stars = new ArrayList <Star>();
ArrayList <Bullet> net = new ArrayList <Bullet>();
private boolean wPressed, sPressed, aPressed, dPressed, spaceClicked;
int time;
public void setup() 
{
  size(800,800);
  for (int i = 0; i < 10; i++){stars.add(new Star());}
  for (int i = 0; i < 50; i++){junk.add(new Asteroid());}
  wPressed = false;
  sPressed = false;
  aPressed = false;
  dPressed = false;
  spaceClicked = false;
  time = 0;
}
public void draw() 
{
  background(0); 
  for (int i = 0; i < stars.size(); i++){stars.get(i).show();}
  for (int i = 0; i < junk.size(); i++){
    junk.get(i).move();
    junk.get(i).show();
    if (dist((float)ship.getCentX(), (float)ship.getCentY(), (float)junk.get(i).getCentX(), (float)junk.get(i).getCentY()) < 20){
      junk.remove(i);
    }
  }
  for (int i = 0; i < net.size(); i++){
    net.get(i).show();
    net.get(i).move();
    for (int j = 0; j < junk.size(); j++){
      if (dist((float)net.get(i).getCentX(), (float)net.get(i).getCentY(), (float)junk.get(j).getCentX(), (float)junk.get(j).getCentY()) < 10){
        junk.remove(j);
        net.remove(i);
        break;
      }
    }
  }
  ship.show();
  ship.move();
  if (wPressed){ship.accelerate(.5);}
  if (sPressed){ship.accelerate(-.5);}
  if (aPressed){ship.turn(-2);}
  if (dPressed){ship.turn(2);}
  if (spaceClicked && time == 0){
    net.add(new Bullet(ship));
    time = 15;
  }
  if (time > 0){time--;}
}
public void keyPressed()
{
  if (key == 'w'){wPressed = true;}
  if (key == 's'){sPressed = true;}
  if (key == 'a'){aPressed = true;}
  if (key == 'd'){dPressed = true;}
  if (key == 'f'){ship.hyperSpace();}
  if (key == ' '){spaceClicked = true;}
}
public void keyReleased()
{
  if (key == 'w'){wPressed = false;}
  if (key == 's'){sPressed = false;}
  if (key == 'a'){aPressed = false;}
  if (key == 'd'){dPressed = false;}
  if (key == ' '){spaceClicked = false;}
}
