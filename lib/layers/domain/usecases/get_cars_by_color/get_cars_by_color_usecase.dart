import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarsByColorUsecase{
  Either<Exception, CarEntity> call(String color);   
}