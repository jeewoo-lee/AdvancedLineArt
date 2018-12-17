PImage source;
import processing.pdf.*;
PGraphics vectorImage;
void setup() {
  
   size(500, 500);
   background(255);
 
   vectorImage = createGraphics(width, height, PDF, "output.pdf");  
   vectorImage.beginDraw();
   noFill();
   vectorImage.noFill();
  
  // horizontally every 25th pixel
  for (int x = 0; x <= 500; x += 25) {
    for (int y = 0; y <=500; y += 25) {
        ellipse(x,y,random(0,10),random(0,10));
        vectorImage.ellipse(x, y, random(0,10),random(0,10));
    }
  }
}
void keyPressed() {
   // stop the program and exit     // stop the program and exit
   if (key == 's') {   
     // stop drawing to the PDF
     vectorImage.endDraw();
     vectorImage.dispose();
     vectorImage = null;
     // exit the program
       exit();
   }     
 }





void draw() {
noLoop();

 
}
