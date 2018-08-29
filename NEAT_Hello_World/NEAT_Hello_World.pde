

Object[] objects = {
  new Player(50, 320, 50, 50),
  new Object(0,400,1000,50)
};

ArrayList<Wall> walls = new ArrayList<Wall>();

void setup() {
  frameRate(60);
  size(1000, 640);
}

void draw() {
  background(255);

  for(Object o : objects) {
    o.CheckCollision(objects[1]);
    o.update();
    o.display();
  }
  
  for(int i = 0; i < walls.size(); i++) {
    if(objects[0].CheckWalls(walls.get(i)))
      noLoop();
    walls.get(i).update();
    walls.get(i).display();
    if(walls.get(i).CheckBoundaries()) {
      walls.remove(walls.get(i));
      i--;
    }
  }
  
  float i = random(200);
  if(i <= 1)
    MakeWall();
}

void MakeWall() {
 walls.add(new Wall(1000,350,50, 50));
  
}

void keyPressed() {
    objects[0].key();
}
