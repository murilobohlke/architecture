import 'package:architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  test('Should save the car', () async {

    SaveFavoriteCarUsecase usecase = SaveFavoriteCarUsecaseImp(SaveFavoriteCarRepositoryImp());

    CarEntity carEntity = CarEntity(id: 'ITH9309', value: 110, cv: 116);
    
    var result = await usecase(carEntity);
    late bool resp;

    result.fold((l) => null, (r)=>resp = r);

    expect(resp, true);
  });

  test('Should not save the car', () async {

    SaveFavoriteCarUsecase usecase = SaveFavoriteCarUsecaseImp(SaveFavoriteCarRepositoryImp());

    CarEntity carEntity = CarEntity(id: 'ITH9309', value: 0, cv: 116);
    
    var result = await usecase(carEntity);
    late bool resp;

    result.fold((l) => null, (r)=>resp = r);

    expect(resp, false);
  });
}