PImage source;

void setup() {
  size(561, 559);
  // load "van.JPG" from the "data" folder into source object 
  source = loadImage("deathstar.JPG");

  // we want to manipulate the pixels of this image directly
  // creates an array named "source.pixels"
  // array will have 424,000 values (width * height = 800 * 530 = 424,000)
  // the array will start at position 0
  // and with 424,000 values
  // the final position will then be at 423,999
  source.loadPixels();

  // loop from first pixel, at position 0, to final pixel, at position 423,999
  for (int position = 0; position <= 313598; position += 1) {

    // get brightness of current pixel
    float b = brightness(source.pixels[position]);
    
    // change brightness value (range of 0 to 255) into a diameter of range 1 to 10 
    float size = map(b, 255, 0, 1, 10);
    color c = (source.pixels[position]);
    
    // get the pixel's current position using integer arithmetic, see: http://russellgordon.ca/lcs/ics3u/integer_arithmetic.jpg
    int x = position % width;  // remainder after integer division e.g.: 13 % 5 = 3 
    int y = position / width;  // integer division e.g.: 13 / 5 = 2
    
    //boolean
    // draw an ellipse at position of current pixel
    //many conditions possible
    if ((x > 0) && (y > 0) && (y % 2 == 0) && (x % 2 == 0)) {   
      fill(c);    
      rect(x, y, size, size);
    
  }
}
  
}

void draw() {
noLoop();

 
}
