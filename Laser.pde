public class Laser {
  private PVector pos, vel, size;
  private boolean active = true;
  
  public Laser(PVector pos) {
   this.pos = pos; 
   vel = new PVector(0,-30);
    size = new PVector(4,10);
  }
  public void show(){
    noStroke();
    fill (255,0,0);
    rect (pos.x,pos.y,size.x,size.y);
  }
  public void move() {
   pos.add(vel); 
    
  }
  public void collides(Enemy e){
  if (this.pos.x >= e.pos.x
  && this.pos.x <= e.pos.x + e.SIZE
  && this.pos.y >= e.pos.y
  && this.pos.y <= e.pos.y + e.SIZE){
   e.eHp--; 
   if(e.eHp == 0)
    e.eActive = false;
    active = false;
  }
    
    
    
  }
}
