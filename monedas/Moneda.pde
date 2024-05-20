class Moneda {
  float x, y;
  PImage img;

  Moneda(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
  }

  void caer() {
    y += 2; // Velocidad de caída
  }

  void mostrar() {
    image(img, x, y);
  }
}
