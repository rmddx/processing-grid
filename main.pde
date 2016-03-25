
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

void config() {
  run = true;
  size = 25;
  decay = .9; 
  margin = 25;
}

void settings() {
  size(400, 400);
  smooth(0);
}

void setup() {
  config(); 
  grid = new Grid();
}

void draw() {
  background(0, 0, 0);
  grid.update();
  grid.coordinates();
  grid.lines();
  
  //demo
  grid.cells[grid.getIndex(1, 4)].on();
  grid.cells[grid.getIndex(2, 3)].on();
  grid.cells[grid.getIndex(3, 4)].on();
  grid.cells[grid.getIndex(2, 5)].on();
}

void keyPressed() {
  if (keyCode == 32) {
    println("run");
  }
}