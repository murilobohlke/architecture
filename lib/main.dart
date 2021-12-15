import 'package:architecture/core/inject/inject.dart';
import 'package:architecture/layers/presentation/ui/car_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  Inject.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarPage()
    )
  );
}