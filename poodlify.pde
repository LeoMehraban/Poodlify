
int dogAmount = 21;
int poodleCount = 0;

Dog[] dogs = new Dog[dogAmount];
String[] fileNames = {"dog2.png", "dog3.png", "dog4.png"};
PImage poodle;
int time;

//int score = 0;

void setup(){
   size(600,600);
   background(255);
   poodle = loadImage("dog1.png");
   for(int i = 0; i < dogAmount; i++){ 
     Dog dog;
     int y = floor(random(0, height));
     int x = floor(random(0, width));
     if(i == 0){
       dog = new Dog(x,y,poodle);
     } else {
       dog = new ComputerDog(x,y,loadImage(fileNames[floor(random(0, fileNames.length))]),floor(random(1,5)), floor(random(1,5)));
     }
     dogs[i] = dog;
   }

}
void keyPressed(){
   if(keyCode == RIGHT){
      dogs[0].x += 20;
   }
   if(keyCode == LEFT){
      dogs[0].x -= 20;
   }
   if(keyCode == UP){
      dogs[0].y -= 20;
   }
   if(keyCode == DOWN){
      dogs[0].y += 20;
   }
   if(key == ' '){
     for(int i = 1; i < dogAmount; i++){
       dogs[0].poodlify(dogs[i], 50);
     }
   }
  
}
int frames = 0;
void draw(){
  frames++;
  background(255); 
  textAlign(CENTER);
  if(frames % 60 == 0){
    time++;
  }
  for(Dog dog : dogs){
    if(dog.img == poodle && !dog.poodled){
      poodleCount++;
      dog.poodled = true;
    }
    dog.update();
    dog.show();
    if(frames != 0 && frames % floor(random(30,60)) == 0){
      if(dog != dogs[0]){
        dog.setSpeed(floor(random(1,5)),floor(random(1,5)));
      }
    }
  }
 
   
  fill(0);
  text("A poodle alone in a world of other types of dogs", width/2, 30);
  text("Get close to a dog and press space to \"Poodle-ify\" it.", width/2, height - 10);
  text("Count: " + String.valueOf(poodleCount-1), 30, 30);
  if(poodleCount == dogAmount){
    imageMode(CENTER);
    noLoop();
    background(255);
    textSize(20);
    text("You win!", width/2, height/2);
    text("Time (In seconds): " + String.valueOf(time), width/2, height - 10);
    Dog dog = new Dog(width/2, height/2 + 50, poodle);
    dog.show();
  }
}
  
  
