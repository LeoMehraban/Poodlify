
class Dog{
  int x;
  int y;
  PImage img;
  boolean poodled;
  Dog(int x_, int y_, PImage img_){
      this.x = x_;
      this.y = y_;
      this.img = img_;
      poodled = false;
  }
  void show(){
     image(this.img, this.x, this.y, 50,50);
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
  }
  void setSpeed(int _, int __){}
  
  void setImage(PImage img){
    this.img = img;
  }
  
  void poodlify(Dog dog, int radius){
    float dist = dist(this.x,this.y, dog.x,dog.y);
    if(dist <= radius){
      dog.setImage(this.img);
    }
    
  }
}
