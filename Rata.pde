class Rata {
   
  PShape rata;
  Eje3D eje;
  float x0 = -25;
  
  Rata(){
    rata = loadShape("rata.obj");
    eje = new Eje3D();
  }
  
  void dibujar(){
     pushMatrix();
      rotateZ(PI);  
      rotateY(PI);
      translate(x0,-90,-60);
      sphere(3);
      eje.Dibujar();
      scale(8);
      shape(rata);
    popMatrix();
  }
  
  float mover( float x1, float t) {
  float x = linear(x0, x1, -cos(PI*t)/2.0f + 0.5f); 
  return (t >1.0)? x1 : x; 
  }
  
  float linear(float x0, float x1, float t) {
  float x = x0 + t * (x1 - x0);
  return (t >1.0)? x1 : x;
  }
  
  

}
