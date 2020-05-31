class Mesa {
  PShape mesa;
  Eje3D eje;
  
  Mesa(){
    mesa = loadShape("mesa.obj");
    mesa.setFill(color(145,70,0));
    //eje = new Eje3D();
 }

  void dibujar(){
    pushMatrix();
      rotateZ(PI);  
      rotateY(PI/2);
      translate(-40,-63,-37);
      scale(0.36);
      shape(mesa);
    popMatrix();
  }
  
}
