
import 'package:architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  GetCarsByColorDatasource datasource = GetCarsByColorLocalDatasourceImp();
  GetCarsByColorRepository repository = GetCarsByColorRepositoryImp(datasource);
  
  test('Should give a car', (){

    var result = repository('any');

    expect(result, isNotNull);

  });
}