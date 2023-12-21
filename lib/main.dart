import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/appPages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "kt_7_5",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
