Laser[] lasers = new Laser[50000];
Player player;
Enemy[] enemy = new Enemy[100];
int lasersFired = 0;
int i = 1;
int o = 0;
public void setup(){
 size(800,800); 
 
 player = new Player(350,750);
 
}

public void draw() {
background(0,0,0);
  if (mousePressed) fireLaser();
player.show();
player.move();
enemy.show();
enemy.move();
if(i > o){
spawnEnemy();
o = o + 1 ;
}
//laser
for (int i = 0; i < lasers.length; i++) {
  if (lasers[i] != null && lasers[i].active) {
   lasers[i].show();
   lasers[i].move();
 }
}


}

public void keyPressed(){
 if(key == 'a') player.vel.x = -player.SPEED;
 else if (key == 'd') player.vel.x = player.SPEED;
 else if (keyCode == LEFT) player.vel.x = -player.SPEED;
 else if (keyCode == RIGHT) player.vel.x = player.SPEED;
}
public void keyReleased(){
 if(key == 'a') player.vel.x = 0;
 if(key == 'd') player.vel.x = 0;
 if(keyCode == LEFT) player.vel.x = 0;
 if(keyCode == RIGHT) player.vel.x = 0;   
}



public void fireLaser() {
  Laser laser = new Laser(new PVector(player.pos.x+23,player.pos.y - 20));
  lasers[lasersFired] = laser;
  lasersFired++;
  print(lasersFired);
  print(player.pos);
}
public void spawnEnemy(){
 for (int x = 0; x < enemy.length; x++); 
  int n = (int) random(20);
  int m = (int) random(20);
  if(n < 5) n = 5;
  else if(n < 10 && n>5)n = 10;
  else if(n < 15 && n > 10 && n > 5)n = 15;
  else if(n < 20 && n > 15 && n > 10 && n > 5) n = 20;
  
  if(m < 5) m = 5;
  else if(m < 10 && m>5)m = 10;
  else if(m < 15 && m > 10 && m > 5)m = 15;
  else if(m < 20 && m > 15 && m > 10 && m > 5) m = 20;
  enemy.vel.x = n;
  enemy.vel.y = m;
  enemy.pos.x = (int)random(800);
  
}




/*public void spawnPlayer() {
for (int i = 0; i < player.length; i++){
player[i] = new Player(100, 350);  
}
  */
