PImage referencia;

void setup() {
  size(800, 400);
  referencia = loadImage("bluey.png"); 
  image(referencia, 0, 0, 400, 400);   

  drawBlueyRight();
}

void drawBlueyRight() {
  int offsetX = 400;

   //CUERPO 
  fill(100, 160, 255); 
  rect(offsetX + 100, 150, 100, 140, 30);

  // PIERNAS 
  fill(160, 210, 255); 
  rect(offsetX + 105, 290, 30, 50, 10); 
  rect(offsetX + 165, 290, 30, 50, 10); 

  // BRAZOS
  fill(100, 160, 255); 
  rect(offsetX + 50, 170, 40, 20, 10); 
  rect(offsetX + 210, 170, 40, 20, 10); 

  //PIES
  fill(220, 240, 255); 
  ellipse(offsetX + 120, 340, 30, 20); 
  ellipse(offsetX + 180, 340, 30, 20);

  // CABEZA
  fill(100, 160, 255); 
  rect(offsetX + 100, 50, 100, 110, 20);

  // ORJAS 
  fill(30, 30, 90); 
  triangle(offsetX + 100, 50, offsetX + 120, 10, offsetX + 140, 50); 
  triangle(offsetX + 160, 50, offsetX + 180, 10, offsetX + 200, 50); 

  fill(255, 230, 150); 
  triangle(offsetX + 115, 50, offsetX + 125, 20, offsetX + 135, 50);
  triangle(offsetX + 165, 50, offsetX + 175, 20, offsetX + 185, 50);

  // CARA 
  fill(255); 
  ellipse(offsetX + 125, 100, 30, 40); 
  ellipse(offsetX + 175, 100, 30, 40); 

  fill(0); 
  ellipse(offsetX + 125, 100, 10, 20);
  ellipse(offsetX + 175, 100, 10, 20);

  fill(255, 230, 150); 
  ellipse(offsetX + 150, 130, 70, 50);

  fill(50); 
  triangle(offsetX + 145, 115, offsetX + 155, 115, offsetX + 150, 125);
}
