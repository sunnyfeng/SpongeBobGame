Squidward squid;

void setup() {
  size(200, 200);
  squid= new Squidward();
}

void draw() {
  background(0);
  squid.display();
  squid.move();
  squid.jump();
  
}

