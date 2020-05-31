class VenadoGrande {
   PShape venado;
  
  
  VenadoGrande(){
    venado = loadShape("VENADO_1.obj");
    venado.setFill(color(235,165,0));
  }
  
  void dibujar(){
    pushMatrix();
    rotateZ(PI);
    rotateY(PI);
    translate(-70,-95,-10);
    scale(200);
    shape(venado);
  popMatrix();
  }


}
