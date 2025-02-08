/*
1. Cree un programa el cual imprima una lista con los primeros 15 números de
la sucesión de Fibonacci.
*/
void main() {
  List<int> fibonacci = [];
  int a = 0, b = 1;

  for (int i = 0; i < 15; i++) {
    fibonacci.add(a);
    int temp = a;
    a = b;
    b = temp + b;
  }

  print(fibonacci);
}
