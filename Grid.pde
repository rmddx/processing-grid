class Grid {

  Cell[] cells;

  int x_cell_count;
  int y_cell_count;
  int count;

  Grid() {
    build();
  }

  void build() {
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

  void lines() {
    for (Cell c : cells) {
      stroke(255);
      noFill();
    }
  } 

  void coordinates() {
    for (Cell c : cells) {
      rect(c.x, c.y, size, size);
      if ((c.y/size) == 1) {
        text((c.x/size)-1, c.x+5, c.y-10);
      }
      if ((c.x/size) == 1) {
        text((c.y/size)-1, c.x-20, c.y+20);
      }
    }
  }

  void update() {
    for (Cell c : cells) {
      // update
    }
  }

  int getIndex(int r, int c) {
    return (r * x_cell_count) + c;
  }
}