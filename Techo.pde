class Techo{
  ArrayList<PVector> vertices;
  
  Techo(){
    vertices = new ArrayList<PVector>(); //Inicializacion
    vertices.add(new PVector(0,80,100));
    vertices.add(new PVector(0,78,110));
    vertices.add(new PVector(0,0,70));
    vertices.add(new PVector(0,0,40));
  }

  void DibujarTec(){
    beginShape();
      fill(#F44336);
      for(PVector v : vertices){
        vertex(v.x, v.y, v.z);
      }
    endShape(CLOSE);
  }



}
