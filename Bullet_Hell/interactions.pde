void keyPressed(){
  
  if (keyCode == 'w' || keyCode == 'W' || keyCode == UP){
    up = true; 
  } else if (keyCode == 'a' || keyCode == 'A' || keyCode == LEFT){
    left = true;
  } else if (keyCode == 'd' || keyCode == 'D' || keyCode == RIGHT){
    right = true;
  } else if (keyCode == 's' || keyCode == 'S' || keyCode == DOWN){
    down = true;
  } else if (keyCode == ' '){
    shoot = true;
  }
}

void keyReleased(){
   
   if (keyCode == 'w' || keyCode == 'W' || keyCode == UP){
    up = false; 
  } else if (keyCode == 'a' || keyCode == 'A' || keyCode == LEFT){
    left = false;
  } else if (keyCode == 'd' || keyCode == 'D' || keyCode == RIGHT){
    right = false;
  } else if (keyCode == 's' || keyCode == 'S' || keyCode == DOWN){
    down = false;
  } else if (keyCode == ' '){
    shoot = false;
  }
   
}

void mousePressed(){
  shoot = true;
}

void mouseReleased(){
  shoot = false;
}
