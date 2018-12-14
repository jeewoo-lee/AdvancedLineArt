PImage source;

void setup() {
  int widthSize = 1920;
  int heightSize = 837;
  size(1920, 837);
  drawMosaic(widthSize, heightSize, 2, "schoenbrunn.JPG");

  
}





























void drawMosaic (int widthSize, int heightSize, int pixelSize, String fileName) {

  source = loadImage(fileName);
  source.loadPixels();
  int pictureSize = widthSize * heightSize -1;
  

  for (int position = 0; position <= pictureSize; position += 1) {

    float b = brightness(source.pixels[position]);
    
    float size = map(b, 0, 255, 1, 10);
    color c = (source.pixels[position]);
 
    int x = position % width;  // remainder after integer division e.g.: 13 % 5 = 3 
    int y = position / width;  // integer division e.g.: 13 / 5 = 2
    
    if ((x > 0) && (y > 0) && (y % pixelSize == 0) && (x % pixelSize == 0)) {   
      fill (c);    
      rect(x, y, size, size);
    
    }
  }

} 


void draw() {
noLoop();

 
}
