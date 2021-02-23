//Pallette 
color darkPurple = #230F2b;
color pink = #F21D41;
color lightGreen = #EBEBBC;
color medGreen = #BCE3C5;
color darkGreen = #82b3ae;

float sliderX = 400;
float shade;

void setup() {
 size(800,600);
 strokeWeight(5);
 stroke(pink);
 fill(pink);
 
 shade = 0;
}

void draw() {
 background(shade);
 
 line(100, 300, 700, 300);
 circle(sliderX, 300, 50);
 shade = map(sliderX, 100, 700, 0, 255);
}

void mouseReleased() {
  controlslider();
}

void mouseDragged () {
  controlslider();
}

void controlslider() {
 if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325){
    sliderX = mouseX;
  } 
}
