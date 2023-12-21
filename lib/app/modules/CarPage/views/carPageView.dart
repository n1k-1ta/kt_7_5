import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/carPageController.dart';

class CarPageView extends GetView<CarPageController> {
  const CarPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,240,240,240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.curCar.toString(),
              style: const TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255,255,87,51),),
              ),
            SizedBox(height: 16),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255,184,184,184),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                onPressed: () => Get.back(),
                child: const Text("Назад"))
          ],
        ),
      ),
    );
  }
}
