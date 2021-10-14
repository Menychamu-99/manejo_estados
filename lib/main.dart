import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/pages/establecer_heroe.dart';
import 'package:manejo_estados/pages/quien_eres_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manejador de estados',
      initialRoute: '/pagina1',
      getPages: [
        //Podemos usar inyeccion de dependencias
        GetPage(name: '/pagina1', page: () => QuienEres()),
        GetPage(name: '/pagina2', page: () => EstablecerHeroe())
      ],
    );
  }
}
