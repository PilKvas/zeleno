import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/cubit/export.dart';
import 'package:zeleno_v2/features/auth/presentation/widgets/export.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/inputs/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class PasswordResetRequestScreen extends StatelessWidget {
  const PasswordResetRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PasswordResetRequestCubit(authRepository: injection()),
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
        if (state case PasswordResetRequestFailure(:final error)) {
          CustomSnackBar.show(
            context: context,
            message: mapErrorToMessage(error, context.l10n),
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
                  16,
                  MediaQuery.sizeOf(context).height * 0.22,
                  16,
                  24,
                ),
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
          BlocSelector<
            PasswordResetRequestCubit,
            PasswordResetRequestState,
            bool
          >(
            selector: (state) => state.isLoading,
            builder: (context, isLoading) {
              return ZButton.gradient1(
                onPressed: isLoading ? null : () => _onContinuePressed(context),
                child: isLoading
                    ? CircularProgressIndicator(color: colors.secondaryBg)
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
    if (cubit.state is PasswordResetRequestSuccess) {
      router.push(PasswordResetVerifyRoute(email: email));
    }
  }
}
