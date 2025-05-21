import 'package:flutter/foundation.dart';
import 'package:zeleno_v2/core/config/environment/build_type.dart';
import 'package:zeleno_v2/core/config/url.dart';

@immutable
class Environment {
  /// Build type.
  final BuildType buildType;

  /// Is this application running in dev mode.
  bool get isDev => buildType == BuildType.dev;

  /// Is this application running in prod mode.
  bool get isProd => buildType == BuildType.prod;

  const Environment({
    required this.buildType,
  });
}

extension BuildTypeX on BuildType {
  Url get defaultUrl => switch (this) {
        BuildType.dev => Url.dev,
        BuildType.prod => Url.prod,
      };
}
