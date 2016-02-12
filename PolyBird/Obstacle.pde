class Obstacle extends Polygon {

  Obstacle() {
    reset();

    colour = 0;
  }
  void update() {
    setPosition(PVector.add(getPosition(), new PVector (-1, 0) )); 
    if (getPosition().x < -200) reset();


    super.update();
  }
  void draw() {



    super.draw();
  }

  void reset() {

    int place = (int)random(0,1.99);
    if(place == 1)
        setPosition(new PVector(random(800, 2000), random(-50, 50)));
    else
        setPosition(new PVector(random(800, 2000), random(350, 450)));
    int shapeNum = (int)random(1, 6);
    switch (shapeNum) {

    case 1:
      addPoint(130, 50);
      addPoint(-10, 30);
      addPoint(0, -140);
      break;
    case 2:
      addPoint(160, 10);
      addPoint(-160, 55);
      addPoint(-20, -110);
      break;
    case 3:
      addPoint(0, 140);
      addPoint(-75, 50);
      addPoint(0, -130);
      break;
    case 4:
      addPoint(40, 180);
      addPoint(0, 30);
      addPoint(120, -20);
      break;
    case 5:
      addPoint(10, 150);
      addPoint(-10, 20);
      addPoint(40, 10);
      break;
    case 6:
      addPoint(40, 10);
      addPoint(-30, -100);
      addPoint(120, -20);
      break;
    case 7:
      addPoint(-200, -10);
      addPoint(0, 10);
      addPoint(200, -20);
      break;
    }
  }
}