import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/controllers/heroe_controller.dart';

class QuienEres extends StatelessWidget {
  const QuienEres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroeCtrl = Get.put(HeroeController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Quien eres'),
      ),
      body: Obx(() {
        var heroe = heroeCtrl.heroe;
        if (heroe.value.nombre.isEmpty) {
          return Center(
            child: Text('Aun no eres super heroe'),
          );
        } else {
          return Center(child: Text('Eres: ${heroeCtrl.heroe.value.nombre}'));
        }
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.dashboard_customize),
          onPressed: () => Get.toNamed('pagina2')),
    );
  }
}
