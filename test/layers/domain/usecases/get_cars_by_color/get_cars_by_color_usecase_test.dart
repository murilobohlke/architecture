import 'package:architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  
  test('Should return instance of car entity', () {
    GetCarsByColorUsecase usecase = GetCarsByColorUsecaseImp(GetCarsByColorRepositoryImp(GetCarsByColorLocalDatasourceImp()));
    
    var result = usecase('Blue');
    late CarEntity resp;

    result.fold((l) => null, (r)=>resp = r);

    expect(resp, isInstanceOf<CarEntity>());
  });

  test('Should return car with CV = 116', () {
    GetCarsByColorUsecase usecase = GetCarsByColorUsecaseImp(GetCarsByColorRepositoryImp(GetCarsByColorLocalDatasourceImp()));
    
    var result = usecase('Red');
    late CarEntity resp;

    result.fold((l) => null, (r)=>resp = r);

    expect(resp.cv, 116);
  });

  test('Should return car with CV = 145 when color is not red', () {
    GetCarsByColorUsecase usecase = GetCarsByColorUsecaseImp(GetCarsByColorRepositoryImp(GetCarsByColorLocalDatasourceImp()));
    
    var result = usecase('Blue');

    late CarEntity resp;

    result.fold((l) => null, (r)=>resp = r);

    expect(resp.cv, 145);
  });
}