class star extends gameObject {
  
  
  star() {
   super(random(width),0,0,random(5,10),random(5,10),#FFFFFF,1);
  }  


  void act(){
     super.act();
     if (y > height) lives = 0;
  }
  
  void show(){
    fill(c);
    square (x, y, size);
  }
}
