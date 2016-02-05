

class PlayState extends State {
  Obstacle[] obstacles;
  Player b = new Player();
  PlayState() {
    obstacles = new Obstacle[20];
    for (int i = 0; i < 20; i++) {
      obstacles[i] = new Obstacle();
    }
  }

  void Update() {
    //Update();
    for (Obstacle o : obstacles) o.update();
    Keys.update();
    b.update();
  
  }

  void Draw() {
    background(255);
    for (Obstacle o : obstacles) o.draw();
    b.draw();
  }
}