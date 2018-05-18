import java.util.List;

/**
* Completed Snake Game Code 
**/

int scl = 20; // the current scale of the game 
int borderWidth = 400; // X dimension of game screen
int borderHeight = 400; // Y dimension of game screen
Snake snake; // instance of our snake object
Food food; // instance of our food object (there will only be one food object in the game at all times!)
boolean stopgame = false; // Determines whether the game is over

/**
* sets inital size of screen
**/
void settings(){
  size(borderWidth, borderHeight);
}

/**
* Occurs once when program first runs
**/
void setup(){
  snake = new Snake();
  food = new Food();
  frameRate(5);
}  

/**
* Runs after setup on a loop
**/
void draw(){
  if (stopgame){
    text("GAME OVER",200,150);
  }
  else {
    background(51);
    snake.update();
    snake.show();
    food.show();
    snake.death();
  }
}

/**
* Key Controls for moving snake's directionality.
**/
void keyPressed(){
  if (key == 'w') {
    if (snake.total > 0 && snake.yspeed == 1){}
    else {
      snake.changeDirection(0, -1);
    }
  }
  else if (key == 's') {
    if (snake.total > 0 && snake.yspeed == -1){}
    else {
      snake.changeDirection(0, 1);
    }
  }
  else if (key == 'a') {
    if (snake.total > 0 && snake.xspeed == 1){}
    else {
      snake.changeDirection(-1, 0);
    }
  }
  else if (key == 'd') {
    if (snake.total > 0 && snake.xspeed == -1){}
    else {
      snake.changeDirection(1,0);
    }
  }  
}
