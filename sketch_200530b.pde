
Eje3D eje;
PImage background;
PShape escenario;
PShape aguila2;
//PShape aguila;
Aguila aguila;
VenadoGrande venadoGrande;
Huevo huevo;
Persona persona;
Venados venados;
Gallo gallo;
GalloFondo galloFondo;
Mesa mesa;
Rata rata;
Pegazo pegazo;


void settings(){
  size(800,800, P3D);
}


void setup(){
  eje = new Eje3D();
  escenario = loadShape("escenario.obj");
  escenario.setFill(color(255,0,0));
  aguila = new Aguila();
  venadoGrande = new VenadoGrande();
  persona = new Persona();
  huevo = new Huevo();
  venados = new Venados();
  gallo = new Gallo();
  galloFondo = new GalloFondo();
  mesa = new Mesa();
  background = loadImage("background.jpg");
  rata = new Rata();
  pegazo = new Pegazo();  
}

void draw(){
  float t = 0.5 * (millis()/1000.0);
  translate(400,400,400);
  background(0);
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  translate(width/2, height/2, -100);
  lights();
  eje.Dibujar();
  //
  pushMatrix();
     translate(-280,-350,-300);
    image(background, 0,0);
  popMatrix();
  //escenario
  pushMatrix();
    rotateY(PI/2);
    rotateZ(PI);
    translate(0,-100,0);
    scale(50);
    shape(escenario);
  popMatrix();
  persona.dibujar();
  venados.dibujar();
  rata.dibujar();
  rata.mover(-40, (millis()/1000.0)/5.0);
  pegazo.dibujar();
  gallo.dibujar();
  aguila.dibujar(t);
  venadoGrande.dibujar();
  huevo.dibujar();
  mesa.dibujar();
  galloFondo.dibujar();
}
/*void keyPressed() {
  persona.translate(-1.5,0,-2);
  persona.rotateY(radians(180));
  venado.translate(-2.5,0,0);
  venado.rotateY(radians(180));
  venado2.translate(-0.75,0,0);
  venado2.rotateY(radians(180));
  escenario.rotateY(radians(180));
}*/
