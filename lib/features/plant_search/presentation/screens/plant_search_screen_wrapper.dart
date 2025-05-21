import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/plant_search_bloc.dart';

class PlantSearchScreenWrapper extends StatelessWidget
    implements AutoRouteWrapper {
  const PlantSearchScreenWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PlantSearchBloc(
        injection(),
      )..add(const PlantSearchEvent.loadPlantList()),
      child: this,
    );
  }
}
