class Heroe {
  String nombre;
  String superPoder;

  Heroe({required this.nombre, required this.superPoder});

  @override
  String toString() {
    return (' Nombre del heroe: $nombre, superpoder: $superPoder');
  }
}
