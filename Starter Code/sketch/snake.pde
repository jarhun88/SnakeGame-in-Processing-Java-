class Snake {
  
  int x; // snake's X coordinate (left/right)
  int y; // snake's Y coordinate (up/down)
  int xspeed; // snake's X coordinate speed per frame
  int yspeed; // snake's Y coordinate speed per frame
  List<Point> tail; // body size (not including head)
  int total; // # of food eaten
  
  /**
  * Snake Constructor
  * Initializes all fields
  **/
  Snake(){
    // TODO (1) initialize the rest of the Snake's fields:
    
    tail = new ArrayList<Point>();
   
  }
  
  /**
  * updates snake's and food's position
  **/
  void update(){
    snakeBody();
    
    this.x = this.x + this.xspeed * scl;
    this.y = this.y + this.yspeed * scl;
    
    this.x = constrain(this.x, 0, borderWidth-scl);
    this.y = constrain(this.y, 0, borderHeight-scl);
  
    if (snake.eat(food)){
      this.total++;
      food = new Food();
    }
  }
  
  /**
  * Draws the snake onto the screen
  **/
  void show(){
    fill(255);
    for (int i = 0; i < this.tail.size(); i++) {
      rect(tail.get(i).getX(), tail.get(i).getY(), scl, scl);
    }
    rect(this.x, this.y, scl, scl);
  }
  
  
  /**
  * Changes snake's direction
  **/
  void changeDirection(int x, int y) {
    // TODO (2): Finish Implementing this function
   
  }
  
  /**
  * Return true if snake's head is in the same position as the current food object.
  * Otherwise returns false.
  **/
  boolean eat(Food food){
    // TODO(4): Finish the implementation of this function
    
    
     return false; // this is a stub (erase this line)
  }
  
  /**
  * if Snake's head touches any part of its body, the game ends. 
  **/
  void death(){
    for (int i = 0; i < tail.size(); i++){
      Point body = this.tail.get(i); // represents each of the snake's body points 
      
      // TODO(6): Finish the implementation of the death function (hint) use stopgame
      
    }
  }
  
  /**
  * Helper function for updating Snake's body
  * DO NOT ALTER
  **/
  void snakeBody(){
    if (this.total == this.tail.size() && total > 0){
      for (int i = 0; i < this.tail.size()-1; i++){
        this.tail.set(i, this.tail.get(i+1));
      }
      this.tail.set(total-1, new Point(this.x, this.y));
    }
    if (this.tail.size() < this.total){
      this.tail.add(total-1, new Point(this.x, this.y)); 
    }
  }
}
