import 'package:zeleno_v2/features/profile/domain/model/user.dart';

abstract class IProfileRepository {
  Future<User> getCurrentUser();
}
