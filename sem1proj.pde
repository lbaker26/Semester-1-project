Laser[] lasers = new Laser[50000];
Player player;
int z = (int)random(100);
Enemy[] enemy = new Enemy[z];
int lasersFired = 0;


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




  player.show();
  player.move();
  for (int i = 0; i < enemy.length; i++) {
    if (enemy[i].eActive == true) {
      enemy[i].show();
      enemy[i].move();
      print(enemy[i].pos.x); 
  }
  //  if(enemy[i].pos.y > 800) enemy[i].eActive = false;
  for (int x = 0; x < lasers.length; x++){
   lasers[x].collides(enemy[i]); 
 }

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
  print(lasersFired);
  print(player.pos);}
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
