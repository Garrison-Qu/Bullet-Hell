void game(){
  addObjects();
  background(0);
  int i = 0;
  while (i < object.size()){
    gameObject s = object.get(i);
    s.act();
    s.show();
    if (s.lives <= 0) {
      object.remove(i);
    } else { 
      i++;
    }

  }
  
  
  player.show();
  player.act();
  
  if (player.lives <= 0){
    mode = gameover;
  }


}
void addObjects(){
  object.add(0, new star());
  if (frameCount % 30 == 0) object.add(new enemy());
  
}
