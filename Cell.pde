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
    a = 255;
    fill(r, g, b, a);
    rect(x, y, size, size);
    println(x, y, r, g, b, a);
  }

  void off() {
    noFill();
    rect(x, y, size, size);
  }

  void update() {
    a = int(a * decay);

    fill(r, g, b, a);   
    rect(x, y, size, size);
  }
}