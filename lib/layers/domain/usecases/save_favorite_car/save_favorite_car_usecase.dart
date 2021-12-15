import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SaveFavoriteCarUsecase{
  Future<Either<Exception, bool>> call (CarEntity carEntity);
}