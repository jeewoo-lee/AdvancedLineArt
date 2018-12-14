PImage source;

void setup() {
  noStroke();
  int widthSize = 10;
  int heightSize = 10;
  size(10, 10);
  drawMosaic(widthSize, heightSize, 1, "tenbyten.JPG");

  
}





























void drawMosaic (int widthSize, int heightSize, int pixelSize, String fileName) {

  source = loadImage(fileName);
  source.loadPixels();
  int pictureSize = widthSize * heightSize -1;
  
  
  for (int position = 0; position <= pictureSize; position += 30) {
       for (int i = position; i > 0 ; i -= 9) {
          print("i is " + i + "\n");
    
          color c = (source.pixels[i]);
 
          int x = i % width;  // remainder after integer division e.g.: 13 % 5 = 3 
          int y = i / width;  // integer division e.g.: 13 / 5 = 2
    
          stroke(c);    
          point(x, y);
          print("x is " + x + " and y is " + y + "\n");

   
      }
  }
  
  save("output.png");

} 


void draw() {
noLoop();

 
}
