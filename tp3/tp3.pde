
//link de youtube (perdon profe es de 3mn no logre hacerlo en menos)
// https://youtu.be/w_IiPpDlXOk


PImage miImagen;
boolean click;

float r = 255;
float g = 255;
float b = 255;

void setup() {
  size(800, 400);
  noStroke();
  miImagen = loadImage("imagen38.png"); //no me quedo tal cual la imagen
  click = false;
}

void draw() {
  background(0);

  pushMatrix();
  translate(600, 200);

  int anillos = 10;
  int puntosPorAnillo = 40;

  for (int i = 1; i <= anillos; i++) {
  for (int j = 0; j < puntosPorAnillo; j++) {

    float angulo = radians(360.0 / puntosPorAnillo * j);
    float radio = i * 25;

    float tamano = map(i, 1, anillos, 3, 25);

    if (keyPressed) {
      tamano = map(i, 1, anillos, 6, 50);
    }

    if (click == false) {
      fill(r, g, b);
      ellipse(cos(angulo) * radio, sin(angulo) * radio, tamano, tamano);
    } else {
      fill(r, g, b);
      rectMode(CENTER);
      rect(cos(angulo) * radio, sin(angulo) * radio, tamano, tamano);
    }
  }
}
  float centro = 15;

  if (keyPressed) {
    centro = 30;
  }

  if (click == false) {
    ellipse(0, 0, centro, centro);
  } else {
    rectMode(CENTER);
    rect(0, 0, centro, centro);
  }

  popMatrix();

  image(miImagen, 0, 0);
}

void mousePressed() {
  // va a cambiar a un color random al hacer clic
  r = random(255);
  g = random(255);
  b = random(255);
}

void mouseClicked() {
  // va cambiando entre elipse y rect
  click = !click;
}

void keyPressed() { //al presionar la tecla "r" va a volver al estado original
  if (key == 'r') {
    click = false;

    r = 255;
    g = 255;
    b = 255;
  }
}
