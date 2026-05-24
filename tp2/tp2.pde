PImage Fondo,Soniclogo,Sonic,knuckles,Tails,Amy,Eggman;
PFont Fuente;
int PosYLogo,Pantalla,Frame,PosX,PosX2,PosX3,PosX4,PosX5;
boolean boton; 

void setup (){
  size(640,480);
  Fondo = loadImage("data/fondo.png");
  Soniclogo = loadImage("data/soniclogo.png");
  Sonic = loadImage("data/Sonic.png");
  Tails = loadImage("data/Tails.png");
  knuckles = loadImage("data/knuckles.png");
  Amy = loadImage("data/Amy.png");
  Eggman= loadImage("data/Eggman.png");
  Fuente = createFont("data/sonicfuente.TTF",15);
  PosYLogo = 94;
  Pantalla = 1;
  PosX = 100;
  PosX2=100;
  PosX3=100;
  PosX4=100;
  PosX5=100;
  Frame = 0;
  boton = false;
  //Opacidad = 255;
}


void draw (){
 image(Fondo,0,0);
 textFont(Fuente);
 println("ESTE ES LA PANTALLA",Pantalla);
 println("ESTE ES EL FRAMECOUNT",frameCount);
 println("ESTE ES EL FRAME",Frame);
   if(Pantalla == 1){
   image(Soniclogo,71,PosYLogo);
   if(boton == false){
     textSize(30);
     text("Haz click para comenzar",90,380);
   }else if(boton) {
     if(PosYLogo > -290){
       PosYLogo = PosYLogo - 9;
    }else if(PosYLogo <= -290){
      Pantalla = 2;
      Frame = frameCount;
    }
   }
  }else if(Pantalla == 2){ 
    textAlign(CENTER,CENTER); 
    text("El es Sonic y el obj del juego es recolectar las Chaos\n(Esmeraldas del Caos) y salvar a los amigos secuestrados de Eggman.",PosX,80,400,150);
    image(Sonic, PosX, 240,270,202);
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
     text("Tails, cuyo nombre real es Miles Tails Prower, es el mejor amigo y compañero de aventuras de Sonic the Hedgehog.\nEs un zorro antropomórfico de dos colas, reconocido como un genio mecánico y un hábil piloto,\nsiendo el creador de la aeronave Tornado.",PosX2,80,300,150); 
     image(Tails, PosX2, 240,300,174);
 
     if(frameCount > Frame + 120){
      Pantalla = 4;
      Frame = frameCount;
    }
  }else if(Pantalla == 4){
    image(Fondo,0,0);
     text("Amy lo sigue en sus aventuras, creyendo que están destinados a estar juntos\n, aunque Sonic generalmente la ve solo como una amiga cercana y valiosa. ",PosX3,80,300,150);
     image(Amy, PosX3, 240,300,174);
 
     if(frameCount > Frame + 120){
      Pantalla = 5;
      Frame = frameCount;
    }
  }
 else if(Pantalla == 5){
    image(Fondo,0,0);
     text("Knuckles the Echidna es el segundo mejor amigo de Sonic y uno de sus aliados más leales\n,aunque su relación comenzó como una rivalidad hostil.",PosX5,80,300,150);
     image(knuckles, PosX4, 240,300,174);
 
     if(frameCount > Frame + 120){
      Pantalla = 6;
      Frame = frameCount;
    }
  }
else if(Pantalla == 6){
    image(Fondo,0,0);
     text("Dr. Ivo Robotnik, más conocido como Dr.\nEggman, es el archienemigo principal y antagonista de la franquicia Sonic the Hedgehog.n\nbusca conquistar el mundo para crear su propio imperio, el Eggman Empire.",PosX5,80,300,150);
     image(Eggman, PosX5, 240,300,174);
 
     if(frameCount > Frame + 120){
      Pantalla = 7;
      Frame = frameCount;
    }
  } else if (Pantalla==7){
    reiniciar();
   }
  
 }
 
void mousePressed(){
if(mouseX >= 256 && mouseX <= 380){
    boton = true;
    }
   }
   
  void reiniciar(){
    PosYLogo = 94;
  Pantalla = 1;
  PosX = 100;
  PosX2=100;
  PosX3=100;
  PosX4=100;
  PosX5=100;
  Frame = 0;
  boton = false;
  }
  
   
