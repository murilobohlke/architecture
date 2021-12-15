

import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarsByColorRepository {
  Either<Exception, CarEntity> call(String color);
}