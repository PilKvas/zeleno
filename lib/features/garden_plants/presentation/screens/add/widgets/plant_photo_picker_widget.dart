import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class PlantPhotoPickerWidget extends StatelessWidget {
  const PlantPhotoPickerWidget({
    super.key,
    required this.photoBytes,
    required this.onPhotoPicked,
    required this.onPhotoCleared,
    this.existingImageUrl,
    this.removeExistingPhoto = false,
  });

  final Uint8List? photoBytes;
  final String? existingImageUrl;
  final bool removeExistingPhoto;
  final void Function(Uint8List bytes, String fileName) onPhotoPicked;
  final VoidCallback onPhotoCleared;

  static const double _photoHeight = 350;
  static const double _placeholderHeight = 67;

  bool get _hasPhoto =>
      photoBytes != null ||
      (existingImageUrl != null &&
          existingImageUrl!.isNotEmpty &&
          !removeExistingPhoto);

  Future<void> _pickPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file;
    try {
      file = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
      );
    } on PlatformException {
      // Пикер уже открыт (двойной тап) или нет доступа к галерее —
      // трактуем как отмену выбора.
      return;
    }
    if (file == null) {
      return;
    }
    final Uint8List bytes = await file.readAsBytes();
    onPhotoPicked(bytes, file.name);
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    if (!_hasPhoto) {
      return ZPressable(
        onTap: _pickPhoto,
        child: Container(
          height: _placeholderHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorScheme.secondaryBg,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.photo_camera_outlined,
            size: 24,
            color: colorScheme.brand,
          ),
        ),
      );
    }
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: photoBytes != null
              ? Image.memory(
                  photoBytes!,
                  height: _photoHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  existingImageUrl!,
                  height: _photoHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (
                    BuildContext context,
                    Object error,
                    StackTrace? stackTrace,
                  ) =>
                      _PhotoErrorPlaceholder(colorScheme: colorScheme),
                ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: ZPressable(
            onTap: onPhotoCleared,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: colorScheme.error,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: colorScheme.onError,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PhotoErrorPlaceholder extends StatelessWidget {
  const _PhotoErrorPlaceholder({required this.colorScheme});

  final ZColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: PlantPhotoPickerWidget._photoHeight,
      width: double.infinity,
      color: colorScheme.secondaryBg,
      alignment: Alignment.center,
      child: Icon(
        Icons.broken_image_outlined,
        color: colorScheme.brand,
        size: 48,
      ),
    );
  }
}
