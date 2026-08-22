import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/login/cubit/export.dart';
import 'package:zeleno_v2/features/auth/presentation/widgets/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/inputs/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(authRepository: injection()),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.router.replace(const ProfileRoute());
        } else if (state.status == Status.failure && state.error != null) {
          CustomSnackBar.show(
            context: context,
            message: mapErrorToMessage(state.error!, context.l10n),
            type: SnackBarType.error,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.l10n.title,
            style: const TextStyle(
              fontFamily: 'Monserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                child: const _LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final typography = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.login, style: typography.headline300),
          const SizedBox(height: 40),
          ZTextField(
            controller: _emailController,
            fillColor: colors.surface,
            hintText: l10n.emailHint,
            validator: Validator.email(l10n),
          ),
          const SizedBox(height: 14),
          ZTextField(
            controller: _passwordController,
            fillColor: colors.surface,
            isPassword: true,
            hintText: l10n.passwordHint,
            validator: Validator.password(l10n),
          ),
          const SizedBox(height: 10),
          _ForgotPasswordLink(
            typography: typography,
            colors: colors,
            l10n: l10n,
          ),
          const SizedBox(height: 44),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return ZButton.gradient1(
                onPressed: state.status.isLoading ? null : _onLoginPressed,
                child: state.status.isLoading
                    ? CircularProgressIndicator(color: colors.secondaryBg)
                    : Text(l10n.loginButton),
              );
            },
          ),
          const _DividerWithText(),
          _RegisterLink(typography: typography, colors: colors, l10n: l10n),
        ],
      ),
    );
  }

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<LoginCubit>().loginUser(
        email: _emailController.text,
        password: _passwordController.text,
      );
    }
  }
}

class _ForgotPasswordLink extends StatelessWidget {
  const _ForgotPasswordLink({
    required this.typography,
    required this.colors,
    required this.l10n,
  });

  final ZTypography typography;
  final ZColorScheme colors;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => context.router.push(const PasswordResetRequestRoute()),
        child: Text(
          l10n.forgotPasswordAction,
          style: typography.body.copyWith(
            color: colors.actionSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _DividerWithText extends StatelessWidget {
  const _DividerWithText();

  @override
  Widget build(BuildContext context) {
    final dividerColor = ZColorScheme.of(
      context,
    ).secondaryText.withValues(alpha: 0.35);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        spacing: 10,
        children: [
          Expanded(child: Divider(color: dividerColor)),
          Text(context.l10n.orSeparator),
          Expanded(child: Divider(color: dividerColor)),
        ],
      ),
    );
  }
}

class _RegisterLink extends StatelessWidget {
  const _RegisterLink({
    required this.typography,
    required this.colors,
    required this.l10n,
  });

  final ZTypography typography;
  final ZColorScheme colors;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        Text(l10n.noAccountQuestion, style: typography.body),
        GestureDetector(
          onTap: () => context.router.push(const RegistrationRoute()),
          child: Text(
            l10n.registerAction,
            style: typography.body.copyWith(color: colors.actionSecondary),
          ),
        ),
      ],
    );
  }
}
