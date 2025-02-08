/*
2. Crea un programa que devuelva una lista con todos los elementos únicos
de otra lista.
*/
void main() {
  final List<int> listaOriginal = [1, 2, 2, 3, 4, 4, 5, 6, 6];
  final List<int> listaUnica = listaOriginal.toSet().toList();

  print(listaUnica);
}
