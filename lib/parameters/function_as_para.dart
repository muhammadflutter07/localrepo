void sayhello() {
  print("hello muhammad");
}

void executefunction(Function f) {
  f();
}

void main() {
  executefunction(sayhello);
}
