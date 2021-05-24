class ComputerDog extends Dog{
   int speedX;
   int speedY;
   ComputerDog(int x, int y, PImage img, int speedX, int speedY){
       super(x,y,img);
       this.speedX = speedX;
       this.speedY = speedY;
   }
   void update(){
      if(this.y > width){
        this.y = 0;
      }
      if(this.y < 0){
         this.y = width;
      }
      if(this.x > height){
        this.x = 0;
      }
      if(this.x < 0){
        this.x = height; 
      }
      x+=speedX;
      y+=speedY;
  }
  void setSpeed(int x,int y){
    speedX = x;
    speedY = y;
  }
  
  
}
