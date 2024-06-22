class Car {
  static int numberOfCars = 0; // Keeps track of created Car objects

  String brand;
  String model;
  int year;
  double milesDriven = 0.0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++; // Increment on object creation
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car("Toyota", "Camry", 2020);
  Car car2 = Car("Honda", "Civic", 2018);
  Car car3 = Car("Ford", "Mustang", 2022);

  // Drive each car
  car1.drive(10000);
  car2.drive(5000);
  car3.drive(2000);

  // Print details of each car
  print("Car 1:");
  print("  Brand: ${car1.getBrand()}");
  print("  Model: ${car1.getModel()}");
  print("  Year: ${car1.getYear()}");
  print("  Miles Driven: ${car1.getMilesDriven()}");
  print("  Age: ${car1.getAge()} years");

  print("\nCar 2:");
  print("  Brand: ${car2.getBrand()}");
  print("  Model: ${car2.getModel()}");
  print("  Year: ${car2.getYear()}");
  print("  Miles Driven: ${car2.getMilesDriven()}");
  print("  Age: ${car2.getAge()} years");

  print("\nCar 3:");
  print("  Brand: ${car3.getBrand()}");
  print("  Model: ${car3.getModel()}");
  print("  Year: ${car3.getYear()}");
  print("  Miles Driven: ${car3.getMilesDriven()}");
  print("  Age: ${car3.getAge()} years");

  // Print total number of Car objects created
  print("\nTotal Cars Created: $Car.numberOfCars");
}
