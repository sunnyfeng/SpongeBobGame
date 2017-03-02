Hashslingingslasher hashslinger;
void setup(){
 //display ize of screen
size(800,600);
//declare hash slinging slasher class
hashslinger= new Hashslingingslasher();
}
void draw(){
  background(0);
  //display hash slinging slasher class image
  hashslinger.display();
  //move hash slinging slasher class image
  hashslinger.move();
}
