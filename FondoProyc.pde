Eje3D eje;
float x,y,z;
Pared p;
Techo t;
PImage img; Piso blanco;
int [][] M;

void setup(){
  size(700,700,P3D);
  eje = new Eje3D();
  
  x = width/2;
  y = height/2;
  z = 0;
  
  p = new Pared();
  t = new Techo();
  
  //M = new PVector[5][5];
  blanco = new Piso(50,50);
  
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
  
  
  // PISO
  pushMatrix();
    //scale(0.25,0.25);
    for(int i=0; i<5; i++){ //Filas
        for(int j=0; j<5; j++){//columnas
           if((i+j) % 2 == 0){
             fill(0);
           } else{
             fill(255);
           } rect(i*20,j*20, 20, 20);
        }
    }
    
    
  popMatrix();
  
  
}
