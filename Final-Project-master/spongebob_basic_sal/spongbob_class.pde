//declare spongebab class
class Spongebob {
  //declare variables
  float ssz;
  PVector spongesz;
  PVector loc, acc, vel;
  PImage spongebob;
  float jumpspeed;
  boolean isjumping;
  float ground; 
  PImage spongeleft;
  PImage spongejump;
  //spongebob constructor
  Spongebob() {
    //initialize variables
    spongesz= new PVector(75, 100);
    ground=height;
    spongebob= loadImage("basic spongebob edit.png");
    spongeleft= loadImage("spongeleft.png");
    spongejump= loadImage("sponge_jump.png");
    vel= new PVector(0, 0);
    loc= new PVector(width/2, ground-spongesz.y/2);
    acc= new PVector(0, 0);
    jumpspeed=15;
    isjumping=false;
  }
  void display() {
    //display sponge bob
    if (keyCode== LEFT) {
      image(spongeleft, loc.x, loc.y, spongesz.x, spongesz.y);
    } else if (keyCode== ' ') {
      image(spongejump, loc.x, loc.y, spongesz.x, spongesz.y);
    } 
     else {
      image(spongebob, loc.x, loc.y, spongesz.x, spongesz.y);
    }
  }


void move() {
  // move spongebob
  vel.add(acc);
  loc.add(vel);
  //make spongebob jump
  if (isjumping && loc.y +spongesz.y/2>=height) {
    loc.y=height-spongesz.y/2;
    vel.y=0;
    acc.y=0;
    isjumping=false;
  }
  //if right arrow key is pressed, spongebob ,moves right
  if (keyPressed) {
    if (keyCode==RIGHT) {
      loc.x+=1;
    } else {
      loc.x+=0;
    }

    //if left arrow key pressed, spongebob moves left
    if (keyCode==LEFT) {
      loc.x+=-1;
    } else {
      loc.x+=0;
    }
  }
}
void jump() {
  //if jumpig is true, spongebob jumps
  if (!isjumping) {

    vel.y=-8;
    acc.y=.15;
    isjumping=true;
  }
}
}
