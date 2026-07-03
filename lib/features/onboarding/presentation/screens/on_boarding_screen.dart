import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
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
                    imageCouple: (
                      ZImages.woollyPlantMom11,
                      ZImages.woollyPlant412
                    ),
                    title: l10n.firstPageTitle,
                    subTitle: l10n.firstPageSubTitle,
                  ),
                  _PageViewItem(
                    imageCouple: (
                      ZImages.woollyPlant421,
                      ZImages.woollyTakingCareOfPlants22
                    ),
                    title: l10n.secondPageTitle,
                    subTitle: l10n.secondPageSubTitle,
                  ),
                  _PageViewItem(
                    imageCouple: (ZImages.woollyTakingCareOfPlants31, ''),
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
                          context.router.replace(const HomeRoute());
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

class _PageViewItem extends StatelessWidget {
  const _PageViewItem({
    required this.imageCouple,
    required this.title,
    required this.subTitle,
  });

  final (String, String) imageCouple;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final typography = ZTypography.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Image.asset(
                  imageCouple.$1,
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomLeft,
                ),
              ),
              if (imageCouple.$2.isNotEmpty)
                Flexible(
                  child: Image.asset(
                    imageCouple.$2,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomRight,
                  ),
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: typography.title.copyWith(fontSize: 32, height: 1),
              ),
              const SizedBox(height: 16),
              Text(subTitle, style: typography.body),
            ],
          ),
        ),
      ],
    );
  }
}
