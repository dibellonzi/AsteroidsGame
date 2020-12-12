float myXspeed, myYspeed;
Spaceship tony = new Spaceship();
Star[] sky = new Star[800];
ArrayList <Bullet> BulletList = new ArrayList <Bullet>();
ArrayList <AsteroidsAgain> Asteroid = new ArrayList <AsteroidsAgain>();
  public void setup()
  {
    size(800,800);
    for(int i = 0; i < sky.length; i++) {
      sky[i]= new Star();
    }
    for(int i = 0; i<16; i++){
 Asteroid.add(new AsteroidsAgain()); 
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
 if(key == 'v') {
   BulletList.add(new Bullet(tony)); 
 }
  }
  public void draw() {
     background(0);
     stroke(0);
    for(int i = 0; i < sky.length; i++) 
    {
      sky[i].show();
    }
  tony.move();
  tony.show();
  for(int i=0; i<Asteroid.size(); i++){
    Asteroid.get(i).show();
    Asteroid.get(i).move();
    Asteroid.get(i).turn(Asteroid.get(i).myRotateSpeed);
  if(dist((float)tony.myCenterX, (float)tony.myCenterY, (float)Asteroid.get(i).myCenterX, (float)Asteroid.get(i).myCenterY) < 20){
    tony.myCenterX = 400;
    tony.myCenterY = 400;
    tony.accelerate(0);
    tony.myXspeed = 0;
    tony.myYspeed = 0;
    break;
  }
    for(int j=0; j<BulletList.size(); j++){
   if(dist((float)BulletList.get(j).myCenterX, (float)BulletList.get(j).myCenterY, (float)Asteroid.get(i).myCenterX, (float)Asteroid.get(i).myCenterY) < 14){
    BulletList.remove(j);
    Asteroid.remove(i);
    break;
    }
   }
  }
  for(int i = 0; i<BulletList.size(); i++){
   BulletList.get(i).show(); 
   BulletList.get(i).move(); 
   }
  }
