//TRANSITION KRABBY PATTY SYSTEM

class KPSystem {
  
  //delay for when the krabby patties appear
  int delay;
  int finalDelay;

  //arraylist for KPatties
  ArrayList <KPatty> kp;

  KPSystem() {
    //initialize variables

    //initialize system
    kp = new ArrayList<KPatty>();

    //initialize delay
    delay=0;

    //after how many frames does delay reach final delay?
    finalDelay=120;
  }

  //add Krabby Patties
  void addKP() {
    
    //when delay equals final delay, add a krabby patty
    if (delay==finalDelay) {
      kp.add(new KPatty());
      delay=0;
    }
    
    //have delay increase every frame
    delay++;
  }

  //run the system
  void run() {
    for (int i = kp.size () - 1; i >=0; i--) {

      KPatty k = kp.get(i);
      
      //run functions
      k.leave();
      k.run(sponge);
      k.move();

      //if gone, remove krabby patty
      if (k.isGone()) {
        kp.remove(i);
      }
    }
  }
}

