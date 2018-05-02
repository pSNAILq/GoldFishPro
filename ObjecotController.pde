class ObjectController {
  ArrayList<Basic> animal = new ArrayList<Basic>();

  String[] ENEMY_NAMES = {"GoldFish", "Echinoidea", "Tuetle"};
  int[] ENEMY_GET_SCORE = {1, 1, 1};


  Timer GFtimer ;
  Timer KAMEtimer;
  Timer UNItimer;

  Score score ;

  ObjectController() {
    GFtimer = new Timer();
    KAMEtimer = new Timer();
    UNItimer = new Timer();
    score = new Score();

    GFtimer.StartTime();
    KAMEtimer.StartTime();
    UNItimer.StartTime();
  }

  void field() {
    add();
    draw();
    delete();
    catchPoy();
    println(animal.size());
    score.display();
  }


  void add() {

    //startTime
    GFtimer.EndTime();
    KAMEtimer.EndTime();
    UNItimer.EndTime();
    println("a");
    //kingyo
    if (GFtimer.ElapsedTime(100)) {
      animal.add(new GoldFish());
      GFtimer.UpdataTime();
    }
    //KAME
    if (KAMEtimer.ElapsedTime(1000)) {
      animal.add(new Tuetle());
      KAMEtimer.UpdataTime();
    }
    //UNI
    if (UNItimer.ElapsedTime(1000)) {
      animal.add(new Echinoidea());
      UNItimer.UpdataTime();
    }
  }

  void draw() {
    for (int i =0; i<animal.size(); i++) {
      animal.get(i).run();
    }
  }

  void delete() {
    for (int i= 0; i<animal.size(); i++) {
      if (animal.get(i).pos.x>width) {
        animal.remove(i);
      }
    }
  }

  void catchPoy() {
    for (int i= 0; i<animal.size(); i++) {
      if (ctrl.player.isPressed()&&animal.get(i).isHit()) {
        for (int a=0; a<ENEMY_NAMES.length; a++) {
          if (animal.get(a).name.equals(ENEMY_NAMES[a])) {
            score.isGet(ENEMY_GET_SCORE[a]);
            animal.remove(i);
            break;
          }
        }
      }
    }
  }
}