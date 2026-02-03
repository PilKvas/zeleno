import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/error_mapper.dart';
import 'package:zeleno_v2/core/helper/validator.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/login/cubit/login_cubit.dart';
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
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
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
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          _onSuccess(context);
        } else if (state.status == Status.failure &&
            state.error != null) {
          _onError(context, mapErrorToMessage(state.error!, context.l10n));
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
              _LoginForm(),
            ],
          ),
        ),
      ),
    );
  }

  void _onSuccess(BuildContext context) {
    CustomSnackBar.show(
      context: context,
      message: context.l10n.loginSuccess,
      type: SnackBarType.success,
    );

    context.router.pushAndPopUntil(
      const HomeRoute(),
      predicate: (_) => false,
    );
  }

  void _onError(BuildContext context, String message) {
    CustomSnackBar.show(
      context: context,
      message: message,
      type: SnackBarType.error,
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
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
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
                l10n.login,
                style: textTheme.title.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              ZTextField(
                controller: _nameController,
                fillColor: const Color.fromRGBO(248, 248, 252, 1),
                hintText: l10n.nameHint,
                validator: Validator.name(l10n),
              ),
              const SizedBox(height: 14),
              ZTextField(
                controller: _passwordController,
                fillColor: const Color.fromRGBO(248, 248, 252, 1),
                isPassword: true,
                hintText: l10n.passwordHint,
                validator: Validator.password(l10n),
              ),
              const SizedBox(height: 44),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const ZButton(
                      type: ZButtonType.primary,
                      child: CircularProgressIndicator(color: Colors.white),
                    );
                  }
                  return ZButton(
                    onPressed: _onLoginPressed,
                    type: ZButtonType.primary,
                    child: Text(l10n.loginButton),
                  );
                },
              ),
              const _DividerWithText(),
              _RegisterLink(
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

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<LoginCubit>().loginUser(
            _emailController.text,
            _nameController.text,
            _passwordController.text,
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

class _RegisterLink extends StatelessWidget {
  final ZTypography textTheme;
  final ZColorScheme colors;
  final AppLocalizations l10n;

  const _RegisterLink({
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
          l10n.noAccountQuestion,
          style: textTheme.body.copyWith(fontSize: 15),
        ),
        GestureDetector(
          onTap: () {
            context.router.push(const RegistrationRoute());
          },
          child: Text(
            l10n.registerAction,
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
