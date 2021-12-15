import 'package:architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Should exist entity', (){
    CarEntity carEntity =  CarEntity(id: 'ITF5E97', value: 120, cv: 145);
    
    expect(carEntity, isNotNull);
  });

  test('Should cv is equal 145', (){
    CarEntity carEntity =  CarEntity(id: 'ITF5E97', value: 120, cv: 145);
    
    expect(carEntity.cv, 145);
  });

  test('Should real value equal 17.400', (){
    CarEntity carEntity =  CarEntity(id: 'ITF5E97', value: 120, cv: 145);
    
    expect(carEntity.realValue, 17400.00);
  });

  test('Should real value equal 0', (){
    CarEntity carEntity =  CarEntity(id: 'ITF5E97', value: 0, cv: 145);
    
    expect(carEntity.realValue, 0.00);
  });
}