int birdX = 40;
int birdY;
int width;
int height;
double birdYVelocity = 0;
double gravity = .08;
int pipeX;
int pipeY;
int pipe2X;
int pipe2Y;
int random = (int) random(100,400);
int score; 

void setup(){
  size(400,500);

}

void draw(){
  
  background(204, 255, 255);
  fill(255, 102,102);
  ellipse(birdX, birdY, 20, 20);
  
 
  fill(0, 136, 68); // This is my first pipe
  rect(pipeX, 0, 40, pipeY);
  
  
  fill(0, 136, 68); // This is my second pipe
  rect(pipe2X, 400, 40, pipe2Y);
  
  
  
  pipeX-=2;
  pipe2X-=2;
  
  if(birdX > pipeX && birdX < pipeX + 40){
  boolean hitFirstPipe = intersects(birdX, birdY, pipeX, pipeY, 40);
  if(hitFirstPipe){
    
  }
  else{
    text("End Game" + pipeY + "birdY" + birdY, 200, 200);
  }
  }
  if(pipeX == -40){ // This moves the pipe in a new location after it leaves the screen 
    pipeX = 400;
    int random = (int) random(100,400);
    pipeY = random;
    
  }
    
  if(pipe2X == -40){
    pipe2X = 400; 
   
    pipe2Y = random;
    
    
  }
  
  birdY -= birdYVelocity;
  birdYVelocity -= gravity;
  
  
}

void mousePressed(){ // This means when the mouse is clicked, the bird moves up
  birdYVelocity+=2;
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}


