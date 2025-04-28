import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/core/helper/debouncer.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/plant_search_bloc.dart';
import 'package:zeleno_v2/features/plant_search/presentation/widgets/plant_item_widget.dart';
import 'package:zeleno_v2/uikit/inputs/app_search_field.dart';

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

  Future<void> onRefresh() async {
    // return widget.bloc.add(
    //   const PlantSearchEvent.loadPlantList(
    //     refresh: true,
    //   ),
    // );
  }

  Future<void> onItemTap(String slug) async {}

  bool onPagination(ScrollNotification scrollInfo) {
    // if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent) {
    //   widget.bloc.add(
    //     const PlantSearchEvent.loadPlantList(),
    //   );
    // }
    return false;
  }

  void onSearch(String text) {
    // _debouncer.run(
    //   () {
    //     widget.bloc.add(
    //       PlantSearchEvent.loadPlantList(
    //         refresh: true,
    //         name: text,
    //       ),
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<PlantSearchBloc>(
        create: (context) => PlantSearchBloc(
          injection(),
        )..add(
            const PlantSearchEvent.loadPlantList(),
          ),
        child: Builder(
          builder: (context) {
            return NotificationListener<ScrollNotification>(
              onNotification: onPagination,
              child: RefreshIndicator(
                onRefresh: onRefresh,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(18, kToolbarHeight, 18, 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: AppSearchField(
                              onChanged: onSearch,
                              hintText: 'Поиск',
                              fillColor: const Color.fromRGBO(248, 248, 252, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(248, 248, 252,
                                      1), // TODO(darbinyan): Вынести цвета,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons
                                    .filter_alt_outlined) // TODO(darbinyan): Внести иконку из фигмы,
                                ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: BlocBuilder<PlantSearchBloc, PlantSearchState>(
                          builder: (context, state) {
                            if (state.status.isLoading && !state.isPaginating) {
                              return const Center(
                                child:
                                    CircularProgressIndicator(), // TODO(darbinyan): Сделать интересный лоадер,
                              );
                            }
                            return CustomScrollView(
                              shrinkWrap: true,
                              slivers: [
                                SliverList.separated(
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
                                if (state.status.isLoading &&
                                    state.isPaginating) ...[
                                  const SliverPadding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    sliver: SliverToBoxAdapter(
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  )
                                ] else if (state.items.isEmpty) ...[
                                  const SliverToBoxAdapter(
                                    child: Center(
                                      child: Text(
                                        'no items',
                                      ), // TODO(darbiunayn): Согласовать экран (выенсти в локализацию),
                                    ),
                                  )
                                ]
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
