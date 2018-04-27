Controller ctrl;

Tuetle t = new Tuetle(new PVector(200,100));
void settings() {
  ctrl = new Controller();
  size(EnumUtility.WIDTH, EnumUtility.HEIGHT);
}

void setup() {
  
}
void draw() {
  background(#0000F0);
  ctrl.field();
 
  t.test();
}