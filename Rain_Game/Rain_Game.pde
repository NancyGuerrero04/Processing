int raindropx=(int)random(1000);
int raindropy=100;
int score= 0;
int speed=10;
int water=0;
PImage backgroundImage;


void setup() {
  size (1000, 1000);
  backgroundImage = loadImage("Cloudy Background.png");
   image(backgroundImage,0,0);
   
}

void draw () {
  if (score>=5) {
   
    
    fill(119, 255, 34);
    textSize(40);
    text("Congratulations, you won!!!", 230, 500);
  } else {
    image(backgroundImage,0,0,1000,1000);
    fill (68, 187, 204);
    stroke(68,187,204);
    ellipse(raindropx, raindropy, 10, 10);
    
    raindropy= raindropy+speed;
   fill(204,0,51);
   stroke(204,0,51);
    rect(mouseX,900,100,100);
    
     fill(68, 187, 204);
    rect(mouseX, 1000-water*100/5, 100, 100);
    
    
    if (raindropy>1000) { //Random raindrops
      checkCatch(raindropx);
      raindropy=100+ speed;
      raindropx=(int)random(1000);
      print(score);
    }
  }
}
void checkCatch(int x) { //Checks if you caught raindrop
  if (x > mouseX && x < mouseX+100){
    speed++;
  score++;
  water++;}
  else if (score>0) {
    water--;
    score--;
    
    
  }

}
