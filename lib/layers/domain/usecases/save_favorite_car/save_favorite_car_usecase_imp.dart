import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:dartz/dartz.dart';

class SaveFavoriteCarUsecaseImp implements SaveFavoriteCarUsecase{

  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUsecaseImp(this._saveFavoriteCarRepository);

  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    return await _saveFavoriteCarRepository(carEntity);
  }
}