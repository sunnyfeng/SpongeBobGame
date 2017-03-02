class Patrick{
//declare
PImage patrick;
PVector patsz;
PVector loc,vel,acc;

Patrick(){
  //initialize
  patrick = loadImage("patrick.png");
  patsz = new PVector(74,100);
  loc = new PVector (width/2, height/2);
  vel = new PVector (0,0);
  acc = new PVector (0,0);
}

//display image
void display(){
  //set mouse at center of image
 // image(patrick,mouseX-patsz.x/2,mouseY-patsz.y/2);
 image(patrick, loc.x,loc.y);
}

void move(){
  vel.add(acc);
  loc.add(vel);
  
  if (keyPressed){
   if (keyCode == LEFT){
          loc.x-=2;
        }
        if (keyCode == RIGHT){
          loc.x+=2;
        }
  }
}

void jump(){
  if (keyPressed){
    if (key == CODED){
        if (keyCode == UP){
          loc.y-=2;
        }
        if (keyCode == DOWN){
          loc.y+=2;
        }
      
}
}
}

void die(){
  
}


}
