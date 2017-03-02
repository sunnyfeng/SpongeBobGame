//LEVEL 1 HASH SLINGING SLASHER OBSTACLE

class Hash {

  //declare variables

  //size, location, velocity, acceleration
  PVector sz;
  PVector loc, vel, acc;

  //hash image
  PImage hashslinger;

  //Is he currently jumping?
  boolean hashJumping = false;

  //to set the hash's x location
  float locx;

  //delay for jumping
  float hashDelay;
  float hashFinalDelay;


  Hash(float x) {

    //initialize variables

    //be able to decide where location is
    locx = x;  

    //no acceleration or velocity at first
    vel=new PVector(0, 0);
    acc= new PVector(0, 0);

    //image of hash slinging slasher
    hashslinger= loadImage("hash_slinging_slasher.png");

    //size
    sz = new PVector(hashslinger.width/4, hashslinger.height/4);

    //location
    loc= new PVector(locx, height+sz.y/2);

    //give delay between jumps
    hashDelay = 0;
    hashFinalDelay = 120;
  }

  //display hash slinger image
  void display() {

    //hole he jumps out of
    fill(0);
    ellipse(loc.x, height, sz.x, 10);

    //hash slinging slasher
    image(hashslinger, loc.x, loc.y, sz.x, sz.y);
  }


  //move hash slinger
  void move() {

    vel.add(acc);
    loc.add(vel);

    //have delay increase every frame
    hashDelay ++;
  }

  //hashslinger jumping
  void jump() {

    //if it's not jumping and delay equals final delay...
    if (!hashJumping && hashDelay == hashFinalDelay) {

      //...then jump
      vel.y=-8;
      acc.y=.15;

      //reset delay
      hashDelay=0;

      //is currently jumping
      hashJumping=true;
    }

    //once it comes back to the ground...
    if (hashJumping && loc.y +sz.y/2>=height) {

      // set it underneath the hole
      loc.y=height-sz.y/2;

      //end jumping
      hashJumping=false;
    }
  }

  //kill Spongebob
  void killSponge(Spongebob s) {

    //if in contact with Spongebob, 
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y) < sz.x/2+s.sz.x/2) {

      //lose 1 life and send him back to beginning
      s.life--;
      s.loc.x = s.sz.x/2;
    }
  }
}

