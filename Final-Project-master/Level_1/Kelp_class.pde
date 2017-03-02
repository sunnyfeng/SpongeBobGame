//KELP FOR INSTRUCTION SCREEN

class Kelp {

  //declare variables
  
  //to be able to set location
  float locx, locy;
  
  //image
  PImage kelp;
  
  //size and location
  PVector sz, loc;


  Kelp(float x,float y) {
    //setting parameters
    locx = x;
    locy = y;
    
    //load kelp image
    kelp = loadImage("kelp.png");
    
    //size
    sz = new PVector (kelp.width/4, kelp.height/4);
    
    //location
    loc = new PVector (locx,locy);
    
  }

//display the kelp
  void display() {
    image(kelp, loc.x, loc.y, sz.x, sz.y);
  }

//kill Spongebob
  void deathByKelp(Spongebob s) {
    
    //lose 1 life if spongebob touches kelp
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y) < sz.x/2+s.sz.x/2) {
      s.life--;
      s.loc.x = s.sz.x/2;   //send back to beginning
    }

  }
}

