class Dado {
  
  private int valor;
  private int lado;
  private PVector posicion;
  
  public Dado() {
    valor = 1; // Inicializar el valor del dado
  }
  
  public void dibujar() {
    fill(255); // Color blanco para el dado
    rect(posicion.x, posicion.y, lado, lado); // Dibujar el cuadrado del dado
    
    // Dibujar los puntos según el valor del dado
    if (valor == 1 || valor == 3 || valor == 5) {
      drawPoint(posicion.x + lado/2, posicion.y + lado/2); // Punto central
    }
    if (valor >= 2) {
      drawPoint(posicion.x + lado/4, posicion.y + lado/4); // Punto superior izquierdo
      drawPoint(posicion.x + 3*lado/4, posicion.y + 3*lado/4); // Punto inferior derecho
    }
    if (valor == 4 || valor == 5 || valor == 6) {
      drawPoint(posicion.x + lado/4, posicion.y + 3*lado/4); // Punto inferior izquierdo
      drawPoint(posicion.x + 3*lado/4, posicion.y + lado/4); // Punto superior derecho
    }
    if (valor == 6) {
      drawPoint(posicion.x + lado/4, posicion.y + lado/2); // Punto medio izquierdo
      drawPoint(posicion.x + 3*lado/4, posicion.y + lado/2); // Punto medio derecho
    }
  }
  
  private void drawPoint(float x, float y) {
    fill(0); // Color negro para los puntos
    ellipse(x, y, 10, 10); // Dibujar un punto
  }
  
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  public void setLado(int lado) {
    this.lado = lado;
  }
  
  public void tirarDado() {
    valor = (int)random(1, 7); // Generar un número aleatorio entre 1 y 6
  }
}

Dado dado; // Declarar una variable para el dado

void setup() {
  size(400, 400);
  dado = new Dado(); // Inicializar el dado
  dado.setPosicion(new PVector(width/2, height/2)); // Establecer la posición del dado
  dado.setLado(100); // Establecer el tamaño del dado
}

void draw() {
  background(255); // Limpiar el lienzo
  
  // Dibujar el dado en su posición actual
  dado.dibujar();
}

void mousePressed() {
  dado.tirarDado(); // Llamar al método tirarDado() cuando se presione el mouse
}
