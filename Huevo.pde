class Huevo {
  PShape huevo;
  PImage textura;
  Huevo(){
    huevo = loadShape("webo.obj");
    huevo.setFill(color(255,146,109));
  }
  
  
  void dibujar(){  
    pushMatrix();
      rotateZ(PI);
      translate(-50,-30,30);
      scale(.15);
      shape(huevo);
      huevo.rotateY(radians(3));
    popMatrix();
  }


}
