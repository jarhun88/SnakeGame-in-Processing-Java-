class Snake {
  int x;
  int y;
  int xspeed;
  int yspeed;
  List<Point> tail;
  int total;
  
  
  /**
  * Snake Constructor
  * Initializes all fields
  **/
  Snake(){
    this.x = 0;
    this.y = 0;
    this.xspeed = 1;
    this.yspeed = 0;
    tail = new ArrayList<Point>();
    total = 0;
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
  
  // is this legal?
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
    this.xspeed = x;
    this.yspeed = y;
  }
  
  /**
  * Return true if snake's head is in the same position as the current food object.
  * Otherwise returns false.
  **/
  boolean eat(Food food){
    return (this.x == food.x && this.y == food.y);
  }
  
  /**
  * if Snake's head touches any part of its body, the game ends. 
  **/
  void death(){
    for (int i = 0; i < tail.size(); i++){
      Point body = this.tail.get(i);
      if (this.x == body.getX() && this.y == body.getY()){
        this.total = 0;
        this.tail.clear();
        stopgame = true;
      }
    }
  }
  
  /**
  * Helper function for updating Snake's body
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
