int width = 600;
int height = 600; 
void setup () {
  size(600,600);
  //background(255,255,255);
  for(int i=0; i<7; i ++ ){
    if(width%200==0){
      fill(300,0,0);
    }else {
      fill(255,255,255);
    }
    ellipse (300,300, width, height);
    width-=100;
    height-=100;
    
    
  }
  
  
}

void draw () {


  
  
  

}
