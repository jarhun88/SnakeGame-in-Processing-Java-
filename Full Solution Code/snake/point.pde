class Point {
  int x;
  int y;
        
  /**
  * Point Constructor (Points on the screen grid)
  **/
  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  /**
  * returns Point's X coordinate
  **/
  int getX() {
    return this.x;
  }
  
  /**
  * returns Point's Y coordinate
  **/
  int  getY() {
    return this.y;
  }
}
