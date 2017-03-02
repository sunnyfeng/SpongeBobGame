
Nastyburger nasty;
void setup(){
  //display size of screen
 size(800,600);
 //declare nasty burger class
nasty= new Nastyburger();
imageMode(CENTER);

}
void draw(){
background(0);
//display nasty patty class image 
nasty.display();
//move nasty patty class image
nasty.move();
}
