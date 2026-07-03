import 'package:zeleno_v2/features/profile/domain/model/export.dart';

abstract class IProfileRepository {
  Future<User> getCurrentUser();
}
