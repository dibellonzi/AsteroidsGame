class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myRNG;
  public Star ()
  {
    myX = (int)(Math.random()*801);
    myY = (int)(Math.random()*801);
    myRNG = (int)(Math.random()*301);
  } 
  public void show() {
    if(myRNG <= 75) {
    fill(255,255,0);
    stroke(255,225,0);
    ellipse(myX,myY,6,6);
  } else if(75 < myRNG && myRNG <= 150) {
    fill(255,150,0);
    stroke(255,150,0);
    ellipse(myX,myY,6,6);
  } else if(150 < myRNG && myRNG <= 225) {
    fill(255,100,0);
    stroke(255,100,0);
    ellipse(myX,myY,7,7);
  } else if(225 < myRNG && myRNG <= 300) {
    fill(255,225,195);
    stroke(255,225,195);
    ellipse(myX,myY,5,5);
  }
}
  }
