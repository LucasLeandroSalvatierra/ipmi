//https://youtu.be/zfK5zA0Hf1w//

PImage flechas;

// para la cantidad de cuadrados y triangulos
int cantx = 7;
int canty = 7;
// Matriz para almacenar los colores de las flechas
int[][] colores;

void setup() {
  size(800, 400);
  flechas = loadImage("flechas.jpeg");
  // Inicializa la matriz de colores
  colores = new int[cantx][canty]; 
  // use dos ciclo ford Llenar la matriz de color
  for (int i = 0; i < cantx; i++) {
    for (int j = 0; j < canty; j++) {
      colores[i][j] = color(255);
    }
  }
}

void draw() {
  background(#7703AA);
  image(flechas, 0, 0, 400, 400);
  //
  float modY = 430 / canty;
  float modX = 400 / cantx;
  
  // Dibuja las flechas con los colores actuales
  for (int j = 0; j < canty; j++) {
    for (int i = 0; i < cantx; i++) {
      noStroke();
      fill(colores[i][j]);
      rect(430 + i * modX, 50 + j * modY, 25, 15);
      triangle(430 + i * modX, 50 + j * modY + 25, 410 + i * modX, 50 + j * modY + 7.5, 430 + i * modX, 50 + j * modY - 10);
    }
  }
}

void mousePressed() {
  // Verifica si se hizo clic dentro de alguna de las áreas de las flechas
  float modY = 430 / canty;
  float modX = 400 / cantx;
  
  for (int j = 0; j < canty; j++) {
    for (int i = 0; i < cantx; i++) {
      float posX = 430 + i * modX;
      float posY = 50 + j * modY;
      
      // Verifica si el clic fue dentro del rectángulo de la flecha actual
      if (mouseX >= posX && mouseX <= posX + 25 && mouseY >= posY && mouseY <= posY + 15) {
        // Cambia el color de la flecha al hacer clic
        colores[i][j] = color(random(255), random(255), random(255)); // Cambia al color aleatorio
      }
    }
  }
}

void keyPressed() {
  // Si se presiona la tecla 'r' (por ejemplo), reinicia los colores de las flechas
  if (key == 'r' || key == 'r') {
    for (int i = 0; i < cantx; i++) {
      for (int j = 0; j < canty; j++) {
        colores[i][j] = color(255); // Reinicia al color blanco
      }
    }
  }
}
