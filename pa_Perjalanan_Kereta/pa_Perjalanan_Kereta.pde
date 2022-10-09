//Gambar Karakter
PImage girl;

//gambar tambahan
PImage peta, rambu, slogan, poster, biodata;

//Gambar Gunung
PImage gunung;

//objek cuaca
tetesan[] air= new tetesan [100];
butiran[] salju = new butiran [100];

//boolean kontrol cuaca
boolean cHujan = false;
boolean cSalju = false;

//boolean kontrol waktu
boolean malam, sore = false;

//inisialisasi class pemandangan
pemandangan pemandangan = new pemandangan();;

//Gerbong kereta
gerbong gerbong_kereta = new gerbong();

void setup(){
  size(800, 600, P3D);
  //load image
  girl = loadImage("girl.png");
  gunung=loadImage("gunung.png");
  gunung = loadImage("gunung.png");
  peta = loadImage("peta.jpg");
  rambu = loadImage("rambu.jpg");
  slogan = loadImage("slogan.jpg");
  poster = loadImage("poster.jpg");
  biodata = loadImage("biodata.png");
  smooth();
  
  //Hujan
  for(int i = 0; i < air.length; i++){
    air[i]= new tetesan();
  }
  
  //salju
  for(int i = 0; i < salju.length; i++){
    salju[i]= new butiran();
  }
}


void draw(){
  translate(width/2, height/2);
  
  //Camera Control
  camera(0, -20, 550, 0,-60,0, 0,1,0);
  float m = map(mouseX-width/2, -width/2, width/2, -5, 5);
  rotateY(radians(m));
  

  
  //Pencahayaan
  pushMatrix();
    rotateX(radians(-180));
    //pencahayaan dan ambien biru muda
    if (malam == true){
      background(56, 56, 70);
      ambientLight(10,10,40, 0,0,450);
      pointLight(20,20,20, 0,0,-450);
    }else if (sore == true){
      background(255, 198, 142);
      ambientLight(200,120,110, 0,0,450);
      if (cHujan == true || cSalju == true){
        pointLight(40,40,40, 0,0,-450);
      }else{
        pointLight(70,70,70, 0,0,-450);
      }
    }else{
      background(150, 202, 202);
      ambientLight(120,120,70, 0,0,450);
      if (cHujan == true || cSalju == true){
        pointLight(40,40,40, 0,0,-450);
      }else{
        pointLight(110,110,110, 0,0,-450);
      }
    }
  popMatrix();

  noStroke();
  //Background kota
  pushMatrix();
    translate(-(width/2),-(height/2)-50, -500);
    rectMode(CORNER);
      pushMatrix();
        pemandangan.run(-(width),(width/2));
      popMatrix();
    
    
  popMatrix();
  
  //lantai
  pushMatrix();
    translate(0, 250, 150);
    box(1200, 20, 400);
    
  popMatrix();
  //atap
  pushMatrix();
    fill(168, 128, 104);//coklat
    translate(0, -350, 150);
    box(1200, 20, 400);
  popMatrix();
  
  //Cuaca
  pushMatrix(); 
    translate(-(width),-(height), -500);
    if(cHujan == true){
      cuaca("hujan");  
    } 
    if(cSalju == true){
      cuaca("salju");  
    } 
   popMatrix();
   
   pushMatrix();
     translate(-(width/2),-(height/2) - 50, -50);
     gerbong_kereta.run();
     fill(0);
   popMatrix();
   
  //Girl
  pushMatrix();
    translate(0,0, 30);
    emissive(180);
    stroke(0);
    rotateX(radians(8));
    imageMode(CENTER);
    image(girl, 0, 60, 220,400);
    emissive(80);
  popMatrix();
  
}

//Fungsi Cuaca
void cuaca(String jenis){
  if (jenis == "salju"){
    for(int i = 0; i < salju.length; i++){
       salju[i].jatuh();
       salju[i].show();
     }
  }
  if(jenis == "hujan"){
     for(int i = 0; i < air.length; i++){
       air[i].jatuh();
       air[i].show();
     }
  }
}

void keyPressed(){
  if (key == 'r' || key == 'R'){
    if (cHujan == true){
      cHujan = false;
    }else{
      cHujan = true;
      cSalju = false;
    }
  }
  
  if (key == 's' || key == 'S'){
    if (cSalju == true){
      cSalju = false;
    }else{
      cHujan = false;
      cSalju = true;
    }
  }
  
  if (key == ' '){
    if (sore == true){
      sore = false;
      malam = true;
    }else if(malam == true){
      malam =false;
    }else{
      sore = true;
    }
  }
}
