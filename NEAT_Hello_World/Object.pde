class Object {
  PVector position;
  PVector velocity;
  float W;
  float H;
  
  Object(float x, float y, float w, float h) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    W = w;
    H = h;
  }
  
  void update() {
    position.add(velocity);
  }
  
  void display() {
    rect(position.x, position.y, W, H);
    fill(0);
  }
  
  void key() {
    
  }
  
  boolean CheckWalls(Object other) {
    return false;
  }
  
  void CheckCollision(Object other) {
    
  }
}
