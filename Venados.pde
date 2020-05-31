class Venados {
  PShape venado1;
  PShape venado2;
  
  Venados(){
    venado1 = loadShape("VENADO_1.obj");
    venado1.setFill(color(153,106,3));
    venado2 = loadShape("VENADO_1.obj");
    venado2.setFill(color(158,75,3));
  }
  
  void dibujar(){
    pushMatrix();
    rotateZ(PI);
    translate(-170,-95,0);
    scale(150);
    shape(venado1);
  popMatrix();
  //venado1.2
  pushMatrix();
    rotateZ(PI);
    translate(-180,-95,25);
    scale(150);
    shape(venado2);
  popMatrix();
  }

}
