int dr;
int fr;

float t;

void setup() {
  size(500, 500);  
  background(0);

  dr = 10; //set duration
  fr = 30; // set frame rate 
  frameRate(fr); 
}

void draw() {
  background(0);

  stroke(255);

  translate(width/2, height/2);

  ellipse(x(t), y(t), 20, 20);
  t++;

  // save frame ///////
  int lastFrame = dr * fr;
  if (frameCount <= lastFrame) {
    //saveFrame("sketch_frames/####.png");
    println((frameCount * 100) / lastFrame + "%");
  } else {
    println("done");
  }
  //////////////////////
  
}

float x(float t) {
  return sin(t / 10) * 100 + sin(t) * 1;
}

float y(float t) {
  return cos(t / 10) * 100;
}