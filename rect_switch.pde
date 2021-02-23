//Pallette 
color darkPurple = #230F2b;
color pink = #F21D41;
color lightGreen = #EBEBBC;
color medGreen = #BCE3C5;
color darkGreen = #82b3ae;

int toggle = 1;

void setup() {
 size(800,600);
 strokeWeight(5);
 textSize(30);
}

void draw() {
 background(darkPurple);
 
 fill(darkGreen);
 stroke(lightGreen);
 rect(100, 100, 200, 100);

 fill(lightGreen);
 stroke(darkGreen);
 rect(300, 400, 300, 200);
 
 if(toggle > 0) {
 guidelines();
 } else {
   cursor();
 }
}

void mouseReleased() {
  //if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
    button (100, 600, 100, 200);
    //toggle = toggle *-1;
  //}
  //if (mouseX > 300 && mouseX < 600 && mouseY > 400 && mouseY < 600) {
    button (300, 600, 400, 600);
    //toggle = toggle *-1;
  //}
}

void guidelines() {
 fill(pink);
 stroke(pink);
 line(mouseX, 0, mouseX, height);
 line(0, mouseY, width, mouseY);
 noCursor();
 text("X:" + mouseX, mouseX + 30, mouseY + 50);
 text("Y:" + mouseY, mouseX + 30, mouseY + 80);
}

void button(int x1, int x2, int y1, int y2) {
   if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    toggle = toggle * -1;
  }
}
