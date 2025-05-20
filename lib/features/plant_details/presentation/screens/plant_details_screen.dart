import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/presentation/cubit/garden_cubit.dart';
import 'package:zeleno_v2/features/plant_details/presentation/screens/cubit/plant_details_cubit.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/characteristic_item_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/expandable_section_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/plant_growth_tips_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/plant_images_section_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/regular_events_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/scientific_classification_widget.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/select_room_bottom_sheet.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/tag_widget.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/uikit/loading_widget.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

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
  late GardenCubit _gardenCubit;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _gardenCubit = GardenCubit(
      gardenPlantRepository: injection<IGardenPlantRepository>(),
      roomRepository: injection<IRoomRepository>(),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _gardenCubit.close();
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
        BlocProvider.value(
          value: _gardenCubit,
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
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      leading: GestureDetector(
                        onTap: () {
                          context.router.popForced();
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      actions: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.favorite_border,
                                color: Colors.black),
                            onPressed: () {},
                          ),
                        ),
                      ],
                      expandedHeight: 300,
                      pinned: true,
                      backgroundColor: Colors.white,
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          height: 20,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.plantDetails?.commonNames?['ru']
                                          ?.isNotEmpty ==
                                      true
                                  ? state
                                      .plantDetails!.commonNames!['ru']!.first
                                  : state.plantDetails?.mainCommonName ??
                                      context.l10n.unknownName,
                              style: textTheme.title.copyWith(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            if (state.plantDetails?.commonNames?['ru'] !=
                                    null &&
                                state.plantDetails!.commonNames!['ru']!
                                    .isNotEmpty)
                              SizedBox(
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final name = state.plantDetails!
                                        .commonNames!['ru']![index];
                                    return Text(name,
                                        style: textTheme.body
                                            .copyWith(color: Colors.grey));
                                  },
                                  separatorBuilder: (context, index) => Text(
                                      ' • ',
                                      style: textTheme.body
                                          .copyWith(color: Colors.grey)),
                                  itemCount: state
                                      .plantDetails!.commonNames!['ru']!.length,
                                ),
                              )
                            else
                              const SizedBox.shrink(),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                _handleAddToGarden(context, state);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: colors.action,
                                foregroundColor: Colors.white,
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
                                color: const Color(0xFFF8F8FC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              child: TabBar(
                                controller: _tabController,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerColor: Colors.transparent,
                                indicatorColor: Colors.transparent,
                                indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
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
                                        state.plantDetails?.heightCm?.fromValue
                                                .toString() ??
                                            "-",
                                        state.plantDetails?.heightCm?.toValue
                                                .toString() ??
                                            "∞",
                                      ),
                                    ),
                                    CharacteristicItemWidget(
                                      icon: Icons.width_normal,
                                      text: context.l10n.plantWidthRange(
                                          state.plantDetails?.spreadCm
                                                  ?.fromValue
                                                  .toString() ??
                                              '-',
                                          state.plantDetails?.spreadCm?.toValue
                                                  .toString() ??
                                              '-'),
                                    ),
                                    CharacteristicItemWidget(
                                      icon: Icons.access_time,
                                      text: context.l10n
                                          .plantYearsToMaxHeightRange(
                                        state.plantDetails?.yearsToMaxHeight
                                                ?.fromValue
                                                .toString() ??
                                            "-",
                                        state.plantDetails?.yearsToMaxHeight
                                                ?.toValue
                                                .toString() ??
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
                                    classification: state
                                        .plantDetails?.scientificClassification,
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
                                          .map((tag) => TagWidget(text: tag))
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
                                        const GrowthTips(
                                            propagation: [],
                                            suggestedPantingPlaces: [],
                                            pruning: [])),
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
                                        const Images(
                                            bark: [],
                                            fruit: [],
                                            flower: [],
                                            habit: [],
                                            leaf: [],
                                            other: [],
                                            root: [],
                                            stem: [],
                                            seed: [],
                                            tuber: [],
                                            foliage: [])),
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

  void _handleAddToGarden(BuildContext context, PlantDetailsState state) {
    if (state.plantDetails == null) return;

    _gardenCubit.loadRooms();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return BlocListener<GardenCubit, GardenState>(
          bloc: _gardenCubit,
          listener: (context, gardenState) {
            if (gardenState.status.isSuccess && gardenState.rooms.isEmpty) {
              Navigator.pop(context);
              _gardenCubit.navigateToRoomsTab(context.router);
            }
          },
          child: SelectRoomBottomSheet(
            gardenCubit: _gardenCubit,
            specieId: state.plantDetails!.id ?? 0,
          ),
        );
      },
    );
  }
}
