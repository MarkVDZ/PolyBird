float score = 0;


class PlayState extends State {
  float deltaTime = 0;
  float timePrevious = 0;
  float timeStart = 0;
  ArrayList<Polygon> obstacles = new ArrayList<Polygon>();
  Player b = new Player();
  PlayState() {
    for (int i = 0; i < 20; i++) {
      Obstacle o = new Obstacle();
      obstacles.add(o);
    }
    timeStart = millis();
  }

  void Update() {
    //Update();
    for (Polygon o : obstacles) o.update();
    b.update();
    b.checkCollisions(obstacles);
    Keys.update();
    Time();
  }

  void Draw() {
    background(255);
    for (Polygon o : obstacles) o.draw();
    b.draw();

    if (b.colliding) {
      println("f");
      ChangeStateLose();
    }
    textSize(20);
    fill(150, 0, 150);
    text("Score: " + score, 20, 20);
  }

  void Time() {

    float timeCurrent = millis();
    deltaTime = (timeCurrent - timePrevious) / 1000;
    timePrevious = timeCurrent;
    //println(deltaTime);

    score = (timeCurrent - timeStart) * 10 / 1000;
  }
}