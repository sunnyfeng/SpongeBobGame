class Squidward {

  PImage squidward;
  PVector squidsz;
  PVector loc, vel, acc;

  Squidward() {

    squidward=loadImage("squidward.gif");
    squidsz= new PVector(75, 100);
    loc= new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    acc= new PVector(0, 0);
  }

  void display() {
    image(squidward, loc.x, loc.y);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void jump() {
    if (keyPressed) {
      if (key==CODED) {
        if (keyCode==UP) {
          loc.y-=1;
        }
        if (keyCode==DOWN) {
          loc.y+=1;
        }
        if(keyCode==LEFT){
          loc.x-=1;
        }
        if(keyCode==RIGHT){
          loc.x+=1;
        }
      }
    }
  }
  void die() {
  }
}

