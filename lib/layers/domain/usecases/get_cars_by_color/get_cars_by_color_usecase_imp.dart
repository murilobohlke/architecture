import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCarsByColorUsecaseImp implements GetCarsByColorUsecase{

  final GetCarsByColorRepository _getCarsByColorRepository;

  GetCarsByColorUsecaseImp(this._getCarsByColorRepository);

  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarsByColorRepository(color);
  }

}