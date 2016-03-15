Cell[] cells;

int x_cell_count, y_cell_count;
int count;
int size = 25;
float decay = .9;
int x_center1, y_center1;
int x_center2, y_center2;
int margin = 25;
boolean run = true;
int key = 0;

void setup() {
  size(500, 500);
frameRate(12);
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


class Cell {
  int x;
  int y;
  int x_center, y_center;

  int r, g, b, a;
  int index, row, col;
  
  String status = "off";

  Cell(int row, int col, int index) {
    r = 255;
    g = 255;
    b = 255;
    a = 255;
    index = index;
    x = col * size + margin;
    y = row * size + margin;
    x_center = int(x + (size/2));
    y_center = int(y + (size/2));
  }

  void on() {
    a = 255;
    fill(r, g, b, a);
    rect(x, y, size, size);
    status = "on";
    println(x, y, r, g, b, a);
  }

  void off() {
    noFill();
    rect(x, y, size, size);
  }

  void update() {
    a = int(a * decay);

    if (a <= 1) {
      status = "off";
    }
    fill(r, g, b, a);   
    rect(x, y, size, size);
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
      if((c.y/size) == 1){
      text((c.x/size)-1,c.x+5,c.y-10);
      }
      if((c.x/size) == 1){
      text((c.y/size)-1,c.x-20,c.y+20);
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

void ani_1(){
    background(0, 0, 0);
    cells[getIndex(5,5)].on();
    cells[getIndex(6,5)].on();
    cells[getIndex(5,5)].off();
    cells[getIndex(6,6)].on();
  
}