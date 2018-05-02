class GoldFish extends Basic {
  GoldFish() {
    this.name = "GoldFish";
    pos.x = (int)random(0, width);
    pos.y = (int)random(0, height);
    x=EnumUtility.GFSPEED;
    y=0;
    bodyColor = #FF0000;
  }
}