public class Enemy {
 public PVector pos, vel; 
 public boolean eActive = true;
 public  int eHp = 2;
 public final int SIZE = 20;
 
 public Enemy(int x, int y){
 pos = new PVector (x,y);
 vel = new PVector (0,0);
 }
 
 public void show(){
  fill(255,255,255);
  square(pos.x,pos.y, SIZE); 
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
