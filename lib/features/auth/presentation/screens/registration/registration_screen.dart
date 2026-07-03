import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/registration/cubit/export.dart';
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
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(authRepository: injection()),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationCubit, RegistrationState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          CustomSnackBar.show(
            context: context,
            message: context.l10n.registrationSuccess,
            type: SnackBarType.success,
          );
          if (context.mounted) context.router.popForced();
        } else if (state.status == Status.failure && state.error != null) {
          CustomSnackBar.show(
            context: context,
            message: mapRegistrationErrorToMessage(state.error!, context.l10n),
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
                child: const _RegistrationForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegistrationForm extends StatefulWidget {
  const _RegistrationForm();

  @override
  State<_RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<_RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
          Text(l10n.register, style: typography.headline300),
          const SizedBox(height: 26),
          Column(
            spacing: 14,
            children: [
              ZTextField(
                controller: _emailController,
                fillColor: colors.surface,
                hintText: l10n.emailHint,
                validator: Validator.email(l10n),
              ),
              ZTextField(
                controller: _passwordController,
                fillColor: colors.surface,
                isPassword: true,
                hintText: l10n.passwordHint,
                validator: Validator.password(l10n),
              ),
              ZTextField(
                controller: _confirmPasswordController,
                fillColor: colors.surface,
                isPassword: true,
                hintText: l10n.confirmPasswordHint,
                validator: Validator.confirmPassword(l10n, _passwordController),
              ),
            ],
          ),
          const SizedBox(height: 30),
          BlocBuilder<RegistrationCubit, RegistrationState>(
            builder: (context, state) {
              return ZButton.gradient1(
                onPressed: state.status.isLoading ? null : _onRegisterPressed,
                child: state.status.isLoading
                    ? CircularProgressIndicator(color: colors.secondaryBg)
                    : Text(l10n.registerButton),
              );
            },
          ),
          const _DividerWithText(),
          _LoginLink(typography: typography, colors: colors, l10n: l10n),
        ],
      ),
    );
  }

  void _onRegisterPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<RegistrationCubit>().registerUser(
            email: _emailController.text,
            password: _passwordController.text,
          );
    }
  }
}

class _DividerWithText extends StatelessWidget {
  const _DividerWithText();

  @override
  Widget build(BuildContext context) {
    final dividerColor =
        ZColorScheme.of(context).secondaryText.withValues(alpha: 0.35);
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

class _LoginLink extends StatelessWidget {
  const _LoginLink({
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
        Text(l10n.alreadyHaveAccountQuestion, style: typography.body),
        GestureDetector(
          onTap: () => context.router.push(const LoginRoute()),
          child: Text(
            l10n.loginAction,
            style: typography.body.copyWith(color: colors.actionSecondary),
          ),
        ),
      ],
    );
  }
}
