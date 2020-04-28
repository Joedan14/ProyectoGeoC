class Piso{
  PImage img;
  float offset_x, offset_y;
  float ancho, alto;

  Piso(float ancho_, float alto_) {
    img = loadImage("blanco.jpg");
    offset_x = 0;
    offset_y = 0;
    ancho = ancho_;
    alto = alto_;
  }
  
  void Dibujar(){
    pushMatrix();
    scale(ancho/img.width, alto/img.height); //el ancho sobre el ancho de la imagen
    image(img, offset_x, offset_y); //offset_x y offset_y sirve para manipular la imagen
    popMatrix();  
  }
  
}
