import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_7_5/app/models/car/cars.dart';
import 'package:kt_7_5/app/routes/appPages.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final int index;
  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255,184,184,184),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: () => Get.toNamed(Routes.CAR_PAGE, arguments: car),
        isThreeLine: true,
        title: Text(car.brand),
        subtitle: Text("${car.model} Цена: ${car.price}"),
        leading: Column(
          children: [
            const Icon(Icons.car_rental,color: Color.fromARGB(255,255,87,51),),
            const SizedBox(height: 7),
            Text(index.toString())
          ],
        ),
      ),
    );
  }
}
