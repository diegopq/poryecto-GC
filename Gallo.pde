class Gallo {
  PShape gallo;
  
  Gallo(){
    gallo = loadShape("PAJARO_2.obj");
    gallo.setFill(color(207,227,113));
  }
  
  void dibujar(){
    pushMatrix();
      rotateZ(PI);
      rotateY(PI);
      translate(28,-95,-42);
      rotateY(-PI/4);
      rotateZ(PI/8);
      scale(300);
      shape(gallo);
    popMatrix();
  }
  

}
