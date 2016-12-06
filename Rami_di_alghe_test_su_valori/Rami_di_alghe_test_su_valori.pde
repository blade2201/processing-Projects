ArrayList <ballSystem> BS;
boolean mouse = false;  
ball b1,b2;
PVector location = new PVector(500, 500);;

void setup() {
  size(1000,1000);
  //background(0);
  BS = new ArrayList<ballSystem>();


}

void draw() {
  for (int i = 0; i < BS.size(); i++) {
    BS.get(BS.size()-1).make();
  }
  if(mouse){
    BS.add(new ballSystem(new PVector(mouseX, mouseY)));
  }
  println(BS);
}

void mousePressed() {
 mouse = true;
}

void mouseReleased(){
mouse = false;
}