class GalloFondo {
  PShape galloFondo;
  GalloFondo(){
    galloFondo = loadShape("pajaro1.obj");
    galloFondo.setFill(color(179,146,230));
  }

  void dibujar() {
    pushMatrix();
      rotateZ(PI);
      rotateY((PI/3));
      translate(122,-50,-70);
      scale(40);
      shape(galloFondo);
    popMatrix();
  }

}
