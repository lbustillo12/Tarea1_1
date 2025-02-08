/*
4. Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase
Biblioteca que contenga una lista de libros y funciones para:
a. Agregar libros.
b. Eliminar libros.
c. Buscar libros por autor.
d. Listar todos los libros ordenados por año de publicación.
*/
class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);
}

class Biblioteca {
  final List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> listarLibrosOrdenados() {
    final List<Libro> copiaOrdenada = List.from(libros);
    copiaOrdenada
        .sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return copiaOrdenada;
  }
}

void main() {
  final Biblioteca biblioteca = Biblioteca();

  biblioteca.agregarLibro(
      Libro('La bendicion oficial del cielo', 'Mo Xiang Tong Xiu', 2017));

  biblioteca.agregarLibro(Libro('El gran maestro de la cultivacion demoniaca',
      'Mo Xiang Tong Xiu', 2015));

  biblioteca.agregarLibro(Libro('El resplandor', 'Stephen King', 1977));

  biblioteca.agregarLibro(
      Libro('Cien anios de soledad', 'Gabriel Garcia Marquez', 1967));

  print('\n--------------------------');
  print(' Libros ordenados por año');
  print('--------------------------');
  final List<Libro> librosOrdenados = biblioteca.listarLibrosOrdenados();
  librosOrdenados.forEach((libro) {
    print('${libro.titulo} - ${libro.anioPublicacion}');
  });

  print('\n-----------------------------');
  print(' Libros de Mo Xiang Tong Xiu');
  print('-----------------------------');
  final List<Libro> librosOrwell =
      biblioteca.buscarPorAutor('Mo Xiang Tong Xiu');
  librosOrwell.forEach((libro) {
    print(libro.titulo);
  });

  biblioteca.eliminarLibro('El resplandor');
  print('\n--------------------------------------------');
  print(' Libros después de eliminar "El resplandor"');
  print('--------------------------------------------');
  final List<Libro> librosActualizados = biblioteca.listarLibrosOrdenados();
  librosActualizados.forEach((libro) {
    print(libro.titulo);
  });
}
