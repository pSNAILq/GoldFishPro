class Tuetle extends Basic {
  Tuetle() {
    this.name = "Tuetle";
    pos.x = (int)random(-width, width);
    pos.y = -100;
    x=EnumUtility.KAMESPEED;
    y=EnumUtility.KAMESPEED;
    bodyColor = #00FF00;
  }
}