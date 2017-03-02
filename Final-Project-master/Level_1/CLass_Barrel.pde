//LEVEL 1 BARRELS (WITH KELP)  

class Barrel {
  //declare
  
  //image
  PImage barrelpic;
  
  //for barrel
  PVector sz;
  PVector loc;
  float locx;

  //for kelps
  PImage kelp, kelp2;
  PVector ksz, kloc, k2loc;

  //total width (of barrel and two kelps)
  float totalW;


  Barrel(float x) {
    //initialize
    
    //set x location as x
    locx = x;
    
    //initialize pictures
    barrelpic = loadImage("barrel.png");
    
    //size
    sz = new PVector (barrelpic.width, barrelpic.height);
    
    //location
    loc = new PVector (locx, height-sz.y/2);
    
    //kelp image
    kelp = loadImage("kelp.png");
    kelp2 = loadImage("kelp.png");
    
    //kelp size
    ksz = new PVector (kelp.width/4, kelp.height/4);
    
    //kelp locations (right next to barrel)
    kloc = new PVector (loc.x - sz.x/2 - ksz.x/2, loc.y+8);
    k2loc = new PVector (loc.x + sz.x/2 + ksz.x/2, loc.y+8);

    //Width of the barrel including the two kelps
    totalW = sz.x + 2*ksz.x;
  }

  //display the images
  void display() {
    
    //barrel
    image(barrelpic, loc.x, loc.y, sz.x, sz.y);
    
    //kelps
    image(kelp, kloc.x, kloc.y, ksz.x, ksz.y);
    image(kelp, k2loc.x, k2loc.y, ksz.x, ksz.y);
  }


//kelp kills Spongebob
  void deathByKelp(Spongebob s) {
    //kelp placed next to barrels to cover up glitch
    
    //lose 1 life if spongebob touches kelp

    //left kelp in contact
    if (dist(kloc.x, kloc.y, s.loc.x, s.loc.y) < ksz.x/2+s.sz.x/2) {
      s.life--;
      s.loc.x = s.sz.x/2;  // send to beginning
    }

    //right kelp in contact
    if (dist(k2loc.x, k2loc.y, s.loc.x, s.loc.y) < ksz.x/2+s.sz.x/2) {
      s.life--;
      s.loc.x = s.sz.x/2;  //send to beginning
    }
  }
}

