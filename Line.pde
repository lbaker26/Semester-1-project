public class Line {
public PVector pos;
public final int SIZE = 30;
}

public Line(int x, int y) {
   pos = new PVector(x,y);  
}

public void show() {
 square(pos.x,pos.y, SIZE); 
}
