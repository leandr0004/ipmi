//leandro vazquez , legajo :92834/3
int cuenta;
int pantalla = 1;
float x = 600;
float y = 200;
int speed = 3;
PImage pintura1, pintura2, pintura3;
int tama = 255;

void setup() {
  size(640, 480);
  cuenta = 0;
  textSize(25);
  textAlign(CENTER);
  pintura1 = loadImage("pintura1.jpg");
  pintura2 = loadImage("pintura2.jpg");
  pintura3= loadImage("pintura3.jpg");
}

void draw() {
  cuenta++;
  if (pantalla == 1) {
    image(pintura1, 0, 0, width, height);
    textSize(25);
    fill(255);
    text("Culturespaces nos presentó el proyecto Atelier des Lumières.Esta selección de imágenes enormes y luminosas incluyen sus característicos autorretratos, su serie Irises, y, su pièce de résistance, la deslumbrante Noche estrellada.", 20, x, width, height);
    x -= speed;
    speed %= 2;
  }
  if (pantalla == 2) {
    image(pintura2, 0, 0, width, height);
    textAlign(CORNER);
    fill(255, 232, 100 );
    textSize(20);
    text("Para llevar a estas obras maestras al siguiente nivel, el director artístico Gianfranco Iannuzzi optó por llenar el espacio con 140 video proyectores láser de última tecnología. La experiencia se complementa con música proveniente de 50 bocinas, con lo que se establece el ambiente de la muestra", 20, x, width, height);
    x += 1;
  }
  if (pantalla == 3) {
    image(pintura3, 0, 0, width, height);
    rect(240, tama, 120, 30);
    fill(tama);
    textSize(tama);
    text("Reiniciar", 300, 50);
    textAlign(CENTER);
    fill(255, 230, 100);

    textSize(tama);
    tama --;
    if (tama <= 25) {
      tama = 25;
    } else {
      tama --;
    }

    text("Además de resaltar el trabajo de Van Gogh,\n la exhibición también mostrará un pequeño \n programa enfocado en el arte  japonés", width/2, 200);
  } else {
    textAlign(CENTER);

    if (cuenta < 540) {
      pantalla = 1;
    } else if ((cuenta >= 600) && cuenta < 1100) {
      pantalla = 2;
    }
    if ((cuenta >= 1000) && cuenta < 1100) {
      pantalla = 3;
      rect(240, tama, 120, 30);
      fill(tama);
      textSize(tama);
      text("Reiniciar", 300, 50);
    }
  }
}
void mousePressed() {
  if (pantalla == 3 && mouseX >= 240 && mouseX <= 360 && mouseY >= 25 && mouseY <= 55) {
    pantalla = 1;
    cuenta = 0;
    cuenta ++;
    x = 600;
    y = 200;
    tama = 300;
  }
}
