void setup()
{
  background(204, 255, 034);
  size(1000,1000,P3D);
}
void draw() {
  if (mousePressed)
  {
    translate(58,48,0);
    rotateY(0.5);
    fill(mouseX,0,0);
    box(40);
  } else
  {
    ellipse(500,400,500,500);
  }
}

