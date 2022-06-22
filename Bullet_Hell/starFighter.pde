class starFighter extends gameObject {
  
  
  starFighter(){
    super(width/2,height/2,0,0,40,#FFFF00,10);
 
  }
    

  
  void act() {
    super.act();
    
    if (up) vy = -5;
    if (down) vy = 5;
    if (left) vx = -5; 
    if (right) vx = 5;
    if (shoot) object.add(new bullet());
    
    if(!up && !down) vy *= 0.9;
    if(!left && !right) vx *= 0.9;
    
    
  }
  
  void show() {
    image(starCraft, x, y);
  }
}
