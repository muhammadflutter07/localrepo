void main() {
  print(sumthree(10, 10, 10));
  print(iseven(3));
}

int sumthree(int a, int b, int c) => (a + b + c);

bool iseven(int n) => n % 2 == 0 ? true : false;
