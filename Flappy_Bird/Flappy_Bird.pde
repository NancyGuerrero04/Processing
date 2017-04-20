int birdX = 40;
int birdY;
int width;
int height;
double birdYVelocity = 0;
double gravity = .08;
int pipeX;
int pipeY;
void setup(){
  size(400,500);

}

void draw(){
  background(204, 255, 255);
  fill(255, 102,102);
  ellipse(birdX, birdY, 40, 40);
  
 
  fill(0, 136, 68);
  rect(pipeX, pipeY, 40, 200);
  
  pipeX-=2;
  if(pipeX == -40){
    pipeX = 400;
    int random = (int) random(100,400);
    pipeY = random;
    
    
  }
  
  
  
  
  birdY -= birdYVelocity;
  birdYVelocity -= gravity;
  
  
  
} 
void mousePressed(){
  birdYVelocity+=2;
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength){
 
return true;
}
else {

return false;
}
}