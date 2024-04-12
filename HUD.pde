Dado dado; // Declarar una variable para el dado

void setup() {
  size(400, 400);
  dado = new Dado(); // Inicializar el dado
  dado.setPosicion(new PVector(width/2, height/2)); // Establecer la posición del dado
  dado.setLado(100); // Establecer el tamaño del dado
}

void draw() {
  background(255); // Limpiar el lienzo
  
  // Dibujar la HUD (en este caso, solo el dado)
  dado.dibujar();
}

void mousePressed() {
  dado.tirarDado(); // Llamar al método tirarDado() cuando se presione el mouse
}
