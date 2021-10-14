import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/controllers/heroe_controller.dart';

class EstablecerHeroe extends StatelessWidget {
  EstablecerHeroe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nombres = <String>[
      "Spider-Man",
      "Hulk",
      "Iron-Man",
      "Capitan America",
      "Venom",
      "Thor",
      "Black Widow",
      "Black Panter",
      "Thanos",
      "Star Lord",
      "Gamora",
      "Doctor Strange",
      "Carnage"
    ];
    final heroeController = Get.find<HeroeController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Establecer heroe'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Conviertete en super heroe"),
          onPressed: () {
            var ran = new Random();
            var nombre = nombres[ran.nextInt(nombres.length)];
            heroeController.cambiarNombre(nombre);
            Get.back();
          },
        ),
      ),
    );
  }
}
