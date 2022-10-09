//membuat class pemandangan
class pemandangan {
  //posisi awal pemandangan gedung1
  float s=0;
  //posisi awal pemandangan gedung2
  float r=-width*8;
  //posisi awal pemandangan gunung
  float t=-width*16;
  //kecepatan
  int speed=12;
  //fungsi untuk menjalankan fungsi perpindahan,pemandangan dan perulangan
  void run(float start, float end) {
    move();
    replay(start, end);
    gedung1();
    gedung2();
    pegunungan();
    awan();
  }

  //mengatur perpindahan
  void move() {
    s=s+speed;
    r=r+speed;
    t=t+speed;
  }
  void replay(float start, float end) {
    //mengatur ulang pemandangan gedung1
    if (s>=end*2) {
      s=start*2;
    }
    //mengatur ulang pemandangan gedung2
    if (r>=end*2) {
      r=start*2;
    }
    //mengatur ulang pemandangan gunung     
    if (t>=end*2) {
      t=start*2;
    }
  }

  void tampilan_awan() {
    // Awan Jenis 1
    ellipse(300+s, -200, 300, 200);
    // Awan Jenis 2
    ellipse(500+r, -75, 200, 150);
    ellipse(430+r, -15, 200, 150);
    ellipse(550+r, 5, 200, 150);
    // Awan Jenis 3       
    ellipse(150+r, -100, 200, 150);
    ellipse(50+r, -90, 200, 150);
    ellipse(0+r, -150, 200, 180);
    ellipse(100+r, -210, 200, 150);
    ellipse(200+r, -150, 200, 150);
    
    ellipse(150+t, -100, 200, 150);
    ellipse(50+t, -90, 200, 150);
    ellipse(0+t, -150, 200, 180);
    ellipse(100+t, -210, 200, 150);
    ellipse(200+t, -150, 200, 150);
    
    ellipse(500+t, 75, 200, 150);
    ellipse(430+t, 15, 200, 150);
    ellipse(550+t, 5, 200, 150);
  }

  void awan() {
    fill(250, 224, 197, 255);
    pushMatrix();
    translate(0, -20, -20);
    tampilan_awan();    
    popMatrix();
  }

  //pemandangan gedung1
  void gedung1() {
    fill(250, 224, 197, 255);
    rect(700+s, 150, 100, 300);
    fill(134, 207, 198);
    pushMatrix();
    translate(0, 0, 1);
    for (int i=170; i<=420; i+=40) {
      rect(720+s, i, 10, 20);
      rect(750+s, i, 10, 20);
    }
    popMatrix();

    fill(255, 188, 119);
    rect(580+s, 200, 120, 250);
    fill(255);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=220; i<=450; i+=60) {
      rect(600+s, i, 80, 10);
    }
    emissive(80);
    popMatrix();

    fill(106, 68, 45);
    triangle(470+s, 160, 520+s, 120, 570+s, 160);
    fill(113, 33, 42);
    rect(450+s, 160, 140, 20);
    fill(199, 13, 168);
    rect(460+s, 180, 120, 270);
    fill(113, 33, 42);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=480; i<=560; i+=35) {
      rect(i+s, 200, 15, 230);
    }
    emissive(80);
    popMatrix();


    fill(55, 107, 165);
    rect(200+s, 200, 70, 250);
    rect(210+s, 180, 50, 20);
    rect(220+s, 160, 30, 20);
    rect(234+s, 120, 2, 40);   

    fill(235, 198, 106);
    rect(0+s, 270, 200, 180);
    fill(255, 153, 0);
    rect(0+s, 230, 200, 40);
    fill(0);

    textSize(30);
    pushMatrix();
    translate(0, 0, 1);
    text("SUPERMARKET", 5+s, 260);
    popMatrix();

    rect(50+s, 200, 2, 30);
    rect(150+s, 200, 2, 30);
    fill(random(255), random(255), random(255));
    emissive(200);
    rect(40+s, 150, 120, 50);
    emissive(80);
  }

  //pemandangan gedung2
  void gedung2() {
    fill(107, 107, 117);
    triangle(620+r, 180, 695+r, 140, 770+r, 180);
    rect(620+r, 200, 150, 250);
    fill(209, 216, 232);
    rect(600+r, 180, 190, 20);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=630; i<=760; i+=30) {
      rect(i+r, 220, 10, 210);
    }
    emissive(80);
    popMatrix();



    fill(224, 48, 61);
    rect(530+r, 210, 10, 20);
    rect(520+r, 230, 100, 220);
    fill(255);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=250; i<=430; i+=20) {
      rect(515+r, i, 30, 10);
    }
    emissive(80);
    popMatrix();
    fill(209, 216, 245);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=250; i<=430; i+=40) {
      rect(560+r, i, 10, 30);
      rect(580+r, i, 10, 30);
      rect(600+r, i, 10, 30);
    }
    emissive(80);
    popMatrix();


    fill(124, 101, 186);
    pushMatrix();
    translate(0, 0, -1);
    ellipse(100+r, 250, 100, 75);
    popMatrix();
    fill(124, 65, 186);
    rect(50+r, 250, 100, 200);
    fill(86);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=280; i<=400; i+=30) {
      rect(60+r, i, 80, 20);
    }
    emissive(80);
    popMatrix();


    fill(104, 99, 135);
    triangle(180+r, 230, 260+r, 200, 260+r, 230);
    fill(128, 122, 167);
    pushMatrix();
    translate(0, 0, -1);
    triangle(180+r, 230, 180+r, 200, 260+r, 230);
    popMatrix();
    rect(180+r, 230, 80, 220);
    fill(224, 251, 255);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=250; i<=400; i+=50) {
      rect(170+r, i, 100, 30);
    }
    emissive(80);
    popMatrix();


    fill(251, 174, 23);
    rect(350+r, 200, 100, 250);
    rect(360+r, 180, 40, 20);
    fill(209, 216, 245);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=210; i<=440; i+=20) {
      rect(345+r, i, 10, 10);
      rect(445+r, i, 10, 10);
    }
    emissive(80);
    popMatrix();

    fill(255);
    pushMatrix();
    translate(0, 0, 1);
    emissive(255);
    for (int i=230; i<=390; i+=50) {
      rect(365+r, i, 30, 30);
      rect(405+r, i, 30, 30);
    }
    emissive(80);
    popMatrix();
  }

  //pegunungan
  void pegunungan() {
    imageMode(CORNER);
    image(gunung, 10+t, 180);
  }
}
