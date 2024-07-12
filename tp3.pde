//youtu.be/XbFxrWW45S0
//lucas salvatierra 
//comicion 3  

PImage flechas;

// para la cantidad de cuadrados y triangulos
int cantx = 7;
int canty = 7;
// Matriz para almacenar los colores de las flechas
int colores;

void setup() {
  size(800, 400);
  flechas = loadImage("flechas.jpeg");
   colores = color(255);
  }


void draw() {
  background(#7703AA);
  image(flechas, 0, 0, 400, 400);
  float modY = 430 / canty;
  float modX = 400 / cantx;

  for (int j = 0; j < canty; j++) {
    for (int i = 0; i < cantx; i++) {
      noStroke();
      fill(colores);
      rect(430 + i * modX, 50 + j * modY, 25, 15);
      triangle(430 + i * modX, 50 + j * modY + 25, 410 + i * modX, 50 + j * modY + 7.5, 430 + i * modX, 50 + j * modY - 10);
    }
  }
}

void mousePressed() {     
      colores=aleatoriocolor(); // Cambia al color aleatorio
      }




void keyPressed() {
  // Si se presiona la tecla 'r' (por ejemplo), reinicia los colores de las flechas
  if (key == 'r' || key == 'r') {
    for (int i = 0; i < cantx; i++) {
      for (int j = 0; j < canty; j++) {
        colores=255;
      }
    }
  }
}
color aleatoriocolor(){
 return color(random(255), random(255), random(255));
}
