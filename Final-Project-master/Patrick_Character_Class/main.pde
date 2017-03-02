Patrick pat;

void setup(){
  size(300,300);
  pat = new Patrick();
}

void draw(){
  background(0);
  pat.display();
  pat.jump();
  pat.move();
}
