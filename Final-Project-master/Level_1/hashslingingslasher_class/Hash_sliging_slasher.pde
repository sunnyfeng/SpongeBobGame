//declare hash slinging slasher class
class Hashslingingslasher {
  //declare variables
  PVector hashsz;
  PVector loc, vel, acc;
  PImage hashslinger;
  //hash slinging slasher constructor
  Hashslingingslasher() {
    //initialize variables
    hashsz= new PVector(100, 95);
    loc= new PVector(width/2, height-hashsz.y);
    vel=new PVector(7,0);
    acc= new PVector(0,0);
    hashslinger= loadImage("hash_slinging_slasher.png");
  }
  void display(){
    //display hash slinger image
   image(hashslinger,loc.x,loc.y, hashsz.x,hashsz.y); 
  }
  void move(){
    //move hash slinger
   vel.add(acc);
  loc.add(vel);
  //if hash slinger touches right screen then vel reverses
 if(loc.x+hashsz.x>width){
  vel.x*=-1;
 } 
 //if hash slinger toughes left screen then vel reverses
 if(loc.x-hashsz.x/11<0){
  vel.x*=-1; 
 }
  }
}

