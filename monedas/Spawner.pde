class Spawner {
  float x;
  PImage imgMoneda;
  
  Spawner(PImage imgMoneda) {
    this.imgMoneda = imgMoneda;
    cambiarPosicion();
  }

  Moneda crearMoneda() {
    return new Moneda(x, 0, imgMoneda);
  }

  void cambiarPosicion() {
    x = random(width);
  }
}
