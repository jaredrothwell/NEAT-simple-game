class Player extends Object{
  boolean jump;
  
  Player(float x, float y, float w, float h) {
    super(x,y,w,h);
    jump = true;
  }
  
  void update() { 
    position.add(velocity);
  }
  
  void key() {  
    if(key == ' ' && jump)
      velocity.y -= 8;
  }
   
  void CheckCollision(Object other) {
    velocity.y += 0.2;
    jump = false;
    if(distance(position.y, other.position.y, H, other.H)) {
      if(velocity.y > 0)
        velocity.y = 0;
      jump = true;
    }
  }
  
  boolean distance(float a, float b, float z1, float z2) {
    float c = a - b;
    float z = (z1 + z2)/2;
    if(abs(c) <= z) 
      return true;
    return false;
    
  }
}
