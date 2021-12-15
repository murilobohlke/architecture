import 'package:architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:architecture/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init(){
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarsByColorDatasource>(() => GetCarsByColorLocalDatasourceImp());
    //repositories
    getIt.registerLazySingleton<GetCarsByColorRepository>(() => GetCarsByColorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(() => SaveFavoriteCarRepositoryImp());

    //usecases
    getIt.registerLazySingleton<GetCarsByColorUsecase>(() => GetCarsByColorUsecaseImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarUsecase>(() => SaveFavoriteCarUsecaseImp(getIt()));

    //controllers
    getIt.registerFactory<CarController>(() => CarController(getIt(), getIt()));
  }
}