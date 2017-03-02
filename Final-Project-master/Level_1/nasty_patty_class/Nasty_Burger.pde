//declare nasty burger class
class Nastyburger {
//declare variables
  PVector pattysz;
  PVector loc, vel, acc;
  PImage nastyburger;
//  int life;
//nastyburger constructor
  Nastyburger() {
    //initialize variables
    pattysz= new PVector(100, 50);
    nastyburger= loadImage("nasty_patty.png");
    vel= new PVector(1, 0);
    loc= new PVector(width/2, height-pattysz.y/2);
    acc= new PVector(0, 0);
//    life=;
  }
  void display() {
    //display nasty patty
    image(nastyburger, loc.x, loc.y, pattysz.x, pattysz.y);
  }
  void move() {
    //move nasty patty
    vel.add(acc);
    loc.add(vel);
    //bounce off right screen
    if (loc.x+pattysz.x/4>width) {
      vel.x*=-1;
    }
    //bounce off left screen
    if (loc.x-pattysz.x/5<0) {
      vel.x*=-1;
    }
  }
  //when touhing character, hurt him
//  void hurtsponge() {
//  }
}

