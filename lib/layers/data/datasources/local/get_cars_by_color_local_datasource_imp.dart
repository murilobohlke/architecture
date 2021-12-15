import 'package:architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:architecture/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarsByColorLocalDatasourceImp implements GetCarsByColorDatasource{
  var json = {
    'iden': 'ITH9309',
    'price': 156.6,
    'cvs': 116
  };

  var json2 = {
    'iden': 'ITF5E97',
    'price': 189.0,
    'cvs': 145
  };

  @override
  Either<Exception, CarDto> call(String color) {
    try {
      if(color.contains('Red')) return Right(CarDto.fromMap(json));
      return Right(CarDto.fromMap(json2));
    } catch (e) {
      return Left(Exception('Datasource Error'));
    }
    
  }

}