float myXspeed, myYspeed;
Spaceship tony = new Spaceship();
Star[] sky = new Star[800];
int numAsteroids = 15;
ArrayList <AsteroidsAgain> Asteroid = new ArrayList <AsteroidsAgain>();
  public void setup()
  {
    size(800,800);
    for(int i = 0; i < sky.length; i++) {
      sky[i]= new Star();
    }
    for(int i = 0; i<numAsteroids; i++){
Asteroid.add(new AsteroidsAgain()); 
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
    Asteroid.get(i).show();
    Asteroid.get(i).move();
    Asteroid.get(i).turn(Asteroid.get(i).myRotateSpeed);
  if(dist((float)tony.myCenterX, (float)tony.myCenterY, (float)Asteroid.get(i).myCenterX, (float)Asteroid.get(i).myCenterY) < 20){
    Asteroid.remove(i);
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
