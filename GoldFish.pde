class GoldFish extends Basic {
  GoldFish() {
    pos.x = -100;
    pos.y = (int)random(0, height);
    
  }

  void swim() {
    pos.x -= EnumUtility.GFSPEED;
  }
}