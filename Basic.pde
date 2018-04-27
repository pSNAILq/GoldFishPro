abstract class Basic {
  PVector pos;

  void body(PVector position) {
    ellipse(position.x, position.y, 100, 100);
  };
  abstract void swim();

  void catched() {
  };
  void joined() {
  };

  void test() {
    println(pos);
  }
}