class Bullet extends Floater
{
  Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(5);
  }
  public void show()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  //accessors
    public double getX() 
    {
      return myCenterX;
    }
    public double getY() 
    {
      return myCenterY;
    }
    public double getPointDirection() 
    {
      return myPointDirection;
    }
    public double getXspeed()
    {
      return myXspeed;
    }
    public double getYspeed()
    {
      return myYspeed;
    }
    //setters
    public void setPointDirection(int degrees) 
    {
      myPointDirection = degrees;
    }
    public void setY(double y) 
    {
    myCenterY = y;
    }
    public void setX(double x)
   {
     myCenterX = x;
   }
}
