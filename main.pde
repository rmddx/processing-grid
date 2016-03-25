
// initialize variables

int size;
int x_center1;
int y_center1;
int x_center2;
int y_center2;
int margin;
float decay;
boolean run;
Grid grid;

void settings() {
  size(400, 400);
  smooth(0);
}

void config() {
  run = true;
  size = 25;
  decay = .9; 
  margin = 25;
}

void setup() {
  config(); 
  grid = new Grid();
}

void draw() {
  background(0, 0, 0);
  grid.coordinates();
  grid.lines();
}

void keyPressed() {
  if (keyCode == 32) {
    ani_1();    
    println("run");
  }
}