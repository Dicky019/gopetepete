import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/features/auth/domain/model/user.dart';

class ProfileState {
  final AsyncValue<User?> value;

  const ProfileState({
    this.value = const AsyncData(null),
  });

  ProfileState copyWith({
    AsyncValue<User>? value,
  }) {
    return ProfileState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}
