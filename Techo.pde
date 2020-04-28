class Techo{
  ArrayList<PVector> vertices;
  
  Techo(){
    vertices = new ArrayList<PVector>(); //Inicializacion
    vertices.add(new PVector(0,100.5,140));
    vertices.add(new PVector(0,100.5,150));
    vertices.add(new PVector(0,0,100));
    vertices.add(new PVector(0,0,70));
  }

  void DibujarTec(){
    beginShape();
      noStroke();
      fill(#F44336);
      for(PVector v : vertices){
        vertex(v.x, v.y, v.z);
      }
    endShape(CLOSE);
  }



}
