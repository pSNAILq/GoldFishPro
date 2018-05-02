class Controller {
  ObjectController obj_ctrl;
  Player player;
  Cup cup;
  Controller() {
    obj_ctrl = new ObjectController();
    cup = new Cup();
    player = new Player();
  }
  void run() {
    obj_ctrl.field();
    cup.run();
    player.run();
  }

  void SelectScene() {
  }
}