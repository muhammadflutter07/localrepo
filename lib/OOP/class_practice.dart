void main() {
  Car car = Car();

  car.color = 'white';
  car.model = 'Honda civic';
  car.speed = 140;

  car.detail();
}

class Car {
  String? color;
  String? model;
  int? speed;

  void detail() {
    print('$color');
    print('$model');
    print('$speed');
  }
}
