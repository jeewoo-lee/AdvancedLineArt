PImage source;

void setup() {
  noStroke();
  int widthSize = 3024;
  int heightSize = 4032;
  size(3024, 4032);
  drawMosaic(widthSize, heightSize, 7, "me.jpg");

  
}





























void drawMosaic (int widthSize, int heightSize, int pixelSize, String fileName) {

  source = loadImage(fileName);
  source.loadPixels();
  int pictureSize = widthSize * heightSize -1;
  

  for (int position = 0; position <= pictureSize; position += 1) {

    float b = brightness(source.pixels[position]);
    
    float size = map(b, 255, 0, 1, 6);
    color c = (source.pixels[position]);
 
    int x = position % width;  // remainder after integer division e.g.: 13 % 5 = 3 
    int y = position / width;  // integer division e.g.: 13 / 5 = 2
    
    if ((x > 0) && (y > 0) && (y % pixelSize == 0) && (x % pixelSize == 0)) {   
      fill (c);    
      ellipse(x, y, size, size);
    
    }
  }

} 


void draw() {
noLoop();

 
}
