import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController{

  final GetCarsByColorUsecase _getCarsByColorUsecase;
  final SaveFavoriteCarUsecase _saveFavoriteCarUsecase;

  CarController(this._getCarsByColorUsecase, this._saveFavoriteCarUsecase){
    getCarsByColor('Red');
  }

  late CarEntity car;

  getCarsByColor(String color){
    var result = _getCarsByColorUsecase(color);

    result.fold(
      (error) => print(error.toString()), 
      (success) => car=success
    );
  }

  saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUsecase(car);
  }
}