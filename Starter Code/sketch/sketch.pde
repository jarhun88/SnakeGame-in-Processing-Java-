import java.util.List;

/**
* Fill in the TODO's correctly in order to get the snake game to work!
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
  size(400, 400);
}

/**
* Occurs once when program first runs, instantiates all objects
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
* Keyboard Controls for moving snake's directionality.
**/
void keyPressed(){
  // TODO(3): Finish Implementation of snake's keyboard controls!
  // TODO BONUS(ONLY DO WHEN YOU ARE DONE THE REST): FIX SNAKE MOVEMENT SO THAT IT CANNOT TURN INTO ITSELF
  // (ask instructors if confused by what this means)
  
  // UP key
  if (key == 'w') {
      
  }
  
  // DOWN key
  if (key == 's'){
  
  }
 
  // LEFT key
  
 
  // RIGHT key
  
  
}
