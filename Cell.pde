class Cell {
  int x;
  int y;
  int x_center, y_center;

  int r, g, b, a;
  int index, row, col;

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
    fill(r, g, b, a);
    rect(this.x, this.y, size, size);
    noFill();
  }

  void off() {
    noFill();
    rect(this.x, this.y, size, size);
  }
}