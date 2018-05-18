class Food {
  int x;
  int y;
  
  /**
  * Food Constructor 
  * initializes all fields
  * DO NOT ALTER
  **/
  Food() {
    this.x = floor(random(0, (borderWidth-scl)/scl)) * scl;
    this.y = floor(random(0, (borderHeight-scl)/scl)) * scl;
  }
  
  /**
  * Draws Food onto screen
  **/
  void show() {
    fill(46, 150, 14);
    rect(this.x, this.y, scl, scl);
  }
}
