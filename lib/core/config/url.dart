/// Server url.
enum Url {
  /// Dev url.
  dev('http://213.171.4.22:8001'),

  /// Prod url.
  prod('http://213.171.4.22:8001');

  /// Url value.
  final String value;

  const Url(this.value);
}
