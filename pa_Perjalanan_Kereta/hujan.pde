class tetesan{
  float x = random(width*2);
  float y = random(height*2);
  float kecepatan = random(10,12);
  
  void jatuh(){   //M
    y = y + kecepatan;
    if(y > height*2){
      y = random(0,0);
    }
  }
  
  void show(){
    //pengaturan garis 
    fill(#FAFAFF); //warna garis
    noStroke(); //ketebalan garis
    emissive(255, 255, 255);
    rectMode(CENTER);
    rect(x,y,2,20);
    rectMode(CORNER);
    emissive(80, 80, 80);
  }
}
