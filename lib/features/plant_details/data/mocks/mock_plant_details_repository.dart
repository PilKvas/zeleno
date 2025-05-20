import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/i_plant_details_repository.dart';

class MockPlantDetailsRepository implements IPlantDetailsRepository {
  final Map<String, PlantDetailsModel> _mockPlants = {
    'monstera-deliciosa': PlantDetailsModel(
      id: 1,
      slug: 'monstera-deliciosa',
      latinName: 'Monstera Deliciosa',
      mainCommonName: 'Монстера',
      imageUrl: 'assets/images/monstera.png',
      commonNames: {
        'ru': ['Монстера', 'Монстера деликатесная', 'Филодендрон'],
      },
      tags: ['Комнатное растение', 'Тропическое', 'Лиственное'],
      genusDescription:
          'Монстера - это род тропических растений семейства Ароидные. Название происходит от латинского слова "monstrum", что означает "чудовище", из-за необычной формы листьев.',
      heightCm: const HeightCm(fromValue: 100, toValue: 300),
      spreadCm: const HeightCm(fromValue: 50, toValue: 150),
      yearsToMaxHeight: const HeightCm(fromValue: 3, toValue: 5),
      scientificClassification: const ScientificClassification(
        phylum: 'Tracheophyta',
        family: 'Araceae',
        genus: 'Monstera',
        species: 'Monstera Deliciosa',
      ),
      growthTips: const GrowthTips(
        propagation: [
          'Черенками',
          'Воздушными отводками',
          'Семенами',
        ],
        suggestedPantingPlaces: [
          'Гостиная',
          'Спальня',
          'Офис',
        ],
        pruning: [
          'Удаление старых листьев',
          'Обрезка для контроля размера',
        ],
      ),
      regularEvents: [
        const RegularEvent(
          name: 'Полив',
        ),
        const RegularEvent(
          name: 'Подкормка',
        ),
      ],
    ),
  };

  @override
  Future<PlantDetailsModel> getPlant(String slug) async {
    throw UnimplementedError();
  }
}
