color bgColor, sunColor, moonColor;
float sunPosition = -100;
boolean isDay = true;

void setup() {
  size(800, 600);
  bgColor = color(135, 206, 235);
  sunColor = color(255, 204, 0);
  moonColor = color(200);
}

void draw() {
  background(bgColor);
  
  fill(139, 69, 19);
  triangle(0, 400, 400, 100, 800, 400);
  
  fill(50, 205, 50);
  rect(0, 400, 800, 200);
  
  if (isDay) {
    fill(sunColor);
    ellipse(sunPosition, 150, 100, 100);
    
    sunPosition += 2;
    if (sunPosition > width + 50) {
      sunPosition = -100;
      isDay = false;
      bgColor = color(255, 192, 203);
    }
  } else {
    fill(moonColor);
    ellipse(sunPosition, 150, 100, 100);
    
    sunPosition += 1;
    if (sunPosition > width + 50) {
      sunPosition = -100;
      isDay = true;
      bgColor = color(0, 0, 51);
    }
  }
}
