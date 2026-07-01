import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/error_mapper.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/cubit/password_reset_verify_cubit.dart';
import 'package:zeleno_v2/features/auth/presentation/widgets/auth_background.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/core/widgets/custom_snackbar.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/z_otp_code_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class PasswordResetVerifyScreen extends StatelessWidget {
  const PasswordResetVerifyScreen({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordResetVerifyCubit(
        authRepository: injection(),
      ),
      child: _Content(email: email),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PasswordResetVerifyCubit, PasswordResetVerifyState>(
      listener: (context, state) {
        if (state.status == Status.failure && state.error != null) {
          CustomSnackBar.show(
            context: context,
            message: mapErrorToMessage(state.error!, context.l10n),
            type: SnackBarType.error,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(context.l10n.forgotPasswordCodeTitle)),
        body: SafeArea(
          child: Stack(
            children: [
              const Positioned.fill(child: AuthBackground()),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                    16, MediaQuery.sizeOf(context).height * 0.22, 16, 24),
                child: _VerifyForm(email: email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VerifyForm extends StatefulWidget {
  const _VerifyForm({required this.email});

  final String email;

  @override
  State<_VerifyForm> createState() => _VerifyFormState();
}

class _VerifyFormState extends State<_VerifyForm> {
  static const int _otpLength = 6;
  String _otpValue = '';
  String? _otpError;

  @override
  Widget build(BuildContext context) {
    final typography = ZTypography.of(context);
    final colors = ZColorScheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.forgotPasswordCodeDescription(widget.email),
          style: typography.body,
        ),
        const SizedBox(height: 24),
        ZOtpCodeField(
          length: _otpLength,
          onChanged: _onOtpChanged,
        ),
        if (_otpError != null) ...[
          const SizedBox(height: 8),
          Text(
            _otpError!,
            style: typography.body.copyWith(color: colors.error),
          ),
        ],
        const SizedBox(height: 24),
        BlocBuilder<PasswordResetVerifyCubit, PasswordResetVerifyState>(
          builder: (context, state) {
            return ZButton.gradient1(
              onPressed: state.status.isLoading
                  ? null
                  : () => _onContinuePressed(context),
              child: state.status.isLoading
                  ? CircularProgressIndicator(color: colors.secondaryBg)
                  : Text(context.l10n.next),
            );
          },
        ),
      ],
    );
  }

  void _onOtpChanged(String value) {
    _otpValue = value;
    if (_otpError != null) {
      setState(() => _otpError = null);
    }
  }

  Future<void> _onContinuePressed(BuildContext context) async {
    if (_otpValue.isEmpty) {
      setState(() => _otpError = context.l10n.forgotPasswordOtpEmptyError);
      return;
    }
    if (_otpValue.length != _otpLength) {
      setState(() => _otpError = context.l10n.forgotPasswordOtpLengthError);
      return;
    }
    final cubit = context.read<PasswordResetVerifyCubit>();
    final router = context.router;
    await cubit.verifyOtp(email: widget.email, otp: _otpValue);
    if (!mounted) return;
    final state = cubit.state;
    if (state.status.isSuccess && state.token != null) {
      router.push(PasswordResetConfirmRoute(token: state.token!));
    }
  }
}
