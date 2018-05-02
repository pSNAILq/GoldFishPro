class Score {
  private int point =0;
  Score() {
  }

  void isGet(int point) {
    this.point+=point;
  }

  int point() {
    return point;
  }
  
  void display(){
   fill(0);
   textSize(24);
   text("point"+point,width/2,height/2); 
  }
}