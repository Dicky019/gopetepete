import '../../domain/model/driver.dart';

abstract class Local {
  Driver? get getDriver;

  Future<void> saveDriver(Driver driver);
  Future<void> deleteDriver();
}
