class Persona {
  PShape persona;
  
  Persona(){
    persona = loadShape("PERSONA.obj");
    persona.setFill(color(255,255,255));
 }

  void dibujar(){
    pushMatrix();
      rotateZ(PI);  
      rotateY(PI/3);
      translate(-80,-95,-100);
      scale(100);
      shape(persona);
    popMatrix();
  }
  
}
