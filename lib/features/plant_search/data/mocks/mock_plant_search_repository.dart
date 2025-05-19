// import 'package:zeleno_v2/features/plant_search/domain/models/pagination_wrapper.dart';
// import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';
// import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';
//
// class MockPlantSearchRepository implements IPlantSearchRepository {
//   final List<PlantSearchItem> _mockPlants = [
//     const PlantSearchItem(
//       slug: 'monstera-deliciosa',
//       latinName: 'Monstera Deliciosa',
//       mainCommonName: 'Монстера',
//       imageUrl: 'assets/images/monstera.png',
//     ),
//     const PlantSearchItem(
//       slug: 'sansevieria-trifasciata',
//       latinName: 'Sansevieria Trifasciata',
//       mainCommonName: 'Тещин язык',
//       imageUrl: 'assets/images/snake_plant.png',
//     ),
//     const PlantSearchItem(
//       slug: 'spathiphyllum-wallisii',
//       latinName: 'Spathiphyllum Wallisii',
//       mainCommonName: 'Спатифиллум',
//       imageUrl: 'assets/images/peace_lily.png',
//     ),
//   ];
//
//   @override
//   Future<PaginationWrapper<PlantSearchItem>> getPlants({
//     required int page,
//     String? name,
//   }) async {
//     // Mock implementation
//     await Future.delayed(const Duration(milliseconds: 500));
//
//     final filteredPlants = name != null
//         ? _mockPlants.where((plant) =>
//             plant.mainCommonName?.toLowerCase().contains(name.toLowerCase()) ??
//             false ||
//                 plant.latinName!.toLowerCase().contains(name.toLowerCase()) ??
//             false)
//         : _mockPlants;
//
//     return PaginationWrapper(
//       items: filteredPlants.toList(),
//       count: 2100,
//     );
//   }
// }
