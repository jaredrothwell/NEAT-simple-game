class Wall extends Object {
  
   Wall(float x, float y, float w, float h) {
    super(x,y,w,h);
    
  }
  
  void update() { 
    velocity.x = -3;
    position.add(velocity);
  }
  
  boolean CheckBoundaries() {
    if(position.x < -10)
      return true;
    return false;
    
  }
}
