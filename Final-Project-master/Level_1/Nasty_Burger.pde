//LEVEL 1 NASTY BURGER OBSTACLE

class Nastyburger {
  
  //declare variables
  
  //size, location, velocity, acceleration
  PVector sz;
  PVector loc, vel, acc;
  
  //image
  PImage nastyburger;
  
  //to set x location in parameters
  float locx;

  Nastyburger(float x) {
    
    //initialize variables
    
    //specify x location in parameters
    locx= x;
    
    //initialize image
    nastyburger= loadImage("nasty_patty.png");
    
    //set size
    sz= new PVector(nastyburger.width/2, nastyburger.height/2);
    
    //moving in x direction
    vel= new PVector(1, 0);
    
    //location
    loc= new PVector(locx, height-sz.y/2);
    
    //no acceleration
    acc= new PVector(0, 0);
    
  }
  
  //display nasty patty
  void display() {
    image(nastyburger, loc.x, loc.y, sz.x, sz.y);
  }
  
  //move nasty patty
  void move() {
    vel.add(acc);
    loc.add(vel);

    //bounce off right screen
    if (loc.x+sz.x/2>width) {
      vel.x*=-1;
    }
    
    //bounce off left screen
    if (loc.x-sz.x/2<0) {
      vel.x*=-1;
    }
  }

  //interact with barrels
  void bounceOffBarrels(Barrel a, Barrel b) {
    
    //if nasty burger touches kelp of Barrel a, change direction
    if (loc.x-sz.x/2 < a.loc.x + a.totalW/2) {       // a = barrel on left side
      vel.x*=-1;
    }
    
    //if nasty burger touches kelp of Barrel b, change direction
    if (loc.x+sz.x/2> b.loc.x - b.totalW/2) {    //b = barrel on right side
      vel.x*=-1;
    }
  }

  //when touching Spongebob, have him lose 1 life
  void hurtSponge(Spongebob s) {
    
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y) < sz.x/2+s.sz.x/2) {
      s.life--;
      s.loc.x = s.sz.x/2;   // send spongebob back to beginning
    }
  }
}

