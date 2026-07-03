import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/profile/domain/model/export.dart';
import 'package:zeleno_v2/features/profile/domain/repository/export.dart';
import 'package:zeleno_v2/features/profile/presentation/cubit/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class ProfileStackScreen extends StatefulWidget {
  const ProfileStackScreen({super.key});

  @override
  State<ProfileStackScreen> createState() => _ProfileStackScreenState();
}

class _ProfileStackScreenState extends State<ProfileStackScreen> {
  void _syncRouteToAuth(AuthStatus status) {
    if (!mounted) return;
    final currentName = context.router.current.name;
    switch (status) {
      case AuthStatus.authenticated:
        if (currentName != ProfileRoute.name) {
          context.router.replace(const ProfileRoute());
        }
        break;
      case AuthStatus.unauthenticated:
      case AuthStatus.unknown:
        final StackRouter profileRouter = context.router;
        final bool isOnlyLogin =
            profileRouter.current.name == LoginRoute.name &&
                profileRouter.stack.length == 1;
        if (!isOnlyLogin) {
          profileRouter.replaceAll([const LoginRoute()]);
        }
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _syncRouteToAuth(context.read<AuthCubit>().state.authStatus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) => _syncRouteToAuth(state.authStatus),
      child: const AutoRouter(),
    );
  }
}

String _displayName(User user) {
  final parts = [user.firstName, user.lastName].whereType<String>();
  if (parts.isEmpty) return user.username;
  return parts.join(' ').trim();
}

@RoutePage()
class ProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        profileRepository: injection<IProfileRepository>(),
      )..loadUser(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ZColorScheme.of(context);
    final typography = ZTypography.of(context);
    final dimensions = ZDimensions.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorScheme.background,
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            final content = state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: ZLoading()),
              loaded: (user) => _ProfileContent(
                displayName: _displayName(user),
                email: user.email,
                onLogout: () => context.read<AuthCubit>().signOut(),
              ),
              failure: (_) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Не удалось загрузить профиль',
                      style: typography.body
                          .copyWith(color: colorScheme.secondaryText),
                    ),
                    const SizedBox(height: ZDimensions.basicMargin),
                    ZButton.secondary(
                      onPressed: () => context.read<ProfileCubit>().loadUser(),
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              ),
            );

            return Padding(
              padding: dimensions.horizontalPadding100,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                child: KeyedSubtree(key: UniqueKey(), child: content),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  const _ProfileContent({
    required this.displayName,
    required this.email,
    required this.onLogout,
  });

  final String displayName;
  final String email;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ZColorScheme.of(context);
    final typography = ZTypography.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: ZDimensions.basicMargin),
        Text(
          'Профиль',
          style:
              typography.headline200.copyWith(color: colorScheme.onBackground),
        ),
        const SizedBox(height: ZDimensions.basicMargin * 2),
        Center(
          child: Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              color: colorScheme.surface,
              shape: BoxShape.circle,
              border: Border.all(color: colorScheme.actionSecondary),
            ),
            child: Icon(
              Icons.person_outline,
              size: 48,
              color: colorScheme.secondaryText,
            ),
          ),
        ),
        const SizedBox(height: ZDimensions.normalMargin),
        Text(
          displayName,
          style:
              typography.headline300.copyWith(color: colorScheme.onBackground),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: ZDimensions.smallMargin),
        Text(
          email,
          style: typography.body.copyWith(color: colorScheme.secondaryText),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: ZDimensions.basicMargin * 2),
        const Spacer(),
        ZButton.ghost(
          onPressed: onLogout,
          child: const Text('Выйти'),
        ),
        const SizedBox(height: ZDimensions.basicMargin),
      ],
    );
  }
}
