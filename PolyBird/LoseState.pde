class LoseState extends State {
boolean play = false;

  void Update() {
    
    if(Keys.onDown(Keys.UP)){
    playAgain();
    }
    
  }

  void Draw() {
    background(255);
    textSize(32);
    fill(0);
    text("Score: " + score, 300, 100);
    text("Press the up arrow to play agian", 150, 200);
    
     if (play == true) {
      ChangeStatePlay();
      println("r");
      score = 0;
    }
    
  }
  void playAgain() {
    play = true;
  }
}