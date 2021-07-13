import 'package:cars_shop_app/car.dart';

class InvertoryOfCars {
  List<Car> _cars = [];
  List<Car> addCars() {
    return _cars;
  }

  List<Car> getCars() {
    _cars
      ..add(new Car(
          carName: 'mercides',
          carPrice: 250000,
          carPicture: 'assets/mercedes.jpg'))
      ..add(new Car(
          carName: 'Ferari',
          carPrice: 1000000000,
          carPicture: 'assets/ferari.jpg'))
      ..add(new Car(
          carName: 'Golf', carPrice: 500000, carPicture: 'assets/golf.jpg'))
      ..add(new Car(
          carName: 'Toyota', carPrice: 520000, carPicture: 'assets/toyota.jpg'))
      ..add(new Car(
          carName: 'chevrolet',
          carPrice: 180000,
          carPicture: 'assets/chevrolet.jpg'))
      ..add(new Car(
          carName: 'mazda', carPrice: 18000, carPicture: 'assets/mazda.jpg'));

    return this._cars;
  }

  void clear() {
    _cars.clear();
  }

  void setCars(List<Car> cars) {
    this._cars = cars;
  }
}
