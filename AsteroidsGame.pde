//Sky
Star[] nightSky = new Star[100];

//asteroids
ArrayList<Asteroid> blobs = new ArrayList<Asteroid>();

//spaceship
Spaceship bean = new Spaceship();

// number of asteroids
int numOfBlobs = 70;

//Bullets
ArrayList<Bullet> pewpews = new ArrayList<Bullet>();

//smoothing out movement
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
  //drawing stars
  for(int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show(); 
  }
  //drawing asteroids and deleting
  for(int i = 0; i<blobs.size(); i++)
  {
    blobs.get(i).move();
    blobs.get(i).show();
    //delete bullets and asteroids for collisions
    float blobX = (float)blobs.get(i).getX();
    float blobY = (float)blobs.get(i).getY();
    // check for every bullet
    for(int j = 0; j<pewpews.size(); j++)
    {
      float d = dist(blobX, blobY, (float)pewpews.get(j).getX(), (float)pewpews.get(j).getY());
     if(d<10)
     {
       blobs.remove(i);
       pewpews.remove(j);
       break;
     }
    }
   
  }
  //drawing and deleting bullets
  for(int i = 0; i<pewpews.size(); i++)
  {
    pewpews.get(i).move();
    pewpews.get(i).show();
    //delete bullets if they go off screen
    if(pewpews.get(i).getX() > 497 || pewpews.get(i).getX() < 3|| pewpews.get(i).getY() > 497 || pewpews.get(i).getY() < 3)
      {
        pewpews.remove(i);
      }    
   }
   
  
  
  // moving for ship
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
  if(key == 'w') {wPress = true;}
  if(key == 'a') {aPress = true;}
  if(key == 'd') {dPress = true;}
  if(key == 's') {sPress = true;}
  if(key == ' '){pewpews.add(new Bullet(bean));}
}


public void keyReleased()
{
  if(key == 'w') {wPress = false;}
  if(key == 'a') {aPress = false;}
  if(key == 'd') {dPress = false;}
  if(key == 's') {sPress = false;}
}
