import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../source/module.dart';
import 'home_repository_impl.dart';

final homeRepositoryProvider = Provider<HomeRepositoryImpl>((ref) {
  return HomeRepositoryImpl(network: ref.read(homeNetworkProvider));
});