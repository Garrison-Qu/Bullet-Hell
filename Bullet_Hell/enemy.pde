class enemy extends gameObject {
  
  enemy(){
    super(random (width), -20, 0, 3, 40, yellow, 1);
  }
  
  void act(){
    super.act();
    
    object.add(new enemyBullet(x, y, 0, 10));
    object.add(new enemyBullet(x, y, 10, 0));
    object.add(new enemyBullet(x, y, 0, -10));
    object.add(new enemyBullet(x, y, -10, 0));
    
    int i = 0;
    while (i < object.size()) {
      gameObject obj = object.get(i);
      if (obj instanceof bullet){
        if(collidingWith(obj)){
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }
    if (offScreen()) lives = 0;
    
  }
  
}
