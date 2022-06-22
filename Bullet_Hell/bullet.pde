class bullet extends gameObject {
  
  bullet() {
    super(player.x + 75,player.y +10,0,-10,5,#FF0000,1);    
    
  }
  
  void act() {
    super.act();
    if (y > height || y < 0 || x < 0 || x > width){
      lives = 0;
    }
  }
}
