Laser[] lasers = new Laser[50000];
Player[] player = new Player[1];
int lasersFired = 0;

public void setup(){
 size(800,800); 
 background(0,0,0);
 spawnPlayer
}

public void draw() {
if (mousePressed) fireLaser();
//laser
for (int i = 0; i < lasers.length; i++) {
  if (lasers[i] != null && lasers[i].active) {
   lasers[i].show();
   lasers[i].move();
 }
}
//player
for (int i = 0; i < Player.length; i++) {
if (Player.pActive == true){
 Player[i].show();
 player[i].move();
}
  

}

}

public void keyPressed(){
 if(key == 'a') player.vel.x = -player.SPEED;
 else if (key == 'd') player.vel.x = player.SPEED;
 else if (keyCode == LEFT) player.vel.x = -player.SPEED;
 else if (keyCode == RIGHT) player.vel.x = player.SPEED;
}



public void fireLaser() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
  print(lasersFired);
}



public void spawnPlayer() {
for (int i = 0; i < player.length; i++){
player[i] = new Player(100, 350);  
}
  
}
