void setup (){
size (1000,1000); 
background (loadImage ("friends.jpeg"));}
void draw (){
 textSize(60);
  text("Grumpy Cat", 300, 100);
  if (mousePressed){
    
  ellipse(mouseX,mouseY,50,50);
  fill(random(255),random(255), random(255));
  
}}
