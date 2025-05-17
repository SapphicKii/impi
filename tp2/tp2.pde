PImage[] slides = new PImage[4];
String[] textos = new String[4];
int currentSlide = 0;
int lastChangeTime = 0;
int slideDuration = 5000; 

PFont font;
float animSize = 32;

void setup() {
  size(960, 540);

  // Cargar imágenes 
  slides[0] = loadImage("slide1.jpg"); 
  slides[1] = loadImage("slide2.jpg");
  slides[2] = loadImage("slide3.jpg"); 
  slides[3] = loadImage("slide4.jpg"); 

  // Textos por diapositiva
  textos[0] = "EL ETERNAUTA, LA SERIE";
  textos[1] = "El furor de Netflix, en la historieta argentina de ciencia ficción de Héctor Germán Oesterheld";
  textos[2] = "Narra como en Buenos Aires un grupo de supervivientes luchan contra una amenaza alienígena controlada por una fuerza desconocida";
  textos[3] = "Refleja como se ve impactada la sociedad por una catástrofe bajo la frase:";

  font = createFont("Arial", 32);
  textFont(font);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  image(slides[currentSlide], 0, 0, width, height);

  fill(255);
  textSize(28);
  textLeading(36);

  // Mostrar texto según la diapositiva
  if (currentSlide == 0) {
    fill(255, 0, 0); // Rojo para el título
    textSize(48);
    text(textos[0], width / 2, height - 60);

  } else if (currentSlide == 3) {
    // Texto fijo
    fill(255);
    textSize(26);
    text(textos[3], width / 2, height - 100);

    // Texto animado: NADIE SE SALVA SOLO
    animSize = 32 + 4 * sin(millis() * 0.005);
    textSize(animSize);
    fill(255, 255, 0);
    text("NADIE SE SALVA SOLO", width / 2, height - 50);

  } else {
    // Diapositivas 2 y 3
    fill(255);
    text(textos[currentSlide], width / 2, height - 60, width - 100, 200);
  }

  // Avance automático de diapositiva
  if (millis() - lastChangeTime > slideDuration) {
    currentSlide++;
    if (currentSlide >= slides.length) {
      currentSlide = 0;
    }
    lastChangeTime = millis();
  }
}
