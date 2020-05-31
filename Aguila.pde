
class Aguila {
  PShape aguila;
  Aguila(){
    aguila = loadShape("aguila.obj");
    aguila.setFill(color(230,201,112));
  }

  void dibujar(float t){
    pushMatrix();
      rotateZ(PI);
      rotateY(PI/2);
      translate(-30,0,-60);
      pushMatrix();
        translate(50*cos(t),70,-90 * sin(t));
        scale(15000);
        shape(aguila);
      popMatrix();
      //aguila.rotateY(radians(cos(t) + sin(t)));
    popMatrix();
  }

}
