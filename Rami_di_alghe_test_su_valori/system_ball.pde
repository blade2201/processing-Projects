class ballSystem {
  ArrayList<ball> ballSystem;
  int numBall;
  PVector origin;

  ballSystem(PVector location) {
    origin = location;
    numBall = 12;                                //numero palle che si rimpiccioliscono
    ballSystem = new ArrayList<ball>();
  }
  void make() {
    for (int i = 0; i < numBall; i++) {
      ballSystem.add(new ball(origin));
    }     
    for (int i = 0; i < numBall; i++) {      
      ballSystem.get(i).run();
    }
  }
}