import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/cubit/export.dart';
import 'package:zeleno_v2/features/auth/presentation/widgets/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/inputs/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class PasswordResetConfirmScreen extends StatelessWidget {
  const PasswordResetConfirmScreen({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PasswordResetConfirmCubit(authRepository: injection()),
      child: _Content(token: token),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PasswordResetConfirmCubit, PasswordResetConfirmState>(
      listener: (context, state) {
        if (state.status == Status.failure && state.error != null) {
          CustomSnackBar.show(
            context: context,
            message: mapErrorToMessage(state.error!, context.l10n),
            type: SnackBarType.error,
          );
          return;
        }
        if (state.status == Status.success) {
          CustomSnackBar.show(
            context: context,
            message: context.l10n.forgotPasswordSuccess,
            type: SnackBarType.success,
          );
          context.router.popUntilRouteWithName(LoginRoute.name);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.forgotPasswordNewPasswordTitle),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              const Positioned.fill(child: AuthBackground()),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                  16,
                  MediaQuery.sizeOf(context).height * 0.22,
                  16,
                  24,
                ),
                child: _ConfirmForm(token: token),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConfirmForm extends StatefulWidget {
  const _ConfirmForm({required this.token});

  final String token;

  @override
  State<_ConfirmForm> createState() => _ConfirmFormState();
}

class _ConfirmFormState extends State<_ConfirmForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final typography = ZTypography.of(context);
    final colors = ZColorScheme.of(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.forgotPasswordNewPasswordDescription,
            style: typography.body,
          ),
          const SizedBox(height: 24),
          ZTextField(
            controller: _passwordController,
            fillColor: colors.surface,
            isPassword: true,
            hintText: context.l10n.passwordHint,
            validator: Validator.password(context.l10n),
          ),
          const SizedBox(height: 14),
          ZTextField(
            controller: _confirmPasswordController,
            fillColor: colors.surface,
            isPassword: true,
            hintText: context.l10n.confirmPasswordHint,
            validator: Validator.confirmPassword(
              context.l10n,
              _passwordController,
            ),
          ),
          const SizedBox(height: 24),
          BlocBuilder<PasswordResetConfirmCubit, PasswordResetConfirmState>(
            builder: (context, state) {
              return ZButton.gradient1(
                onPressed: state.status.isLoading
                    ? null
                    : () => _onContinuePressed(context),
                child: state.status.isLoading
                    ? CircularProgressIndicator(color: colors.secondaryBg)
                    : Text(context.l10n.forgotPasswordConfirmAction),
              );
            },
          ),
        ],
      ),
    );
  }

  void _onContinuePressed(BuildContext context) {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    context.read<PasswordResetConfirmCubit>().confirmPasswordReset(
      token: widget.token,
      newPassword: _passwordController.text.trim(),
    );
  }
}
