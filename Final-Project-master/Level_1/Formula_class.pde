//LEVEL 2 FORMULA - to win the game

class Formula{
  
  //declare variables
  
  //size and location
  PVector sz;
  PVector loc;
  
  //image
  PImage form;

  Formula() {
    
    //initialize variables
    
    //initialize image
    form= loadImage("formula.png");
    
    //set size
    sz= new PVector(form.width/10, form.height/10);
    
    //set location
    loc= new PVector(width - sz.x, height-sz.y);
    
  }
  
  
  //display formula
  void display() {
    image(form, loc.x, loc.y, sz.x, sz.y);
  }
  

  //if Spongebob contacts, wins the game
  void winGame(Spongebob s) {
    
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y) < sz.x/2+s.sz.x/2) {
      
      //go to winning screen
      level = 2.5;
    }
  }
}

