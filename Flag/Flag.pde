void setup() {
 
  size(800, 800);
  fill(0,119,34);
  
  rect(0, 0, 800/3,800);
  fill(255,255,255);
  
  rect(800/3,0,800/3,800);
  fill(187,0,51);
  rect(533.33333,0,800/3,800);
}

void draw() {
  PImage flag;
  flag = loadImage("flag.png");
  image(flag,323,340);
   //2. make it a nice color
fill(300,100,120);
   //3. if the mouse is pressed, fill the circle with a different color          
if(mousePressed){
  fill(120,200,300);
}
   //1. draw an ellipse
  
  
}
// Copyright Wintriss Technical Schools 2013




