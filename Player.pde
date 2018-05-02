class Player {

  PVector pos ;

  Player() {
  }

  void body() {
    pos  = new PVector(mouseX, mouseY);

    strokeWeight(10);
    stroke(#D5DE00);
    noFill();
    line(pos.x+60, pos.y+60, pos.x+160, pos.y+160);
    ellipse(pos.x, pos.y, EnumUtility.POYSOZE, EnumUtility.POYSOZE);
    strokeWeight(2);
    fill(255, 90);
    ellipse(pos.x, pos.y, EnumUtility.POYSOZE, EnumUtility.POYSOZE);
  }

  boolean isPressed() {
    if (mousePressed) {
      return true;
    }
    return false;
  }


  void run() {
    body();
  }
}