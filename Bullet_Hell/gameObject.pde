abstract class gameObject {
  float x, y, vx, vy, size;
  color c;
  int lives;
  
  gameObject(float x, float y, float vx, float vy, float size, color c, int lives) {
    this.x=x;
    this.y=y;
    this.vx=vx;
    this.vy=vy;
    this.size=size;
    this.c=c;
    this.lives=lives;
    
  }
  
  void act() {
     x += vx;
     y += vy;
    
  }
  
  void show() {
    fill(c);
    square (x, y, size);
  }
  
  boolean collidingWith(gameObject obj){
    return dist(obj.x, obj.y, x, y) < obj.size/2 + size/2;
  }
  
  boolean offScreen(){
    return x < 0 || x > width || y < -75 || y > height + 75;
  }
  
}
