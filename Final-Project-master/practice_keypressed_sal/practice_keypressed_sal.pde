PVector sz;
int object=300;
int space=400;
void setup() {

  size(800, 600);
  sz= new PVector(50, 50);
}
void draw() {
  background(0);

  ellipse(space, object, sz.x, sz.y);

  if (key==CODED) {
    if (keyCode==RIGHT) {
      space+=7;
    }
  } else if (keyCode==LEFT) {
    space-=7;
  }
}

