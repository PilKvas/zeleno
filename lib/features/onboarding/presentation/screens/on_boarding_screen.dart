import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/resources/resources.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;
  double? currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(
      () {
        setState(
          () {
            currentPage = _pageController.page;
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final locale = context.l10n;
    return Scaffold(
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
                    title: locale.firstPageTitle,
                    subTitle: locale.firstPageSubTitle,
                  ),
                  _PageViewItem(
                    imageCouple: (
                      ZImages.woollyPlant421,
                      ZImages.woollyTakingCareOfPlants22
                    ),
                    title: locale.secondPageTitle,
                    subTitle: locale.secondPageSubTitle,
                  ),
                  _PageViewItem(
                    imageCouple: (ZImages.woollyTakingCareOfPlants31, ''),
                    title: locale.thirdPageTitle,
                    subTitle: locale.thirdPageSubTitle,
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
                      onDotClicked: (index) {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.decelerate);
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8.0,
                        radius: 6,
                        dotWidth: 20,
                        dotHeight: 10,
                        strokeWidth: 1.5,
                        dotColor: colors.action.withOpacity(0.4),
                        activeDotColor: colors.action,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (currentPage != 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.decelerate,
                          );
                        } else {
                          context.router.pushAndPopUntil(
                            const LoginRoute(),
                            predicate: (_) => false,
                          );
                        }
                      },
                      child: Text(
                        currentPage == 2 ? locale.start : locale.next,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PageViewItem extends StatelessWidget {
  final (String, String) imageCouple;
  final String title;
  final String subTitle;

  const _PageViewItem({
    required this.imageCouple,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Image.asset(
                imageCouple.$1,
                fit: BoxFit.fill,
                height: 375,
              ),
            ),
            if (imageCouple.$2.isNotEmpty)
              Image.asset(
                imageCouple.$2,
                fit: BoxFit.fill,
                height: 375,
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 51, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.title.copyWith(
                  fontSize: 32,
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                subTitle,
                style: textTheme.body.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
