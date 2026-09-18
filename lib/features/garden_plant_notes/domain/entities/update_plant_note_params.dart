class UpdatePlantNoteParams {
  const UpdatePlantNoteParams({
    required this.plantId,
    required this.noteId,
    required this.title,
    required this.content,
  });

  final int plantId;
  final int noteId;
  final String title;
  final String content;
}
