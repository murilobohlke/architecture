import 'package:architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:architecture/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  const CarPage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  CarController controller = GetIt.I.get<CarController>();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(controller.car.id),
        ),
      ),
    );
  }
}