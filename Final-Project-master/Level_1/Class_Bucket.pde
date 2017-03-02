//LEVEL 2 BUCKETS

class Bucket {
  
  //declare
  PVector loc, vel, acc;
  PVector sz;

  //life and death
  float bLife;
  float decay;

  //picture
  PImage bucketpic;

  Bucket() {
    //initialize variables

    //location
    loc = new PVector(width/2, 0);

    //velocity
    vel = new PVector(random(-10, 10), random(-3, 3));

    //downward acceleration
    acc = new PVector(0, .15);

    //Bucket image
    bucketpic = loadImage("bucket.png");   //<--- LATER: get chum bucket bucket picture

    //size
    sz = new PVector(bucketpic.width/4, bucketpic.height/4);

    //Age of bucket
    bLife = 255;
    decay = 255;
  }


  //Move Buckets
  void move() { 
    vel.add(acc);
    loc.add(vel);
  }


  //Display Buckets
  void display() {    
    image(bucketpic, loc.x, loc.y, sz.x, sz.y);
  }


  //when leave screen, kill off
  void leave() { 
    if (loc.x + sz.x/2 > width || loc.x - sz.x/2 < 0) {
      bLife-=decay;
    }
    if (loc.y - sz.y/2 > height) {
      bLife-=decay;
    }
  }

  //Is the bucket gone?
  boolean isGone() { 

    //Return true if yes, false if no
    if (bLife <=0) {
      return true;
    } else {
      return false;
    }
  }

  //if in contact, kill Spongebob
  void hurtSponge(Spongebob s) {
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y) < sz.y/2+s.sz.x/2) {
      s.life--;              //loses 1 life if in contact
      s.loc.x = s.sz.x/2;   // send spongebob back to beginning
    }
  }
}

