import 'package:architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarsByColorRepositoryImp implements GetCarsByColorRepository{
  final GetCarsByColorDatasource _getCarsByColorDatasource;

  GetCarsByColorRepositoryImp(this._getCarsByColorDatasource);

  @override
  Either<Exception, CarEntity> call(String color) {
  
    return _getCarsByColorDatasource(color);
  }
  
}
