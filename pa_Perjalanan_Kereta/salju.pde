class butiran{
  float x = random(width*2);
  float y = random(height*2);
  float kecepatan = random(3,5);
  
  void jatuh(){
    y = y + kecepatan;
    if(y > height*2){
      y = random(0,0);
    }
  }

  void show(){
    fill(255,255);
    emissive(255, 255, 255);
    ellipse(x,y,20,20);
    emissive(80, 80, 80);
  }
}
