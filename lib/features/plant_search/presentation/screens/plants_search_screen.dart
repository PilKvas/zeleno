import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_filters/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/plant_filters/presentation/widgets/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/export.dart';
import 'package:zeleno_v2/features/plant_search/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class PlantSearchStackScreen extends StatelessWidget {
  const PlantSearchStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class PlantsSearchScreen extends StatefulWidget implements AutoRouteWrapper {
  const PlantsSearchScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PlantFiltersCubit(plantFiltersUsecase: injection()),
        ),
        BlocProvider(
          create: (_) =>
              PlantSearchBloc(injection())
                ..add(const PlantSearchEvent.loadPlantList()),
        ),
      ],
      child: this,
    );
  }

  @override
  State<PlantsSearchScreen> createState() => _PlantsSearchScreenState();
}

class _PlantsSearchScreenState extends State<PlantsSearchScreen> {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  @override
  void dispose() {
    // Иначе отложенный колбэк добавит событие в уже закрытый bloc.
    _debouncer.dispose();
    super.dispose();
  }

  Future<void> onRefresh(PlantSearchBloc bloc) async {
    bloc.add(const PlantSearchEvent.loadPlantList(refresh: true));
    // Иначе индикатор обновления схлопывается мгновенно, до прихода данных.
    await bloc.stream.firstWhere((state) => !state.status.isLoading);
  }

  void onItemTap(String slug) {
    context.router.push(GardenPlantDetailRoute(speciesSlug: slug));
  }

  bool onPagination(ScrollNotification scrollInfo, PlantSearchBloc bloc) {
    if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent) {
      bloc.add(const PlantSearchEvent.loadPlantList());
    }
    return false;
  }

  void onSearch(String text, PlantSearchBloc bloc) {
    _debouncer.run(() {
      bloc.add(PlantSearchEvent.loadPlantList(refresh: true, name: text));
    });
  }

  @override
  Widget build(BuildContext context) {
    final PlantSearchBloc bloc = context.readPlantSearchBloc;
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollInfo) => onPagination(scrollInfo, bloc),
          child: RefreshIndicator(
            onRefresh: () => onRefresh(bloc),
            child: CustomScrollView(
              slivers: [
                _SearchAppBar(onSearch: (text) => onSearch(text, bloc)),
                _PlantListSection(onItemTap: onItemTap),
                const _PaginationLoader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PlantListSection extends StatelessWidget {
  final void Function(String slug) onItemTap;

  const _PlantListSection({required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantSearchBloc, PlantSearchState>(
      builder: (context, state) {
        if (state.items.isNotEmpty) {
          return _PlantList(items: state.items, onItemTap: onItemTap);
        }
        if (state.status.isLoading) return const _ShimmerList();
        return SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text(context.l10n.plantSearchEmpty)),
        );
      },
    );
  }
}

class _SearchAppBar extends StatelessWidget {
  final ValueChanged<String> onSearch;

  const _SearchAppBar({required this.onSearch});

  void _openFilters(BuildContext context) {
    final PlantSearchBloc bloc = context.readPlantSearchBloc;
    final PlantFiltersCubit filtersCubit = context.read<PlantFiltersCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => BlocProvider.value(
        value: bloc,
        child: BlocProvider.value(
          value: filtersCubit,
          child: const PlantFiltersSheet(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return SliverAppBar(
      floating: true,
      pinned: false,
      snap: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(color: colors.action, height: 1),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(color: colors.background),
      ),
      title: Row(
        children: [
          Expanded(
            child: AppSearchField(
              onChanged: onSearch,
              hintText: context.l10n.plantSearchHint,
              fillColor: colors.surface,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: BlocBuilder<PlantSearchBloc, PlantSearchState>(
              buildWhen: (previous, current) =>
                  previous.filters.hasActiveFilters !=
                  current.filters.hasActiveFilters,
              builder: (context, state) {
                return IconButton(
                  onPressed: () => _openFilters(context),
                  icon: Icon(
                    Icons.filter_list,
                    color: state.filters.hasActiveFilters
                        ? colors.action
                        : colors.onBackground,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

const int _kShimmerItemCount = 6;
const double _kItemSpacing = 20;
const EdgeInsets _kListPadding = EdgeInsets.only(top: 5, left: 8, right: 8);

class _PlantList extends StatelessWidget {
  final List<PlantSearchItem> items;
  final void Function(String slug) onItemTap;

  const _PlantList({required this.items, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: _kListPadding,
      sliver: SliverList.separated(
        itemCount: items.length,
        // Ключ по slug: при обновлении списка элементы переиспользуются
        // и картинки не перезагружаются.
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            key: ValueKey(item.slug),
            onTap: () => onItemTap(item.slug),
            child: PlantItemWidget(item: item),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: _kItemSpacing),
      ),
    );
  }
}

class _PaginationLoader extends StatelessWidget {
  const _PaginationLoader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantSearchBloc, PlantSearchState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.isPaginating != current.isPaginating,
      builder: (context, state) {
        if (!state.status.isLoading || !state.isPaginating) {
          return const SliverToBoxAdapter();
        }
        return const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: SizedBox(height: 50, width: 50, child: ZLoading()),
          ),
        );
      },
    );
  }
}

class _ShimmerList extends StatelessWidget {
  const _ShimmerList();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: _kListPadding,
      sliver: SliverList.separated(
        itemCount: _kShimmerItemCount,
        itemBuilder: (_, __) => const PlantItemShimmer(),
        separatorBuilder: (_, __) => const SizedBox(height: _kItemSpacing),
      ),
    );
  }
}
