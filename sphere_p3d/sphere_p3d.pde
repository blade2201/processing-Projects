void setup()
{
    size(450, 200, P3D);
}

void draw()
{
    background(245, 238, 184);
    fill(246, 225, 65);
    
    lights();
    noStroke();
    
    pushMatrix();
    translate(width/4, height/2);
    rotateY(radians(frameCount));
    sphereDetail(30); // standard
    sphere(40);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotateY(radians(frameCount));
    sphereDetail(6);
    sphere(40);
    popMatrix();

    pushMatrix();
    translate(width/2 + width/4, height/2);
    rotateY(radians(frameCount));
    sphereDetail(5,50);
    sphere(40);
    popMatrix();
}