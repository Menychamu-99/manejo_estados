import 'package:get/get.dart';
import 'package:manejo_estados/models/Heroe.dart';

class HeroeController extends GetxController {
  var heroe = new Heroe().obs;

  void cambiarNombre(String nombre) {
    heroe.update((heroe) {
      heroe!.nombre = nombre;
    });
  }
}
