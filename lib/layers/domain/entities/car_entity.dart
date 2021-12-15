class CarEntity {
  String id;
  double value;
  int cv;

  CarEntity({
    required this.id,
    required this.value,
    required this.cv
  });

  double get realValue{
    return value * cv; 
  }

}