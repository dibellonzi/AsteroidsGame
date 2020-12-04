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
      xCorners[5] = -5;
      yCorners[0] = -8;
      yCorners[1] = -8;
      yCorners[2] = 0;
      yCorners[3] = 10;
      yCorners[4] = 8;
      yCorners[5] = 0;
      myCenterX = 350;
      myCenterY = 350;
      while(myCenterX > 320 && myCenterX < 380 && myCenterY > 320 && myCenterY < 380){
      myCenterX = (int)(Math.random()*801);
      myCenterY = (int)(Math.random()*801);
      }
      myColor = (100);
      myXspeed=(Math.random()*2)-1; 
      myYspeed=(Math.random()*2)-1;
      myPointDirection=(Math.random()*361);
  }
void move(){
   turn(myRotateSpeed);
   super.move();
}
}
