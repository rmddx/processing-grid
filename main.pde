
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

void settings(){
  size(400, 400);
  smooth(0);
}

void config(){
  run = true;
  size = 25;
  decay = .9; 
  margin = 25;
}

void setup() {
  config();

  // initialize 
  grid = new Grid();

}


// methods 

int getIndex(int r, int c) {
  return (r * grid.x_cell_count) + c;
}

void grid(boolean state) {
  for (Cell c : grid.cells) {
    if (state == true) {
      stroke(255);
      noFill();
      rect(c.x, c.y, size, size);
      if ((c.y/size) == 1) {
        text((c.x/size)-1, c.x+5, c.y-10);
      }
      if ((c.x/size) == 1) {
        text((c.y/size)-1, c.x-20, c.y+20);
      }
    } else {
      noStroke();
      noFill();
    }
  }
}



void keyPressed() {
  if (keyCode == 32) {
    ani_1();    
    println("run");
  }
}


void draw() {
  background(0, 0, 0);
  grid(true);

  //int x1, x2, y1, y2;

  //for (Cell c : cells) {
  //}
}

void ani_1() {
  background(0, 0, 0);
  grid.cells[getIndex(5, 5)].on();
  grid.cells[getIndex(6, 5)].on();
  grid.cells[getIndex(5, 5)].off();
  grid.cells[getIndex(6, 6)].on();
}