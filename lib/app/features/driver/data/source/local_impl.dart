import '/app/services/local/hive_service.dart';
import '../../domain/model/driver.dart';
import 'local.dart';

class LocalImpl extends Local {
  final HiveService _hiveService;

  LocalImpl(this._hiveService);

  @override
  Driver? get getDriver => _hiveService.getDriver;

  @override
  Future<void> saveDriver(Driver driver) => _hiveService.putDriver(driver);

  @override
  Future<void> deleteDriver() => _hiveService.deleteDriver();
}
