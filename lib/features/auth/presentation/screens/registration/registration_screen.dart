import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/registration/cubit/registration_cubit.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/core/widgets/custom_snackbar.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/resources/resources.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/app_text_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);
    return BlocProvider(
      create: (context) => RegistrationCubit(
        authRepository: injection(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<RegistrationCubit, RegistrationState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              CustomSnackBar.show(
                context: context,
                message: 'Регистрация прошла успешно! Теперь вы можете войти в систему.',
                type: SnackBarType.success,
              );
              
              // Задержка перед переходом для отображения снэкбара
              Future.delayed(const Duration(seconds: 1), () {
                if (context.mounted) {
                  context.router.navigate(const LoginRoute());
                }
              });
            }
            if (state.status == Status.failure && state.errorResponse != null) {
              CustomSnackBar.show(
                context: context,
                message: state.errorResponse!,
                type: SnackBarType.error,
              );
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                locale.title,
                style: const TextStyle(
                  fontFamily: "Monserrat",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - kToolbarHeight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      const BackGroundImage(),
                      Positioned(
                        top: 170,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 25,
                            child: Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    locale.register,
                                    style: textTheme.title.copyWith(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 26,
                                  ),
                                  ZTextField(
                                    controller: emailController,
                                    fillColor:
                                        const Color.fromRGBO(248, 248, 252, 1),
                                    hintText: 'Почта',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Введите email';
                                      }
                                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                          .hasMatch(value)) {
                                        return 'Введите корректный email';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  ZTextField(
                                    controller: nameController,
                                    fillColor: const Color.fromRGBO(248, 248, 252, 1),
                                    hintText: 'Имя',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Введите имя';
                                      }
                                      if (value.length < 2) {
                                        return 'Имя слишком короткое';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  ZTextField(
                                    controller: passwordController,
                                    fillColor:
                                        const Color.fromRGBO(248, 248, 252, 1),
                                    isPassword: true,
                                    hintText: 'Пароль',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Введите пароль';
                                      }
                                      if (value.length < 8) {
                                        return 'Пароль меньше 8 символов';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  ZTextField(
                                    controller: confirmPasswordController,
                                    fillColor:
                                        const Color.fromRGBO(248, 248, 252, 1),
                                    isPassword: true,
                                    hintText: 'Повторите пароль',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Повторите пароль';
                                      }
                                      if (value != passwordController.text) {
                                        return 'Пароли не совпадают';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  BlocBuilder<RegistrationCubit,
                                      RegistrationState>(
                                    builder: (context, state) {
                                      return state.status.isLoading
                                          ? const ZButton(
                                              onPressed: null,
                                              type: ZButtonType.primary,
                                              child:
                                                  CircularProgressIndicator(color: Colors.white),
                                            )
                                          : ZButton(
                                              onPressed: () {
                                                if (formKey.currentState
                                                        ?.validate() ??
                                                    false) {
                                                  context
                                                      .read<RegistrationCubit>()
                                                      .registerUser(
                                                        emailController.text,
                                                        nameController.text,
                                                        passwordController.text,
                                                      );
                                                }
                                              },
                                              type: ZButtonType.primary,
                                              child: const Text('Зарегистрироваться'),
                                            );
                                    },
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('ИЛИ'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Divider(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Уже есть аккаунт?',
                                        style: textTheme.body
                                            .copyWith(fontSize: 15),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.router.push(
                                            const LoginRoute(),
                                          );
                                        },
                                        child: Text(
                                          'Войдите!',
                                          style: textTheme.body.copyWith(
                                            fontSize: 15,
                                            color: colors.actionSecondary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key});

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
