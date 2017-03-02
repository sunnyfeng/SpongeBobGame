Spongebob sponge;
void setup() {
  //display size
  size(800, 600);
  //declare spongebob class
  sponge= new Spongebob();
  imageMode(CENTER);
}
void draw() {
  background(0);
  //display spongebob class image
  sponge.display();
  //move spongebob class image
  sponge.move();
}
void keyPressed() {
  //if spacebar pressed, spongebob jumps
  if (keyCode==' ') {
    sponge.jump();
  }
}

