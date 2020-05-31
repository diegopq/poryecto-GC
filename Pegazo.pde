class Pegazo{
  PShape pegazo;
  Eje3D eje;
  Pegazo(){
    pegazo = loadShape("pegaso.obj");
    pegazo.setFill(color(103,229,255));
    eje = new Eje3D();
  }
  
  void dibujar(){
    pushMatrix();
      rotateZ(PI);  
      rotateY(PI/2);
      translate(60,-90,-60);
      sphere(3);
      eje.Dibujar();
      scale(1);
      shape(pegazo);
    popMatrix();
  }

}
