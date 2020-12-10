class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = Math.random()*20 - 10;
    corners = 6;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-11,7,13,6, -11, -5};   
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = 200;   
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;//holds center coordinates   
    myXspeed = Math.random()*2 - 1;
    myYspeed = Math.random()*2 - 1; //holds the speed of travel in the x and y directions   
    myPointDirection = -90;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void show()
  {
    fill(0);
    super.show();
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
