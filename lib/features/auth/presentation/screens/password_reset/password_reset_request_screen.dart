import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/error_mapper.dart';
import 'package:zeleno_v2/core/helper/validator.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/cubit/password_reset_request_cubit.dart';
import 'package:zeleno_v2/features/auth/presentation/widgets/auth_background.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/core/widgets/custom_snackbar.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/app_text_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class PasswordResetRequestScreen extends StatelessWidget {
  const PasswordResetRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordResetRequestCubit(
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
    return BlocListener<PasswordResetRequestCubit, PasswordResetRequestState>(
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
        appBar: AppBar(title: Text(context.l10n.forgotPasswordTitle)),
        body: SafeArea(
          child: Stack(
            children: [
              const Positioned.fill(child: AuthBackground()),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                    16, MediaQuery.sizeOf(context).height * 0.22, 16, 24),
                child: const _RequestForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RequestForm extends StatefulWidget {
  const _RequestForm();

  @override
  State<_RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<_RequestForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
            context.l10n.forgotPasswordEmailDescription,
            style: typography.body,
          ),
          const SizedBox(height: 24),
          ZTextField(
            controller: _emailController,
            fillColor: colors.surface,
            hintText: context.l10n.emailHint,
            validator: Validator.email(context.l10n),
          ),
          const SizedBox(height: 24),
          BlocBuilder<PasswordResetRequestCubit, PasswordResetRequestState>(
            builder: (context, state) {
              return ZButton.primary(
                onPressed: state.status.isLoading
                    ? null
                    : () => _onContinuePressed(context),
                child: state.status.isLoading
                    ? CircularProgressIndicator(color: colors.onAction)
                    : Text(context.l10n.next),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _onContinuePressed(BuildContext context) async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final email = _emailController.text.trim();
    final cubit = context.read<PasswordResetRequestCubit>();
    final router = context.router;
    await cubit.requestPasswordReset(email: email);
    if (!mounted) return;
    if (cubit.state.status.isSuccess) {
      router.push(PasswordResetVerifyRoute(email: email));
    }
  }
}
