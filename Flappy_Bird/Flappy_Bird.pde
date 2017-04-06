int birdX;
int birdY;
int width;
int height;
double birdYVelocity = 0;
double gravity = 0.5;
int pipeX;
void setup(){
  size(400,400);
  background(204, 255, 255);
}

void draw(){
  fill(255, 102,102);
  ellipse(20, 380, 40, 40);
  
  fill(0, 136, 68);
  rect(180, 200, 40, 200);
  
  pipeX = pipeX + 2;
  
} 
void mousePressed(){
  birdYVelocity++;
}
