public class Enemy {
 public PVector pos, vel; 
 public boolean eActive = true;
 public  int eHp = 4;
 public final int SIZE = 50;
 private int SPEED = (int)random(10);
 
 
 public Enemy(int x, int y){
 pos = new PVector (x,y);
if(SPEED < 5) SPEED = 5;
 vel = new PVector (0,SPEED);
 }
 
 public void show(){
  fill(255,255,255);
  square(pos.x,pos.y, SIZE); 
 }
 
 public void move(){
 pos.add(vel);
 }
public void collides(Player player){
if (this.pos.x >= player.pos.x
&& this.pos.x <= player.pos.x +player.SIZE
&& this.pos.y >= player.pos.y
&& this.pos.y <= player.pos.y + player.SIZE){
player.playerHP--;
  
  if (player.playerHP == 0) player.pActive = false;
  
  eActive = false;
}
}
}
