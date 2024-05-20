// Variables del juego
ArrayList<Moneda> monedas;
Spawner spawner;
PImage fondo, imgMoneda, imgGato;
Gato gato;
int contador = 0;

// Variables para el control del teclado
boolean left, right, up, down;

void setup() {
  size(800, 600);
  fondo = loadImage("fondo.jpg"); 
  imgMoneda = loadImage("moneda.png"); 
  imgGato = loadImage("gato.png"); 
  monedas = new ArrayList<Moneda>();
  spawner = new Spawner(imgMoneda);
  gato = new Gato(width/2, height-100, imgGato); 
}

void draw() {
  image(fondo, 0, 0, width, height);
  
  for (int i = monedas.size() - 1; i >= 0; i--) {
    Moneda m = monedas.get(i);
    m.caer();
    m.mostrar();
    if (gato.tocar(m)) {
      monedas.remove(i);
      contador++;
    } else if (m.y > height) {
      monedas.remove(i);
    }
  }
  
  gato.mover();
  gato.mostrar();
  
  fill(255);
  textSize(24);
  text("Monedas caídas: " + contador, 10, 30);

  if (frameCount % 60 == 0) {
    monedas.add(spawner.crearMoneda());
    spawner.cambiarPosicion();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) left = true;
    if (keyCode == RIGHT) right = true;
    if (keyCode == UP) up = true;
    if (keyCode == DOWN) down = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) left = false;
    if (keyCode == RIGHT) right = false;
    if (keyCode == UP) up = false;
    if (keyCode == DOWN) down = false;
  }
}
