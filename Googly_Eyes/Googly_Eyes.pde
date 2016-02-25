void setup (){
  size(600,600);
  background(0,0,0);
 
 
 
 
 
 
} 
void draw (){
  fill(255,255,255);
  ellipse(238,300,90,60);
  
  ellipse(350,300,90,60);
  fill(255,255,255);
  fill(0,0,0);
  
  if(mouseX>276){
    mouseX=276;
  }
 if(mouseX<200){
    mouseX=200;
  }
  if(mouseY<280){
    mouseY=280;
  }
  if(mouseY>323){
  mouseY=323;
}
  ellipse(mouseX,mouseY, 20,20);
  ellipse(mouseX+110,mouseY,20,20);
  
  fill(255,255,255);
  ellipse(300,400,60,60);
  
  fill(153,85,34);
  rect(210,240,60,20);
  rect(310,240,60,20);
  
  fill(0,0,0);
  rect(300,371,16,20);
  
  
}
