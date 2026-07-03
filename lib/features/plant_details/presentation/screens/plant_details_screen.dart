import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_details/presentation/screens/cubit/export.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class PlantDetailsScreen extends StatefulWidget {
  final String slug;

  const PlantDetailsScreen({
    super.key,
    required this.slug,
  });

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final textTheme = ZTypography.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PlantDetailsCubit(
            plantDetailsRepository: injection(),
          )..getPlant(widget.slug),
        ),
      ],
      child: Scaffold(
        extendBody: true,
        body: Builder(
          builder: (context) =>
              BlocBuilder<PlantDetailsCubit, PlantDetailsState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return const Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ZLoading(),
                  ),
                );
              } else {
                final scheme = ZColorScheme.of(context);
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      leading: GestureDetector(
                        onTap: () {
                          context.router.popForced();
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            color: scheme.surface,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: scheme.onSurface,
                          ),
                        ),
                      ),
                      actions: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: scheme.surface,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: scheme.onSurface,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                      expandedHeight: 300,
                      pinned: true,
                      backgroundColor: scheme.surface,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.network(
                          state.plantDetails?.imageUrl ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Placeholder(),
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: scheme.surface,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20)),
                          ),
                          height: 20,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        color: scheme.surface,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.plantDetails?.resolveMainCommonName() ??
                                  context.l10n.unknownName,
                              style: textTheme.title.copyWith(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            if (state.plantDetails
                                    ?.commonNamesForLang('ru')
                                    .isNotEmpty ==
                                true)
                              SizedBox(
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final String name = state.plantDetails!
                                        .commonNamesForLang('ru')[index];
                                    return Text(name,
                                        style: textTheme.body.copyWith(
                                            color: scheme.secondaryText));
                                  },
                                  separatorBuilder: (context, index) => Text(
                                      ' • ',
                                      style: textTheme.body.copyWith(
                                          color: scheme.secondaryText)),
                                  itemCount: state.plantDetails!
                                      .commonNamesForLang('ru')
                                      .length,
                                ),
                              )
                            else
                              const SizedBox.shrink(),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: state.plantDetails?.id == null
                                  ? null
                                  : () {
                                      context.router.push(
                                        PlantRoomsSelectionRoute(
                                          speciesId: state.plantDetails!.id!,
                                          speciesSlug: widget.slug,
                                          defaultPlantName: state.plantDetails
                                                  ?.resolveMainCommonName() ??
                                              '',
                                        ),
                                      );
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: colors.action,
                                foregroundColor: colors.onAction,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                minimumSize: const Size(double.infinity, 48),
                              ),
                              child: Text(context.l10n.toTheGardenButtonTitle),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.alphaBlend(
                                  scheme.secondaryText.withValues(alpha: 0.08),
                                  scheme.background,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              child: TabBar(
                                controller: _tabController,
                                labelColor: scheme.onBackground,
                                unselectedLabelColor: scheme.secondaryText,
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerColor: Colors.transparent,
                                indicatorColor: Colors.transparent,
                                indicator: BoxDecoration(
                                  color: scheme.surface,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: scheme.onSurface
                                          .withValues(alpha: 0.06),
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                tabs: [
                                  Tab(
                                      text: context
                                          .l10n.plantDetailMenuSpecifications),
                                  Tab(text: context.l10n.plantDetailMenuCare),
                                  Tab(text: context.l10n.plantDetailMenuGrowth),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          // Characteristics Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CharacteristicItemWidget(
                                      icon: Icons.height,
                                      text: context.l10n.plantHeightRange(
                                        state.plantDetails?.heightMinCm
                                                ?.toString() ??
                                            "-",
                                        state.plantDetails?.heightMaxCm
                                                ?.toString() ??
                                            "∞",
                                      ),
                                    ),
                                    CharacteristicItemWidget(
                                      icon: Icons.width_normal,
                                      text: context.l10n.plantWidthRange(
                                          state.plantDetails?.spreadMinCm
                                                  ?.toString() ??
                                              '-',
                                          state.plantDetails?.spreadMaxCm
                                                  ?.toString() ??
                                              '-'),
                                    ),
                                    CharacteristicItemWidget(
                                      icon: Icons.access_time,
                                      text: context.l10n
                                          .plantYearsToMaxHeightRange(
                                        state.plantDetails?.yearsToMaxHeightMin
                                                ?.toString() ??
                                            "-",
                                        state.plantDetails?.yearsToMaxHeightMax
                                                ?.toString() ??
                                            "-",
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                ExpandableSectionWidget(
                                  title: context.l10n.plantDetailDescription,
                                  content:
                                      state.plantDetails?.genusDescription ??
                                          '-',
                                ),
                                const SizedBox(height: 16),
                                ExpandableSectionWidget(
                                  title: context
                                      .l10n.plantDetailScientificClassification,
                                  content: ScientificClassificationWidget(
                                    latinName: state.plantDetails?.latinName,
                                    misc: state.plantDetails?.misc,
                                  ),
                                  isTable: true,
                                ),
                                const SizedBox(height: 16),
                                Text(context.l10n.tags, style: textTheme.title),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: state.plantDetails?.tags != null &&
                                          state.plantDetails!.tags!.isNotEmpty
                                      ? state.plantDetails!.tags!
                                          .map((String tag) =>
                                              TagWidget(text: tag))
                                          .toList()
                                      : [
                                          TagWidget(
                                              text:
                                                  context.l10n.noTagsAvailable),
                                        ],
                                ),
                              ],
                            ),
                          ),

                          // Care Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PlantGrowthTipsWidget(
                                  tips: state.plantDetails?.growthTips ??
                                      const <GrowthTip>[],
                                ),
                              ],
                            ),
                          ),

                          // Development Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (state.plantDetails?.regularEvents != null &&
                                    state.plantDetails!.regularEvents!
                                        .isNotEmpty)
                                  RegularEventsWidget(
                                      events:
                                          state.plantDetails!.regularEvents!)
                                else
                                  Text(context.l10n.noInfoAboutRegularEvents),
                                const SizedBox(height: 16),
                                PlantImagesSectionWidget(
                                  images: state.plantDetails?.images ??
                                      const <PlantImageItem>[],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
