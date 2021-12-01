Line[] lines = new Line[50000];
public void setup() {
  background(225);
  size(800, 600);

}//end of setup

public void draw(){
if(mousePressed && mouseButton == LEFT){
  
  spawnLine(); 
}
}//end of draw
public void spawnLine(){
//if(mousePressed && mouseButton == LEFT){
  for (int x = 0; x < lines.length; x++){
  //Line lines = new Line(mouseX,mouseY);
  lines[x] = new Line(mouseX,mouseY);
}
}//end of spawnLine
