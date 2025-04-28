import 'package:zeleno_v2/core/config/url.dart';

class AppConfig {
  /// Server url.
  final Url url;

  /// Proxy url.
  final String? proxyUrl;

  final bool preferMock;

  const AppConfig({
    required this.url,
    this.proxyUrl,
    this.preferMock = false,
  });
}
