Laser[] lasers = new Laser[50000];
Player player;
Enemy[] enemy = new Enemy[200];
int lasersFired = 0;
boolean enemyAct = true;
int enemiesDestroyed = 0;
int enemiesRequired = 0;
public void setup() {
  size(800, 1000);

  player = new Player(350, 750);
  spawnEnemy();
}

public void draw() {
  background(0, 0, 0);
  if (mousePressed) {
    fireLaser();
  }
  if (frameCount > 3600){
  enemyAct = false;  
  player.pActive = false;
   fill(255,255,255);
   textAlign(CENTER);
   text("Congratulations you survived the boulders!",400,400);
  }
  
int playerHp = player.playerHP;
if (frameCount < 300){
textAlign(CENTER);
  textSize(22);
  text("Welcome to my game! your goal is to destroy as many boulders as possible without dying",400,360);
  text("or to just survive until the time is up! good luck and have fun!",400,400);
  text("use a and d or the arrow keys to move and left mouse button to move",400,440);
}
  if (player.pActive == true){
    if (frameCount > 300){
    player.show();
    player.move();
     }
  textAlign(RIGHT);  
  textSize(20);
  text("HP:", 700, 100);
  text(playerHp,720,100);
}
  
  if (player.pActive == false){
  textAlign(CENTER);
  textSize(40);
  text("You died!", 400, 400);  
  enemyAct = false;  
 
  }
  if (frameCount > 300){ 
  for (int i = 0; i < enemy.length; i++) {
    if (enemy[i].eActive == true) {
      enemy[i].show();
      enemy[i].move();
    
      enemy[i].collides(player);
  }
   if(enemy[i].pos.y > 800)enemy[i].eActive = false;
   
   if(enemyAct == false){
    enemy[i].eActive = false;
   }
   if(enemy[i].eActive==false){
   enemiesDestroyed = enemiesDestroyed + 1;
   
   enemy[i].pos.x = 90000;  
 }
  //  if(enemy[i].pos.y > 800) enemy[i].eActive = false;
  for (int x = 0; x < lasers.length; x++){
  if (lasers[x] != null){
    lasers[x].collides(enemy[i]); 
  }
 }
  


}
  print(enemiesDestroyed);
 
  }

/*if(i > o){
 spawnEnemy();
 o = o + 1 ;
 }*/
//laser
for (int e = 0; e < lasers.length; e++) {
  if (lasers[e] != null && lasers[e].active) {
    lasers[e].show();
    lasers[e].move();
  }
}

}


public void keyPressed() {
  if (key == 'a') player.vel.x = -player.SPEED;
  else if (key == 'd') player.vel.x = player.SPEED;
  else if (keyCode == LEFT) player.vel.x = -player.SPEED;
  else if (keyCode == RIGHT) player.vel.x = player.SPEED;
}
public void keyReleased() {
  if (key == 'a') player.vel.x = 0;
  if (key == 'd') player.vel.x = 0;
  if (keyCode == LEFT) player.vel.x = 0;
  if (keyCode == RIGHT) player.vel.x = 0;
}



public void fireLaser() {
  Laser laser = new Laser(new PVector(player.pos.x+23, player.pos.y - 20));
  lasers[lasersFired] = laser;
  lasersFired++;
  }
public void spawnEnemy() {


  for (int i = 0; i < enemy.length; i++) {
    int n = (int)random(800);
    int m = (int)random(-5000);
    enemy[i] = new Enemy(n, m);
  }
}

/*public void spawnPlayer() {
 for (int i = 0; i < player.length; i++){
 player[i] = new Player(100, 350);
 }
 */
