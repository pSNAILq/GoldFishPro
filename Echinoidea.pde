class Echinoidea extends Basic {
  Echinoidea() {
    this.name = "Echinoidea";
    pos.x = (int)random(-width, width);
    pos.y = height;
    x=EnumUtility.UNISPEED;
    y=EnumUtility.UNISPEED*-1;
    bodyColor = #000000;
  }
}