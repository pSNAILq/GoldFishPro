class Timer {

  private float startTime, endTime;
  
  void StartTime() {
    startTime = millis();
  }

  void EndTime() {
    endTime = millis();
  }

  boolean ElapsedTime(int limit) {
    if (endTime-startTime>limit) {
      return true;
    }
    return false;
  }

  void UpdataTime() {
    startTime = endTime;
  }
}