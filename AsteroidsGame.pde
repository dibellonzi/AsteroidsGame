float myXspeed, myYspeed;
Spaceship tony = new Spaceship();
Star[] sky = new Star[800];
int numAsteroids = 15;
ArrayList <AsteroidsAgain> AsteroidsAgain = new ArrayList <AsteroidsAgain>();
  public void setup()
  {
    size(800,800);
    for(int i = 0; i < sky.length; i++) {
      sky[i]= new Star();
    }
    for(int i = 0; i<numAsteroids; i++){
 AsteroidsAgain.add(new AsteroidsAgain()); 
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
  for(int i=0; i<numAsteroids; i++){
    AsteroidsAgain.get(i).show();
    AsteroidsAgain.get(i).move();
    AsteroidsAgain.get(i).turn(AsteroidsAgain.get(i).myRotateSpeed);
  if(dist((float)tony.myCenterX, (float)tony.myCenterY, (float)AsteroidsAgain.get(i).myCenterX, (float)AsteroidsAgain.get(i).myCenterY) < 20){
    AsteroidsAgain.remove(i);
    numAsteroids--;
    i--;
   }
  }
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
