ArrayList<gameObject> object;
starFighter player;

PImage starCraft;

color yellow = #FFCD72;
//modes
final int intro = 1;
final int game = 2;
final int gameover = 3;
int mode;

//keys
boolean up, down, left, right, shoot;


void setup(){
  rectMode(CENTER);
  size(1280, 720);
  mode = game;
  up = down = left = right = shoot = false;
  starCraft = loadImage("starcraft.png");
  
  object = new ArrayList<gameObject>();
  player = new starFighter();
  object.add(player);
}

void draw(){
  if (mode == intro) intro();
  else if (mode == game) game();
  
  
}
    
    
