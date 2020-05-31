class Eje3D {
  
  Eje3D() {
  
  }
  
  void Dibujar() {
    // Eje X rojo
    stroke(255, 0, 0);
    line(0,0,0, 40,0,0);
    
    // Eje Y verde
    stroke(0, 255, 0);
    line(0,0,0, 0,40,0);
    
    // Eje Z azul
    stroke(0, 0, 255);
    line(0,0,0, 0,0,40);
  }
  
}
