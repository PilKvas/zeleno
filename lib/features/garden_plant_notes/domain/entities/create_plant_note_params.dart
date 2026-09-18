class CreatePlantNoteParams {
  const CreatePlantNoteParams({
    required this.plantId,
    required this.title,
    required this.content,
  });

  final int plantId;
  final String title;
  final String content;
}
