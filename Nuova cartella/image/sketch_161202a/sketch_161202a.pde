PImage parrot;
float r;
int x;
int y;

void setup() {
  size(1024, 768);
  background(0);
  parrot = loadImage("parrot.jpg");
}

void draw() {
  for(int i = 0 ; i < 500; i++){
  float x = random(width);
  float y = random(height);
  
  //color c= parrot.pixels[index];
  color c = parrot.get(int(x),int(y));
  fill(c);
  noStroke();
  ellipse(x,y,10,10);
  }

}