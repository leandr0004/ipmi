//leandro vazquez 
// comision 3
//https://youtu.be/RaemU09UkCA
int cant = 10;
int tam;
int grosor = 20;
float tono;
PImage imagen1; 

void setup() {
  size(800, 400);
  imagen1 = loadImage("imagen1.jpeg"); 
}

void draw() {
  background(255); 

  image(imagen1, 0, 0, width / 2, height);

 
  tam = calcularTamanoCelda(width / 2, cant);
  

  println("Tamaño de cada celda: " + tam);


  for (int a = 0; a < cant; a++) {
    for (int b = 0; b < cant; b++) {
      tono = map(mouseY, 0, 200, 0, 50);
      fill(0);
      stroke(tono);
      strokeWeight(grosor);
      rect((a * tam) + width / 2, b * tam, tam, tam);
    }
  }

  for (int c = 0; c < cant; c++) {
    for (int d = 0; d < cant; d++) {
      fill(255, 255);
      noStroke();
      rect((d * tam) + width / 2 + tam / 2, c * tam + tam / 2, 12, 12); 
    }
  }
}

void mousePressed() {
  grosor = 20;
}

void keyPressed() {
  if (key == 'r') { 
    grosor = 8;
    mouseY = 0;
  }
}

// Función propia que calcula el tamaño de las celdas
int calcularTamanoCelda(int anchoDisponible, int cantidadCeldas) {
  // Imprimir los valores de entrada
  println("Ancho disponible: " + anchoDisponible);
  println("Cantidad de celdas: " + cantidadCeldas);
  
  // Calcular y retornar el tamaño de cada celda
  int tamanoCelda = anchoDisponible / cantidadCeldas;
  
  // Imprimir el valor de retorno
  println("Tamaño calculado de la celda: " + tamanoCelda);
  
  return tamanoCelda;
}
