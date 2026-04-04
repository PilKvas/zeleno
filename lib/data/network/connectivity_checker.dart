import 'dart:io';

abstract interface class IConnectivityChecker {
  Future<bool> hasConnection();
}

class ConnectivityChecker implements IConnectivityChecker {
  @override
  Future<bool> hasConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
