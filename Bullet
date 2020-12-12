class Bullet extends Floater
{
 Bullet(Spaceship tony){
   myCenterX = tony.myCenterX;
   myCenterY = tony.myCenterY;
   myPointDirection = tony.myPointDirection;
   myXspeed = tony.myXspeed;
   myYspeed = tony.myYspeed;
   accelerate(3.5);
 }
 public void show(){
   fill(0,0,255);
   stroke(0);
   ellipse((float)myCenterX, (float)myCenterY,(float)6,(float)6);
 }
 public void move ()
 {
    myCenterX += myXspeed;
    myCenterY += myYspeed;

    if(myCenterX > width || myCenterX<0 || myCenterY >height || myCenterY < 0)
    {
      myCenterX = -100;
      myCenterY= -100;
      myXspeed=0;
      myYspeed=0;
    }
 }
}
