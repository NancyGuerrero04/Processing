
void setup(){
  size(400,400);
  
}
int hopX = 200;
int hopY = 380;
  Car car = new Car(300, 250,30 , 25);
  
void draw(){
  background(204,255,229);
  fill(128,255,70);
  ellipse(hopX, hopY, 20, 20);
  
  car.display();
  
} 

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        hopY= hopY-5; 
      //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        hopY = hopY+5;
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
        hopX = hopX +5;
       //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
        hopX= hopX-5;
        //Frog X position goes left
      }
  }
  canvas();
  }
  
  void canvas(){
     if(hopX>400){
       hopX = 395;
     }
     else if(hopX<0){
       hopX=2;
     }
     if(hopY>400){
       hopY = 396;
     }
     else if(hopY==0){
       hopY=2;
     }
   
}

 public class Car{
   int carX = 0; 
  int carY = 0;
  int size = 0;
  int carSpeed = 0;
  
  Car(int carX, int carY, int size, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.size = size; 
    
  }
    void display() 
  {
    fill(0,255,0);
    rect(carX, carY, size, 50);
  }
  
  
   
 }