//your variable declarations here
float myXspeed, myYspeed;
Spaceship tony = new Spaceship();
Star[] sky = new Star[800];
  public void setup()
  {
    size(800,800);
    for(int i = 0; i < sky.length; i++) {
      sky[i]= new Star();
    }
  }
  public void draw() {
     background(0);
    for(int i = 0; i < sky.length; i++) 
    {
      sky[i].show();
    }
  tony.move();
  tony.show();
}
public void keyPressed(){
    if(key == ' '){
   tony.accelerate(.08);
 }
 if(key == 's'){
   tony.accelerate(-.08);
}
 if(key == 'a'){
   tony.turn(-15);
 }
 if(key == 'd'){
   tony.turn(15);
 }
 if(key == 'f'){
   tony.hyperspace();
 }
}
