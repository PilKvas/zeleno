import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/debouncer.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/plant_search_bloc.dart';
import 'package:zeleno_v2/features/plant_search/presentation/widgets/plant_item_widget.dart';
import 'package:zeleno_v2/features/plant_search/presentation/widgets/plant_search_filters_sheet.dart';
import 'package:zeleno_v2/uikit/inputs/app_search_field.dart';
import 'package:zeleno_v2/uikit/loading_widget.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

@RoutePage()
class PlantSearchStackScreen extends StatelessWidget {
  const PlantSearchStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class PlantsSearchScreen extends StatefulWidget {
  const PlantsSearchScreen({
    super.key,
  });

  @override
  State<PlantsSearchScreen> createState() => _PlantsSearchScreenState();
}

class _PlantsSearchScreenState extends State<PlantsSearchScreen> {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  Future<void> onRefresh(PlantSearchBloc bloc) async {
    return bloc.add(
      const PlantSearchEvent.loadPlantList(
        refresh: true,
      ),
    );
  }

  Future<void> onItemTap(String slug) async {
    context.router.push(PlantDetailsRoute(slug: slug));
  }

  bool onPagination(ScrollNotification scrollInfo, PlantSearchBloc bloc) {
    if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent) {
      bloc.add(
        const PlantSearchEvent.loadPlantList(),
      );
    }
    return false;
  }

  void onSearch(String text, PlantSearchBloc bloc) {
    _debouncer.run(
      () {
        bloc.add(
          PlantSearchEvent.loadPlantList(
            refresh: true,
            name: text,
          ),
        );
      },
    );
  }

  Widget _buildShimmerItem(BuildContext context) {
    final color = ZColorScheme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shimmer for image placeholder
            Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: color.surface,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Container(
                  height: 171,
                  width: 136,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: color.surface,
                    child: Container(
                      width: double.infinity,
                      height: 20,
                      decoration: BoxDecoration(
                        color: color.onBrand,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Shimmer for subtitle
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: color.surface,
                    child: Container(
                      width: 150,
                      height: 16,
                      decoration: BoxDecoration(
                        color: color.action,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerList() {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _buildShimmerItem(context),
          childCount: 6, // Number of shimmer items to show
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = ZColorScheme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<PlantSearchBloc>(
          create: (context) => PlantSearchBloc(
            injection(),
          )..add(
              const PlantSearchEvent.loadPlantList(),
            ),
          child: Builder(
            builder: (context) {
              final bloc = context.readPlantSearchBloc;
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) => onPagination(scrollInfo, bloc),
                child: Column(
                  children: [
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () => onRefresh(bloc),
                        child: CustomScrollView(
                          shrinkWrap: true,
                          slivers: [
                            SliverAppBar(
                              floating: true,
                              pinned: false,
                              snap: true,
                              bottom: PreferredSize(
                                preferredSize: const Size.fromHeight(4.0),
                                child: Container(
                                  color: color.action,
                                  height: 1,
                                ),
                              ),
                              flexibleSpace: FlexibleSpaceBar(
                                background: Container(
                                  color: color.background,
                                ),
                              ),
                              title: Row(
                                children: [
                                  Expanded(
                                    child: AppSearchField(
                                      onChanged: (text) => onSearch(text, bloc),
                                      hintText: 'Поиск',
                                      fillColor: const Color.fromRGBO(
                                          248, 248, 252, 1),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: BlocBuilder<PlantSearchBloc,
                                        PlantSearchState>(
                                      builder: (context, state) {
                                        return IconButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              builder: (context) => BlocProvider.value(
                                                value: bloc,
                                                child: PlantSearchFiltersSheet(
                                                  bloc: bloc,
                                                ),
                                              ),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.filter_list,
                                            color:
                                                state.filters.hasActiveFilters
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .primary
                                                    : null,
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            BlocBuilder<PlantSearchBloc, PlantSearchState>(
                              builder: (context, state) {
                                if (state.status.isLoading &&
                                    !state.isPaginating) {
                                  return _buildShimmerList();
                                }

                                if (state.items.isEmpty) {
                                  return const SliverFillRemaining(
                                    child: Center(
                                      child: Text(
                                        'no items',
                                      ),
                                    ),
                                  );
                                }
                                return SliverPadding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 8,
                                    right: 8,
                                  ),
                                  sliver: SliverList.separated(
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          onItemTap(state.items[index].slug);
                                        },
                                        child: PlantItemWidget(
                                          item: state.items[index],
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        height: 20,
                                      );
                                    },
                                    itemCount: state.items.length,
                                  ),
                                );
                              },
                            ),
                            BlocBuilder<PlantSearchBloc, PlantSearchState>(
                              builder: (context, state) {
                                if (state.status.isLoading &&
                                    state.isPaginating) {
                                  return const SliverPadding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    sliver: SliverToBoxAdapter(
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: ZLoading(),
                                      ),
                                    ),
                                  );
                                }

                                return const SliverToBoxAdapter();
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
