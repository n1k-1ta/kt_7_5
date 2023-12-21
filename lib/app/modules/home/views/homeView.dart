import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt_7_5/app/widgets/carInfo.dart';

import '../controllers/homeController.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Obx(() => Text("Статус: ${controller.status.value.name}",
              style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.bold),),),
              SizedBox(height: 20),
              if (controller.status.value.name == 'Загрузка')
                const CircularProgressIndicator()
              else
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255,240,240,240),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () => controller.getData(),
                    child: const Text(
                      "Перезагрузить",
                    )),
              const SizedBox(height: 20),
              Obx(() => ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.cars.length,
                    itemBuilder: (context, index) {
                      return CarWidget(
                          car: controller.cars[index], index: index + 1);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
