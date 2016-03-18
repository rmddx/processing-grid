
// initialize variables

Cell[] cells;
int x_cell_count;
int y_cell_count;
int count;
int size;
int x_center1;
int y_center1;
int x_center2;
int y_center2;
int margin;
float decay;
boolean run;




void setup() {

  // config
  run = true;
  size = 25;
  decay = .9; 
  margin = 25;
  size(700, 900);
  
  // initialize 
  x_cell_count = (width - (margin*2))/size;
  y_cell_count = (height -(margin*2))/size;
  count = x_cell_count * y_cell_count;
  cells = new Cell[x_cell_count * y_cell_count];

  int index = 0;
  for (int r = 0; r < y_cell_count; r++) {
    for (int c = 0; c < x_cell_count; c++) {
      cells[index++] = new Cell(r, c, index);
    }
  }
}





// methods 

int getIndex(int r, int c) {
  return (r * x_cell_count) + c;
}

void grid(boolean state) {
  for (Cell c : cells) {
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

  int x1, x2, y1, y2;

  for (Cell c : cells) {
  }
}

void ani_1() {
  background(0, 0, 0);
  cells[getIndex(5, 5)].on();
  cells[getIndex(6, 5)].on();
  cells[getIndex(5, 5)].off();
  cells[getIndex(6, 6)].on();
}