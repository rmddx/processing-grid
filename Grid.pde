class Grid{
  Cell[] cells;

  int x_cell_count;
  int y_cell_count;
  int count;
  
  Grid() {

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
    
    // end
  }
  
  
}