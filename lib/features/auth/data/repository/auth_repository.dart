import 'dart:async';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/export.dart';
import 'package:zeleno_v2/features/auth/data/service/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

class AuthRepository implements IAuthRepository {
  final _controller = StreamController<AuthStatus>.broadcast();

  final AuthService _authService;
  final ITokensStorage _tokensStorage;

  AuthRepository({
    required ITokensStorage tokenStorage,
    required AuthService authService,
  })  : _authService = authService,
        _tokensStorage = tokenStorage;

  @override
  Stream<AuthStatus> get statusStream async* {
    final valid = await hasValidTokens();
    yield valid ? AuthStatus.authenticated : AuthStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<TokenModel> signIn({required AuthModel authModel}) async {
    final response = await _authService.signIn(authModel: authModel);
    await _tokensStorage.saveTokens(response);
    _controller.add(AuthStatus.authenticated);
    return response;
  }

  @override
  Future<void> requestPasswordReset({required String email}) {
    return _authService.requestPasswordReset(
      payload: PasswordResetRequestModel(email: email),
    );
  }

  @override
  Future<String> verifyPasswordResetOtp({
    required String email,
    required String otp,
  }) async {
    final response = await _authService.verifyPasswordResetOtp(
      payload: PasswordResetVerifyModel(email: email, otp: otp),
    );
    return response.token;
  }

  @override
  Future<void> confirmPasswordReset({
    required String token,
    required String newPassword,
  }) {
    return _authService.confirmPasswordReset(
      payload: PasswordResetConfirmModel(
        token: token,
        newPassword: newPassword,
      ),
    );
  }

  @override
  Future<void> signUp({required AuthModel authModel}) async {
    await _authService.signUp(authModel: authModel);
  }

  @override
  Future<void> signOut() async {
    await _tokensStorage.clear();
    _controller.add(AuthStatus.unauthenticated);
  }

  @override
  Future<bool> hasValidTokens() async {
    final access = await _tokensStorage.accessToken;
    final refresh = await _tokensStorage.refreshToken;
    return access != null && refresh != null;
  }
}
