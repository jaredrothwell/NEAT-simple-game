

Object[] objects = {
  new Player(50, 320, 50, 50),
  new Object(0,400,1000,50)
};

void setup() {
  size(640, 640);
}

void draw() {
  background(255);

  for(Object o : objects) {
    o.CheckCollision(objects[1]);
    o.update();
    o.display();
  }
}

void keyPressed() {
    objects[0].key();
}
