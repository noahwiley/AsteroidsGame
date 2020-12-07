Star[] nightSky = new Star[100];
ArrayList<Asteroid> blobs = new ArrayList<Asteroid>();
Spaceship bean = new Spaceship();
// number of asteroids
int numOfBlobs = 5;
boolean wPress = false;
boolean aPress = false;
boolean dPress = false;
boolean sPress = false;
public void setup() 
{
  size(500,500);
  for(int i = 0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int i = 0; i< numOfBlobs; i++)
  {
    blobs.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show(); 
  }
  for(int i = 0; i<blobs.size(); i++)
  {
    blobs.get(i).move();
    blobs.get(i).show();
  }
  // moving
  if(wPress)
  {
    bean.accelerate(0.1);
  }
  if(aPress)
  {
    bean.turn(-5);
  }
  if(dPress)
  {
    bean.turn(5);
  }
  if(sPress)
  {
    bean.hyperspace();
  }
  
  bean.move();
  bean.show();
}


public void keyPressed()
{
  if(key == 'w')
  {
    wPress = true;
  }
  if(key == 'a')
  {
    aPress = true;
  }
  if(key == 'd')
  {
    dPress = true;
  }
  if(key == 's')
  {
    sPress = true;
  }
}


public void keyReleased()
{
  if(key == 'w')
  {
    wPress = false;
  }
  if(key == 'a')
  {
    aPress = false;
  }
  if(key == 'd')
  {
    dPress = false;
  }
  if(key == 's')
  {
    sPress = false;
  }
}
