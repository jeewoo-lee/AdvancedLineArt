PImage source;

void setup() {
  noStroke();
  int widthSize = 500;
  int heightSize = 500;
  size(500, 500);
  drawMosaic(widthSize, heightSize, 1, "fivehundred.JPG");

  
}





























void drawMosaic (int widthSize, int heightSize, int pixelSize, String fileName) {

  source = loadImage(fileName);
  source.loadPixels();
  int pictureSize = widthSize * heightSize -1;
  
  
  for (int position = 0; position <= pictureSize; position += 1500) {
       for (int i = position; i > 0 ; i -= 499) {
         // print("i is " + i + "\n");
    
          color c = (source.pixels[i]);
 
          int x = i % width;  // remainder after integer division e.g.: 13 % 5 = 3 
          int y = i / width;  // integer division e.g.: 13 / 5 = 2
    
          stroke(c);    
          point(x, y);
          //print("x is " + x + " and y is " + y + "\n");

   
      }
  }
  
    for (int position = 248500; position <= 248999; position += 3) {
       for (int i = position; i > 0 ; i -= 499) {
          //print("i is " + i + "\n");
    
          color c = (source.pixels[i]);
 
          int x = i % width;  // remainder after integer division e.g.: 13 % 5 = 3 
          int y = i / width;  // integer division e.g.: 13 / 5 = 2
    
          stroke(c);    
          point(x, y);
        //  print("x is " + x + " and y is " + y + "\n");

   
      }
  }
  
  save("output.png");

} 


void draw() {
noLoop();

 
}
