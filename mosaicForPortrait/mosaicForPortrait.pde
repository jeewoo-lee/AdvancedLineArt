PImage source;

void setup() {
  noStroke();
  int widthSize = 500;
  int heightSize = 685;
  size(500, 685);
  drawMosaic(widthSize, heightSize, 7, "einstein.jpg");

  
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
