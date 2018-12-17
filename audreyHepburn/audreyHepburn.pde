PImage source;
 

void setup() {
  noStroke();
  int widthSize = 1557;
  int heightSize = 1960;
  size(1557, 1960);
  drawMosaic(widthSize, heightSize, 8, "hepburn.JPG");

  
}





























void drawMosaic (int widthSize, int heightSize, int pixelSize, String fileName) {

  source = loadImage(fileName);
  source.loadPixels();
  int pictureSize = widthSize * heightSize -1;
  

  for (int position = 0; position <= pictureSize; position += 1) {

    float b = brightness(source.pixels[position]);
    
    float size = map(b, 0, 255, 1, 6);
    color c = (source.pixels[position]);
 
    int x = position % width;  // remainder after integer division e.g.: 13 % 5 = 3 
    int y = position / width;  // integer division e.g.: 13 / 5 = 2
    
    if ((x > 0) && (y > 0) && (y % pixelSize == 0) && (x % pixelSize == 0)) {   
     // fill (c);    
      ellipse(x, y, size, size);
    
    }
  }
  save("Hepbrun");
} 


void draw() {
noLoop();

 
}
