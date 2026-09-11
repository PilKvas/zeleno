import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/onboarding/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        setState(() => _currentPage = _pageController.page ?? 0);
      });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.title,
          style: const TextStyle(
            fontFamily: 'Monserrat',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView(
                controller: _pageController,
                children: [
                  _PageViewItem(
                    leading: const PlantMomIllustration(),
                    trailing: const SwayingPlantIllustration(
                      asset: ZImages.woollyPlant412,
                      size: Size(40, 367),
                      pivot: Alignment.bottomRight,
                      intro: PlantIntro.slideFromRight,
                      swayDegrees: 1,
                      idleFrames: 220,
                    ),
                    title: l10n.firstPageTitle,
                    subTitle: l10n.firstPageSubTitle,
                  ),
                  _PageViewItem(
                    leading: const SwayingPlantIllustration(
                      asset: ZImages.woollyPlant421,
                      size: Size(274, 367),
                      swayDegrees: 1.2,
                      idleFrames: 200,
                    ),
                    trailing: const SwayingPlantIllustration(
                      asset: ZImages.woollyTakingCareOfPlants22,
                      size: Size(74, 426),
                      pivot: Alignment.bottomRight,
                      intro: PlantIntro.slideFromRight,
                      swayDegrees: 1,
                      idleFrames: 220,
                    ),
                    title: l10n.secondPageTitle,
                    subTitle: l10n.secondPageSubTitle,
                  ),
                  _PageViewItem(
                    leading: const WateringIllustration(),
                    title: l10n.thirdPageTitle,
                    subTitle: l10n.thirdPageSubTitle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      onDotClicked: (index) => _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.decelerate,
                      ),
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8.0,
                        radius: 6,
                        dotWidth: 20,
                        dotHeight: 10,
                        strokeWidth: 1.5,
                        dotColor: colors.action.withValues(alpha: 0.4),
                        activeDotColor: colors.action,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_currentPage != 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.decelerate,
                          );
                        } else {
                          // После онбординга пользователь всегда гость —
                          // стартуем с «Поиска».
                          context.router.replace(
                            const HomeRoute(
                              children: <PageRouteInfo>[
                                PlantSearchStackRoute(),
                              ],
                            ),
                          );
                        }
                      },
                      child: Text(_currentPage == 2 ? l10n.start : l10n.next),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Страница онбординга. Держится живой при перелистывании, чтобы интро
/// иллюстраций сыграло один раз, а не при каждом возврате на страницу.
class _PageViewItem extends StatefulWidget {
  const _PageViewItem({
    required this.leading,
    required this.title,
    required this.subTitle,
    this.trailing,
  });

  /// Основная иллюстрация, прижата к левому нижнему углу.
  final Widget leading;

  /// Декоративный обрезок у правого края.
  final Widget? trailing;
  final String title;
  final String subTitle;

  @override
  State<_PageViewItem> createState() => _PageViewItemState();
}

class _PageViewItemState extends State<_PageViewItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final typography = ZTypography.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(left: 0, bottom: 0, child: widget.leading),
              if (widget.trailing != null)
                Positioned(right: 0, bottom: 0, child: widget.trailing!),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: typography.title.copyWith(fontSize: 32, height: 1),
              ),
              const SizedBox(height: 16),
              Text(widget.subTitle, style: typography.body),
            ],
          ),
        ),
      ],
    );
  }
}
