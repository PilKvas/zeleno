import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/error_mapper.dart';
import 'package:zeleno_v2/core/helper/validator.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/registration/cubit/registration_cubit.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/core/widgets/custom_snackbar.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/resources/resources.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/app_text_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(
        authRepository: injection(),
      ),
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
          _onSuccess(context);
        } else if (state.status == Status.failure && state.error != null) {
          _onError(
            context: context,
            message: mapRegistrationErrorToMessage(state.error!, context.l10n),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.l10n.title,
            style: const TextStyle(
              fontFamily: "Monserrat",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              _BackGroundImage(),
              _RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }

  void _onSuccess(BuildContext context) {
    CustomSnackBar.show(
      context: context,
      message: context.l10n.registrationSuccess,
      type: SnackBarType.success,
    );

    if (context.mounted) {
      context.router.popForced();
    }
  }

  void _onError({required BuildContext context, required String message}) {
    CustomSnackBar.show(
      context: context,
      message: message,
      type: SnackBarType.error,
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
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return Positioned(
      top: 170,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.register,
                style: textTheme.title.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 26),
              Column(
                spacing: 14,
                children: [
                  ZTextField(
                    controller: _emailController,
                    fillColor: const Color.fromRGBO(248, 248, 252, 1),
                    hintText: l10n.emailHint,
                    validator: Validator.email(l10n),
                  ),
                  ZTextField(
                    controller: _passwordController,
                    fillColor: const Color.fromRGBO(248, 248, 252, 1),
                    isPassword: true,
                    hintText: l10n.passwordHint,
                    validator: Validator.password(l10n),
                  ),
                  ZTextField(
                    controller: _confirmPasswordController,
                    fillColor: const Color.fromRGBO(248, 248, 252, 1),
                    isPassword: true,
                    hintText: l10n.confirmPasswordHint,
                    validator:
                        Validator.confirmPassword(l10n, _passwordController),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              BlocBuilder<RegistrationCubit, RegistrationState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const ZButton(
                      onPressed: null,
                      type: ZButtonType.primary,
                      child: CircularProgressIndicator(color: Colors.white),
                    );
                  }
                  return ZButton(
                    onPressed: _onRegisterPressed,
                    type: ZButtonType.primary,
                    child: Text(l10n.registerButton),
                  );
                },
              ),
              const _DividerWithText(),
              _LoginLink(
                textTheme: textTheme,
                colors: colors,
                l10n: l10n,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onRegisterPressed() {
    final registrationCubit = context.read<RegistrationCubit>();
    if (_formKey.currentState?.validate() ?? false) {
      registrationCubit.registerUser(
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Row(
        spacing: 10,
        children: [
          const Expanded(child: Divider(color: Colors.grey)),
          Text(context.l10n.orSeparator),
          const Expanded(child: Divider(color: Colors.grey)),
        ],
      ),
    );
  }
}

class _LoginLink extends StatelessWidget {
  final ZTypography textTheme;
  final ZColorScheme colors;
  final AppLocalizations l10n;

  const _LoginLink({
    required this.textTheme,
    required this.colors,
    required this.l10n,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        Text(
          l10n.alreadyHaveAccountQuestion,
          style: textTheme.body.copyWith(fontSize: 15),
        ),
        GestureDetector(
          onTap: () {
            context.router.push(const LoginRoute());
          },
          child: Text(
            l10n.loginAction,
            style: textTheme.body.copyWith(
              fontSize: 15,
              color: colors.actionSecondary,
            ),
          ),
        ),
      ],
    );
  }
}

class _BackGroundImage extends StatelessWidget {
  const _BackGroundImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 70,
          child: Image.asset(ZImages.woollyBee),
        ),
        Positioned(
          right: 0,
          child: Image.asset(ZImages.woollyCactus),
        ),
      ],
    );
  }
}
