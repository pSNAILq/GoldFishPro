abstract class Basic {
  PVector pos = new PVector();
  String name; 
  int x, y;
  color bodyColor;
  //void body(PVector position) {
  //  ellipse(position.x, position.y, 100, 100);
  //};
  void swim() {
    pos.x += x;
    pos.y += y;
  }

  void catched() {
  };
  void joined() {
  };

  void body() {
    fill(bodyColor);
    ellipse(pos.x, pos.y, EnumUtility.OBJSIZE, EnumUtility.OBJSIZE);
  }

  void run() {
    body();
    swim();
  }

  boolean isHit() {
    if (abs(pos.x-ctrl.player.pos.x)<EnumUtility.POYSOZE/2&&abs(pos.y-ctrl.player.pos.y)<EnumUtility.POYSOZE/2){
      return true;
    }
    return false;
  }
}