class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 5;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -12;
      xCorners[1] = 18;
      xCorners[2] = -12;
      xCorners[3] = -7;
      xCorners[4] = -7;
      yCorners[0] = -12;
      yCorners[1] = 0;
      yCorners[2] = 12;
      yCorners[3] = 5;
      yCorners[4] = -5;
      myColor = (190);
      myCenterX = 400;
      myCenterY = 400;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
}
public void hyperspace(){
 myCenterX = (int)(Math.random()*685)+5;
 myCenterY = (int)(Math.random()*685)+5;
 myXspeed=0;
 myYspeed=0;
 }
}
