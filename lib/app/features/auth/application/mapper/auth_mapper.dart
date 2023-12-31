import '/app/services/remote/config/result.dart';
import '/app/utils/extension/string_extension.dart';
import '../../domain/model/user.dart';
import '../../data/response/user_response.dart';

class AuthenticationMapper {
  AuthenticationMapper._();

  static Result<User> mapToUserResult(Result<UserResponse> response) {
    return response.when(
      success: (data) {
        final userRole =
            data.role == "passenger" ? UserRole.passenger : UserRole.driver;
        return Result.success(
          User(
            id: data.id.toEmpty,
            name: data.name.toEmpty,
            email: data.email.toEmpty,
            image: data.image.toEmpty,
            status: data.status ?? false,
            userRole: userRole,
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static User mapToUser(UserResponse data) {
    final userRole =
        data.role == "passenger" ? UserRole.passenger : UserRole.driver;
    return User(
      id: data.id.toEmpty,
      name: data.name.toEmpty,
      email: data.email.toEmpty,
      image: data.image.toEmpty,
      status: data.status ?? false,
      userRole: userRole,
    );
  }
}
