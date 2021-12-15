import 'package:architecture/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity{
  String iden;
  double price;
  int cvs;
  
  CarDto({
    required this.iden,
    required this.price,
    required this.cvs
  }): super(cv: cvs, id: iden, value: price);

  Map toMap(){
    return {
      'iden': iden,
      'price': price,
      'cvs': cvs
    };
  }

  static CarDto fromMap(Map map){
    return CarDto(
      iden: map['iden'], 
      price: map['price'], 
      cvs: map['cvs']
    );
  }
}