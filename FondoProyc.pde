Eje3D eje;
float x,y,z;
Pared p;
Techo t;

void setup(){
  size(512,512,P3D);
  eje = new Eje3D();
  
  x = width/2;
  y = height/2;
  z = 0;
  
  p = new Pared();
  t = new Techo();
}

void draw(){
  background(0);
  lights();
  camera(150, 150, 150,
          0,   0,   0,
          0,   0,  -1);
  eje.Dibujar();
  // Tipo de vista - Ortografica - Todo centrado
  ortho(-width/7, width/7, -height/7, height/7);
  
  // Tipo de vista - Perspectiva - Cono
  //float cameraZ = (height/2.0) / tan((PI/3)/2.0);
  //perspective(PI/3.0, float(width)/float(height),
  //            cameraZ/10.0, cameraZ*10.0);
  
  //Camara - Movimiento
   //camera(mouseX, height/2.0, (height/2.0) / tan((PI/3)/2.0), width/2, height/2, 0, 0, 1, 0);
  
  //Cubo
  //beginShape();
  //  fill(#E65100);
  //  noStroke();
  //  box(80,80,120);
  //endShape();
  
  //Rectangulos - Lineas
  beginShape();
    stroke(#B71C1C);
    line(0,100,0, 0,80,100);
    line(0,80,100, 0,0,40);
    line(0,0,40, 0,0,0);
    line(0,0,0, 0,100,0);
  endShape();
  
  //2D a 3D
  //pushMatrix();
  //  //translate(x,y,z);
  //  //rectMode(CENTER);
  //  fill(#69F0AE);
  //  rotateY(radians(270));
  //  rect(0,0,100,100);
  //popMatrix();
  
  //Pared izquierda
  p.Dibujar();
  //Pared derecha
  pushMatrix();
    rotateZ(radians(270));
    p.Dibujar();
  popMatrix();
  //Techo parte izquierda
  t.DibujarTec();
  //Techo parte derecha
  pushMatrix();
    rotateZ(radians(270));
    t.DibujarTec();
  popMatrix();
  
}
