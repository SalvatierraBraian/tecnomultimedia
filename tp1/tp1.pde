import processing.core.PFont;

PFont fuente;
String[] textos = {"el 17 de diciembre,\n de 1903 el flyer tomo vuelo\n por primera vez", "Fue un aeroplano\n en el cual volaban acostados", "Fue lanzado con una catapulta\n para tomar vuelo",""};
int indiceTexto = 0;
float posicionX = -200;
int estado = 0;
int tiempoInicio = 0;
PImage[] imagenes = new PImage[4];
int resetAreaX = 45; // Coordenada X del área de reinicio
int resetAreaY = 122; 
int resetAreaWidth = 540; // Ancho del área de reinicio 320,240,500,400
int resetAreaHeight = 230; 
void setup() {
  size(640, 480);

  fuente = createFont("Arial-BoldItalicMT-48.vlw", 40);
  textFont(fuente);
  textAlign(CENTER, CENTER);

  imagenes[0] = loadImage("1.jpg");
  imagenes[1] = loadImage("2.jpg");
  imagenes[2] = loadImage("3.jpg");
  imagenes[3] = loadImage("fin.jpg");
  imagenes[0].resize (640,480);
     imagenes[1].resize (640,480);
      imagenes[2].resize (640,480);
       imagenes[3].resize (640,480);
}

void draw() {
  background(255);
  millis();
  image(imagenes[indiceTexto], 0, 0, width, height);
  
  if (estado == 0) {
    // Mover texto hacia el centro
    posicionX += 2;

    if (posicionX >= width/2) {
      estado = 1;
      tiempoInicio = millis();
    }
  } else if (estado == 1) {
    // sto´pp
    if (millis() - tiempoInicio >= 10000) {
      estado = 2;
    }
  } else if (estado == 2) {
    posicionX += 2;

    if (posicionX >= width + 200) {
      estado = 0;
      indiceTexto = (indiceTexto + 1) % textos.length;
      posicionX = -200;
    }
  }

  fill(250,0,0);
  textSize(32);
  text(textos[indiceTexto], posicionX, height/2);
}
 
 void mousePressed(){
 if (mouseX >= resetAreaX && mouseX <= resetAreaX + resetAreaWidth &&
      mouseY >= resetAreaY && mouseY <= resetAreaY + resetAreaHeight) { 
         estado = 0;
       tiempoInicio = 0;
       millis();
       indiceTexto = 0;
  }
}
