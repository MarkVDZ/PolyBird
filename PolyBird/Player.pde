////goes after class player



class Player extends Polygon{

  float speed = 0;
  float gravity = 0.1;
  boolean dead = false;
  
  
  
  Player() {
    //x = 250;
    //y = 0;
    setPosition(new PVector(200,200));
    //draws the player based on polygon
    addPoint(10,10);
    addPoint(-10,10);
    addPoint(-10,-10);
    addPoint(10,-10);
    colour = color(255,0,0);
  }
  void drawBird() {
    
    draw();
  }
  void update() {
    
    
    
    PVector p  = getPosition();//this is what i will be using to update for the physics
    
    speed = speed + gravity; //add gravity to speed
    
    
    if(Keys.onDown(Keys.SPACE)){
    jump();
    }
     
    
    
         
     //if player goes above the screen 
    if (p.y < 0){
      p.y = 0; //set player at the top of the screen
    }
    
     if (p.y > height){
      dead = true;
    }
    if (dead == true) ChangeStateLose();
    
    p.y = p.y + speed;//add speed to location

    /*
    //Dampening bounce effect for fun
    if (p.y > height) {
      speed = speed * -0.95;
    }
    */
    setPosition(p);//update the physics based on the polygons PVectors
    
    super.update();
    
  }
  void jump() {
    speed=-4;
  }
  void reset(){
  speed = 0;
  setPosition(new PVector(200,200));
  
  }
} 