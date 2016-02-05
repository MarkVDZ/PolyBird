Obstacle[] obstacles;

void setup() {
  size(800, 500);
  
  obstacles = new Obstacle[20];
  for (int i = 0; i < 20; i++){
    obstacles[i] = new Obstacle();
    
  }
}

void draw() {
  background(255);
  for (Obstacle o : obstacles) o.update();
  for (Obstacle o : obstacles) o.draw();
}