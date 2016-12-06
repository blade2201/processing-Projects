class ball {

  float dim, initx, inity, randomx, randomy;
  PVector speed;
  PVector  loc =  new PVector(mouseX, mouseY);
  int  r, g, b;
  float choice = random(1);

  ball(PVector location) {
    dim = int(random(5, 80));
    loc = location;
    r = int(random(255));
    g = int(random(255));
    b = int(random(255));
    speed = new PVector();

    if (choice > 0.5) {
      speed.x = random(-5, 5);
    } else {
      speed.y = random(-5, 5);
    }

    //randomx = random(100);
    //randomy = random(100);
    //if (randomx < 25) {
    //  speed.x = -2;
    //} else if (randomx < 50) {
    //  speed.x = -1;
    //} else if (randomx < 75) {
    //  speed.x = +1;
    //} else {
    //  speed.x = +2;
    //}
    //if (randomy < 25) {
    //  speed.y = -2;
    //} else if (randomy < 50) {
    //  speed.y = -1;
    //} else if (randomy < 75) {
    //  speed.y = +1;
    //} else {
    //  speed.y = +2;
    //}
    //movimento fisso per ogni cerchio
    initx = loc.x;
    inity = loc.y;
  }

  void run() {
    display();
  }
  void moveBall() {

     if (dim > 0){
      dim = dim - 2;  
    if (choice > 0.5) {
      randomy = random(100);
      if (randomy < 25) {                          //movimenti casuali ogni istante
        speed.y = -5;
      } else if (randomy < 50) {
        speed.y = -3;
      } else if (randomy < 75) {
        speed.y = +3;
      } else {
        speed.y = +5;
      }
    } else {
      randomx = random(100);
       if (randomx < 25) {
      speed.x = -2;
    } else if (randomx < 50) {
      speed.x = -1;
    } else if (randomx < 75) {
      speed.x = +1;
    } else {
      speed.x = +2;
    }
    }

    loc.add(speed);
    float d = dist(initx, inity, loc.x, loc.y);          //distanza di attraversamento dei cerchi
    if (d > 4000) { //||x > width-(dim / 2) || x < (dim / 2) || y < (dim / 2) || y > height-(dim / 2) 
      speed.x = 0;
      speed.y = 0;
    }
     }        //velocità di diminuzione dimensione cerchi ( se modificato modificare numero in variabile dim)
  }

  void display() {
    moveBall();
    fill(r, g, b, 100);
    ellipse(loc.x, loc.y, dim, dim);
  }
}