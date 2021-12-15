import 'package:architecture/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarsByColorDatasource{
  Either<Exception, CarDto> call(String color);
}