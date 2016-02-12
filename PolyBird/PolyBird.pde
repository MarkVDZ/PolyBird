static State state;

void setup() {
  size(800, 500);
  state = new PlayState();
}

void draw() {
  state.Update();
  state.Draw();
}
public void ChangeStateLose() {
  state = null;
  state = new LoseState();
}

public void ChangeStatePlay() {
  state = null;
  state = new PlayState();
}