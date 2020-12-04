class AsteroidsAgain extends Floater {
  public double myRotateSpeed;
  AsteroidsAgain(){
    myRotateSpeed = (Math.random()*4)-2;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
      xCorners[0] = -11;
      xCorners[1] = 7;
      xCorners[2] = 13;
      xCorners[3] = 6;
      xCorners[4] = -11;
      xCorners[5] = -13;
      yCorners[0] = -8;
      yCorners[1] = -8;
      yCorners[2] = 0;
      yCorners[3] = 10;
      yCorners[4] = 8;
      yCorners[5] = 10;
      myCenterX = (int)(Math.random()*801);
      myCenterY = (int)(Math.random()*801);
      myColor = (100);
      myXspeed=(Math.random()*3)-1; 
      myYspeed=(Math.random()*3)-1;
      myPointDirection=(Math.random()*361);
  }
void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    if(myCenterX >width)
    {
      myCenterX = 0;
    }
    else if (myCenterX<0)
    {
      myCenterX = width;
    }
    if(myCenterY >height)
    {
      myCenterY = 0;
    } 

    else if (myCenterY < 0)
    {
      myCenterY = height;
    }
  }
}
