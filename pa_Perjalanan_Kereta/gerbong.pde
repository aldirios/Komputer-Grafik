
//membuat class gerbong
class gerbong{
  void run(){
    //mengatur offset dari kemiringan kamera
    int m = (int)map(mouseX, 0, width, -30, 30);
    jendela();
    rak();
    kursi();
    tiang();
    pushMatrix();
      translate(3,3,3);
      if(isMouseOver(550, 60, 200-m, 140) == true){
        tombol(546, 59, 195, 138); // onMouse Peta
      } else if (isMouseOver(510, 210-m, 190, 50) == true){
          tombol(507, 206, 185, 48); // onMouse Rambu
      } else if (isMouseOver(510, 270, 50-m, 70) == true){
          tombol(507, 264, 49, 68); // onMouse Slogan       
      } else if (isMouseOver(580, 270, 110-m, 120) == true){
          tombol(575, 264, 108, 117); // onMouse Biodata
      } else if (isMouseOver(720-m, 220, 70-m, 80) == true){
          tombol(712, 215, 68, 78); // onMouse Poster
      }
      pushMatrix();
        if (mousePressed == true){
          if(isMouseOver(550, 60, 200-m, 140) == true){
            tampil(peta, 600, 420); // onPressed Peta
          } else if (isMouseOver(510, 210, 190-m, 50) == true){
            tampil(rambu, 570, 150); // onPressed Rambu
          } else if (isMouseOver(510, 270, 50-m, 70) == true){
            tampil(slogan, 300, 420); // onPressed Slogan
          } else if (isMouseOver(580, 270, 110-m, 120) == true){
            tampil(biodata, 450, 480); // onPressed Biodata
          } else if (isMouseOver(720-m, 220, 70-m, 80) == true){
            tampil(poster, 420, 480); // onPressed Poster
          }
        }
      popMatrix();
    popMatrix();
  }
  
  //Kontrol Menampilkan gambar
  void tombol(int a, int b, int c, int d){
    pushMatrix();
      fill(255,80);
      rect(a, b, c, d);
    popMatrix();
  }
  void tampil(PImage tampilan, int w, int h){
    pushMatrix();
      translate(0,0,125);
      imageMode(CENTER);
      rectMode(CENTER);
      rect(width/2, height/2, w, h);
      image(tampilan, width/2, height/2, w, h);
      rectMode(CORNER);
      imageMode(CORNER);
    popMatrix();
  }
  boolean isMouseOver(int x, int y, int w, int h){ // Pengaturan kursor pada posisi tertentu
    if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
      return  true;
    }
    return false;
  } 
  
  
  void jendela(){
    translate(0,0,1);
    pushMatrix();
    // gerbong
      noStroke();
      fill(168, 128, 104);
      rect(500, 0, 800, 600);
      rect(-150, 400, 950, 200);
    popMatrix();
    
    // Hiasan Gerbong
    pushMatrix();
      noFill();
      translate(0,0, 1);
      // Map 
      rect(550, 60, 200, 140);
      image(peta, 550,60, 200, 140);
      // Rambu No Smoking
      rect(510, 210, 190, 50);
      image(rambu, 510, 210, 190, 50);
      // Slogan 
      rect(510, 270, 50, 70);
      image(slogan, 510, 270, 50, 70);
      // Biodata Kelompok
      rect(580, 270, 110, 120);
      image(biodata, 580, 270, 110, 120);
      // Poster
      rect(720, 220, 70, 80);
      image(poster, 720, 220, 70, 80);
    popMatrix();
    
    // jendela
    fill(180, 70);
    rect(-150, 0, 250, 385);
    rect(115, 0, 370, 200);
    rect(115, 210, 370, 175);
    // bingkai jendela
    fill(208,210,209);
    rect(-150, 385, 650, 15);
    rect(100, 0 , 15, 385);
    rect(115, 200, 370, 10);
    rect(485, 0, 15, 385);
  }
  void tiang(){
    pushMatrix();
      translate(0,0,100);
      fill(0, 0, 128);
      rect(80, 0, 10, 600);
      rect(590, 0, 10, 600);
      rect(80, 0, 10, 8);
      rect(590, 0, 10, 8);
    popMatrix();
  }
  void rak(){
    pushMatrix();
      translate(0,0,120);
      fill(208,210,209);
      rect(-150, 0, 750, 5);
      rect(-150, 10, 745, 5);
      rect(-150, 20, 740, 5);     
      rect(-150, 30, 735, 5);
      beginShape(QUADS);
        // penahan kiri
        vertex(290, 0);
        vertex(300, 0);
        vertex(280, 40);
        vertex(270, 40);
        // penahan kanan
        vertex(590, 0);
        vertex(600, 0);
        vertex(580, 40);
        vertex(570, 40);
      endShape();
    popMatrix();
  }
  void kursi(){
    pushMatrix();
      translate(0,0,20);
      pushMatrix();
        translate(0,0,4);
        // batas sandaran kursi
        bezier(-10, 395, 0, 385, 0, 520, -10, 510);
        bezier(160, 395, 170, 385, 170, 520, 160, 510);
        bezier(330, 395, 340, 385, 340, 520, 330, 510);
        bezier(500, 395, 510, 385, 510, 520, 500, 510);
      popMatrix();
      pushMatrix();
        translate(250, 450, -10);
        fill(107, 142, 35);//Hijau
        box(800, 100, 20);
      popMatrix();
      beginShape();
        fill(107, 142, 35);
        // sandaran kursi  
        vertex(-150, 395);
        vertex(650, 395);
        vertex(655, 510);
        vertex(-150, 510);
      endShape();
      pushMatrix();
        translate(250, 515, 25);
        fill(107, 142, 35);//Hijau
        box(800, 20, 100);
      popMatrix();
    popMatrix();
  }
}
