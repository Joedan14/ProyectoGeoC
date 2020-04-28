class Pared{
  ArrayList<PVector> vertices;
  
  Pared(){
    vertices = new ArrayList<PVector>(); //Inicializacion
    vertices.add(new PVector(0,100,0));
    vertices.add(new PVector(0,80,100));
    vertices.add(new PVector(0,0,40));
    vertices.add(new PVector(0,0,0));
  }

  void Dibujar(){
    beginShape();
      fill(#D32F2F);
      for(PVector v : vertices){
        vertex(v.x, v.y, v.z);
      }
    endShape(CLOSE);
  }



}
