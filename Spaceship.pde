
  
  class Spaceship extends Floater  
{     
    public Spaceship()
   {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-8,16,-8,-2};   
    yCorners = new int[]{-8,0,8,0};
    myColor = 255;   
    myCenterX = myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = -90; //holds current direction the ship is pointing in degrees
   }
   public void hyperspace()
   {  
     myXspeed = 0;
     myYspeed = 0; 
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myPointDirection = (Math.random()*360);
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
