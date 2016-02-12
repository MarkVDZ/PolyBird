

class PlayState extends State {
  ArrayList<Polygon> obstacles = new ArrayList<Polygon>();
  Player b = new Player();
  PlayState() {
    for (int i = 0; i < 20; i++) {
      Obstacle o = new Obstacle();
      obstacles.add(o);
    }
  }

  void Update() {
    //Update();
    for (Polygon o : obstacles) o.update();
    b.update();
    b.checkCollisions(obstacles); 
    
  
  }

  void Draw() {
    background(255);
    for (Polygon o : obstacles) o.draw();
    b.draw();
    
    if (b.colliding) {
      println("f");
      ChangeState();
    }
  }
}