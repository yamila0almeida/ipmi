PImage Fondo,Soniclogo,sonic,equipo,Knuckles,tail,Amyrose, eggman;
//PFont Fuente;
int PosYLogo,Pantalla,Frame,PosX;
boolean boton; 

//60frames por Segundo
//ej (300 frames = 5seg)
/*
if(frameCount >=/> Frame + x=180 && frameCount </<= Frame + y=240){
  ..... POSX == X;
}else if (frameCount > Frame + y=240){
 ...... 
}
*/

void setup (){
  size(640,480);
  Fondo = loadImage("data/fondo.png");
  Soniclogo = loadImage("data/soniclogo.png");
  sonic = loadImage("data/sonic.png");
  tail = loadImage("data/tail.png");
  Knuckles = loadImage("data/Knuckles.png");
  Amyrose = loadImage("data/AmyRose.png");
  equipo = loadImage("data/Sonicteam.png");
  //Fuente = createFont("data/fuente.otf",24);
  PosYLogo = 94;
  Pantalla = 1;
  PosX = 100;
  Frame = 0;
  boton = false;
  //Opacidad = 255;
}
//><=


void draw (){
 image(Fondo,0,0);
 //textFont(Fuente);
 println("ESTE ES LA PANTALLA",Pantalla);
 println("ESTE ES EL FRAMECOUNT",frameCount);
 println("ESTE ES EL FRAME",Frame);
   if(Pantalla == 1){
   image(Soniclogo,71,PosYLogo);
   if(boton == false){
     textSize(30);
     text("Haz click para comenzar",150,380);
   }else if(boton) {
     if(PosYLogo > -290){
       PosYLogo = PosYLogo - 9;
    }else if(PosYLogo <= -290){
      Pantalla = 2;
      Frame = frameCount;
    }
   }
  }else if(Pantalla == 2){ 
    textSize(20);
    textAlign(CENTER,CENTER); 
    text("Los juegos principales son plataformas donde el objetivo es recolectar las Chaos Emeralds (Esmeraldas del Caos) y salvar a los amigos secuestrados de Eggman.  Aunque la saga ha evolucionado para incluir spin-offs de carreras,");
    ("lucha y deportes,la esencia sigue siendo la exploración rápida de niveles llenos de loops y obstáculos para detener los planes del villano.",PosX,80);
    image(equipo, PosX, 240,270,202);
    if (PosX > -300){
      if(frameCount >= Frame + 120){
        PosX = PosX - 5;
      }
    }else if(PosX <= 300){
      Pantalla = 3;
      
      Frame = frameCount;
    }
  }else if(Pantalla == 3){
    image(Fondo,0,0);
     text("Esta es la Pantalla 3",150,150);
     image(sonic, PosX, 240,300,174);
 
     if(frameCount > Frame + 120){
      Pantalla = 4;
      Frame = frameCount;
    }
  }else if(Pantalla == 4){
    text("Esta es la Pantalla 4",150,150);
  }
}
void mousePressed(){
if(mouseX >= 256 && mouseX <= 380){
    boton = true;
    }
   }
