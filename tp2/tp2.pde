PImage[] slides = new PImage[4];
String[] textos = new String[4];
int currentSlide = 0;
int lastChangeTime = 0;
int slideDuration = 5000; // Duración por diapositiva (5 segundos)

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

  // Texto según la diapositiva
 if (currentSlide == 0) {
    fill(255, 0, 0);
    textSize(48);
    text("EL ETERNAUTA, LA SERIE", width / 2, height - 60);

  } else if (currentSlide == 1) {
    fill(255);
    textSize(26);
    text("El furor de Netflix,\n en la historieta argentina de ciencia ficción\n de Héctor Germán Oesterheld", width / 2, height - 90);

  } else if (currentSlide == 2) {
   fill(255, 105, 180);
    textSize(26);
    text("Narra cómo en Buenos Aires un grupo de\nsupervivientes luchan contra una amenaza\nalienígena controlada por una fuerza desconocida", width / 2, height - 90);

  } else if (currentSlide == 3) {
    fill(255);
    textSize(26);
    text("Refleja cómo se ve impactada la sociedad\npor una catástrofe bajo la frase:", width / 2, height - 100);

    animSize = 32 + 4 * sin(millis() * 0.005); // Efecto animado
    textSize(animSize);
    fill(255, 255, 0);
    text("NADIE SE SALVA SOLO", width / 2, height - 50);
  }
  
  if (millis() - lastChangeTime > slideDuration) {
    currentSlide++;
    if (currentSlide >= slides.length) {
      currentSlide = 0;
    }
    lastChangeTime = millis();
  }
}
