int birdX = 40;
int birdY;
int width;
int height;
double birdYVelocity = 0;
double gravity = .05;
int pipeX;
void setup(){
  size(400,400);

}

void draw(){
  background(204, 255, 255);
  fill(255, 102,102);
  ellipse(birdX, birdY, 40, 40);
  
  fill(0, 136, 68);
  rect(pipeX, 200, 40, 200);
  
  pipeX-=2;
  if(pipeX == -40){
    pipeX = 400;
  }
  
  
  birdY -= birdYVelocity;
  birdYVelocity -= gravity;
  
  
  
} 
void mousePressed(){
  birdYVelocity++;
}