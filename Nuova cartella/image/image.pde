PImage source;
PImage destination;
float r;
int x;
int y;

void setup() {
  size(1024, 768);
  source = loadImage("parrot.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void draw() {
  

  //image(img, 0, 0); 
  loadPixels();
  source.loadPixels();
  destination.loadPixels();
  for (x = 1; x < width; x++) {
    for (y = 1; y < height; y++) {
      int loc = x + y*width;
      float r = red(source.pixels[loc]);
      float g = green(source.pixels[loc]);
      float b = blue(source.pixels[loc]);
      
      

      pixels[loc] = color(r,g,b);
    }
  }
  
  
  ellipse(x,y,20,20);

  updatePixels();
}