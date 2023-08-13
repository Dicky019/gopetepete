import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/services/remote/config/result.dart';

import '../data/repository/module.dart';
import '../domain/repository/home_repository.dart';
import 'home_service.dart';

class HomeServiceImpl implements HomeService {
  final HomeRepository homeRepository;

  HomeServiceImpl(this.homeRepository);

  @override
  Future<Result<String>> getDriver(String id) {
    return homeRepository.getDriver(id);
  }

  @override
  Future<Result<String>> getDrivers() {
    return homeRepository.getDrivers();
  }

  @override
  Future<Result<String>> getRute(String id) {
    return homeRepository.getRute(id);
  }

  @override
  Future<Result<String>> getRutes() {
    return homeRepository.getRutes();
  }
}

final homeServiceProvider = Provider<HomeServiceImpl>((ref) {
  return HomeServiceImpl(ref.read(homeRepositoryProvider));
});
