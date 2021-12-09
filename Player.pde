public class Player {
public PVector pos, vel, size;
public boolean pActive = true;
public final int SIZE = 50;  
public final int playerHP = 3;
private final int SPEED = 20;

public Player(int x, int y){
 pos = new PVector(x,y); 
}

public void show() {
 fill(178,190,181);
 square(pos.x,pos.y,SIZE); 
}

public void move() {
pos.add(vel);
}
 
 public boolean canMove() {
    boolean canMove;
    PVector newPos = PVector.add(pos, vel);
    if (newPos.y < world.MARGIN || newPos.y + SIZE > world.size.y + world.MARGIN || newPos.x < world.MARGIN) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
  
}
