class Gato {
  float x, y;
  PImage img;

  Gato(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
  }

  void mover() {
    if (left) x -= 5;
    if (right) x += 5;
    if (up) y -= 5;
    if (down) y += 5;
    x = constrain(x, 0, width - img.width);
    y = constrain(y, 0, height - img.height);
  }

  void mostrar() {
    image(img, x, y);
  }

  boolean tocar(Moneda m) {
    return (m.x > x && m.x < x + img.width && m.y > y && m.y < y + img.height);
  }
}
