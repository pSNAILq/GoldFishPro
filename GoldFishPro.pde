Controller ctrl;


void settings() {
  size(EnumUtility.WIDTH, EnumUtility.HEIGHT);
}

void setup() {
  ctrl = new Controller();
}
void draw() {
  background(#0000F0);
  ctrl.run();

}