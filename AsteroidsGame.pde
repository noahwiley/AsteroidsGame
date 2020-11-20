Star[] nightSky = new Star[100];
Spaceship bean = new Spaceship();
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
}
public void draw() 
{
  background(0);
  for(int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show(); 
  }
  // moving
  if(wPress)
  {
    bean.accelerate(0.3);
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

/*
public void keyReleased()
{
  if(key == 'w')
  {
    bean.accelerate(1);
  }
  if(key == 'a')
  {
    bean.turn(-10);
  }
  if(key == 'd')
  {
    bean.turn(10);
  }
  if(key == 's')
  {
    bean.hyperspace();
  }
}
*/
