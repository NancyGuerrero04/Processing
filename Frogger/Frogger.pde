void setup(){
  size(400,400);
  
}

int hopX = 200;
int hopY = 380;
  Car car = new Car(300, 100,30 , 15);
  Car car2 = new Car(200, 30,30 , 10);
  Car car3 = new Car(50, 200,30 , 6);
  Car car4 = new Car(350, 300,30 , 4);
  Car car5 = new Car(100, 320,30 , 2);

void draw(){
  background(204,255,229);
  fill(128,255,70);
  ellipse(hopX, hopY, 20, 20);
  car.display();
  car2.display();
  car3.display();
  car4.display();
  car5.display();
  car.moveLeft();
  car2.moveRight();
  car3.moveLeft();
  car4.moveRight();
  car5.moveLeft();
  
  car.intersects(car);
  car2.intersects(car2);
  car3.intersects(car3);
  car4.intersects(car4);
  car5.intersects(car5);


} 

void keyPressed(){
  if(key == CODED){
      if(keyCode == UP){
        hopY= hopY-10; 
      //Frog Y position goes up
      }
      else if(keyCode == DOWN){
        hopY = hopY+5;
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT){
        hopX = hopX +5;
       //Frog X position goes right
      }
      else if(keyCode == LEFT){
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
    this.carSpeed = carSpeed;
  }
  int getX(){
    return this.carX;
  }
  
  int getY(){
    return this.carY;
  } 
  
  int getSize(){
    return this.size;
  }
    
  boolean intersects(Car car){
    if ((hopY > car.getY() && hopY < car.getY()+50) && (hopX > car.getX() && hopX < car.getX()+car.getSize())){
          hopY = 398;
          return true;
    }
    else {
        return false;
    
  }
  }
 void moveLeft(){
   this.carX-= this.carSpeed;
   
  if(carX < 0){
    carX = 390;
  }
 }
   
    
  void moveRight(){
    this.carX += this.carSpeed;
    
    if(carX>398){
     carX = 2;
    }
   } 
   
   
  
  void display() {
    fill(0,255,0);
    rect(carX, carY, size, 30);
    
  
  }
}
