//LEVEL 2 BUCKET SYSTEM

class EnemySystem {
  
  //delay to time when the buckets appear
  int delay;
  int finalDelay;

  //make arraylist of buckets
  ArrayList <Bucket> buckets;

  EnemySystem() {
    //initialize variables
    
    //bucket system
    buckets = new ArrayList<Bucket>();

    //controls how much time between each bucket added
    delay=0;
    finalDelay=10;
  }

  //add buckets on screen
  void addBucket() {
    if (delay==finalDelay) {
      
      //every time delay equals finalDelay, add a bucket
      buckets.add(new Bucket());
      delay=0;
    }
    
    //have delay increase every frame
    delay++;
  }

  //run the system
  void run() {
    
    for (int i = buckets.size () - 1; i >=0; i--) {
      
      Bucket b = buckets.get(i);

      //run functions
      b.display();
      b.move();
      b.leave();
      b.hurtSponge(sponge);

      //if dead, remove bucket
      if (b.isGone()) {
        buckets.remove(i);
      }
    }
  }
}

