PImage Fondo,Sonic;
//PFont Fuente;
int PosYLogo;
boolean boton; 

void setup (){
  size(640,480);
  Fondo = loadImage("data/fondo.png");
  Sonic = loadImage("data/sonic.png");
  //Fuente = createFont("data/fuente.otf",24);
  PosYLogo = 94;
  boton = false;
  //Opacidad = 255;
}
//><=


void draw (){ 
 //textFont(Fuente);
 image(Fondo,0,0);
 image(Sonic,71,PosYLogo);
// fill(255,Opacidad);
 //text("play",265,320);
 println(frameCount);
 println(boton);
 if(boton) {
 if(PosYLogo > -290){
 PosYLogo = PosYLogo - 9;
// Opacidad = Opacidad - 15;
  }
 }
}

void mousePressed(){
if(mouseX >= 256 && mouseX <= 380){
    boton = true;
    }
   }
