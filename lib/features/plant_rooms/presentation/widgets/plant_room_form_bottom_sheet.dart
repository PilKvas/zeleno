import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/plant_room_model.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/plant_rooms_cubit.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/app_text_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class PlantRoomFormBottomSheet extends StatefulWidget {
  const PlantRoomFormBottomSheet({
    super.key,
    this.room,
    this.onRoomDeleted,
  });

  final PlantRoomModel? room;
  final Future<void> Function(int roomId)? onRoomDeleted;

  bool get isEditMode => room != null;

  @override
  State<PlantRoomFormBottomSheet> createState() =>
      _PlantRoomFormBottomSheetState();
}

class _PlantRoomFormBottomSheetState extends State<PlantRoomFormBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.room?.name ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final PlantRoomsCubit cubit = context.read<PlantRoomsCubit>();
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: colorScheme.secondaryText.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.isEditMode
                    ? context.l10n.plantRoomsEditTitle
                    : context.l10n.plantRoomsAddTitle,
                style: typography.title,
              ),
              const SizedBox(height: 12),
              ZTextField(
                controller: _nameController,
                hintText: context.l10n.plantRoomsNameHint,
                validator: _validateName,
                fillColor: colorScheme.background,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ZButton.gradient1(
                  onPressed: () => _saveRoom(cubit),
                  child: Text(context.l10n.plantRoomsSave),
                ),
              ),
              if (widget.isEditMode) ...<Widget>[
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ZButton.secondary(
                    onPressed: () => _confirmDeleteRoom(cubit),
                    child: Text(
                      context.l10n.plantRoomsDeleteConfirm,
                      style: typography.body.copyWith(
                        color: colorScheme.error,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String? _validateName(String? value) {
    final String currentValue = value?.trim() ?? '';
    if (currentValue.isEmpty) {
      return context.l10n.plantRoomsNameRequired;
    }
    return null;
  }

  Future<void> _saveRoom(PlantRoomsCubit cubit) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final String name = _nameController.text.trim();
    final PlantRoomModel? room = widget.room;
    if (room != null) {
      // Редактируем только имя; остальные параметры комнаты сохраняем как есть.
      await cubit.updateRoom(
        roomId: room.id,
        name: name,
        temperatureCelsius: room.temperatureCelsius,
        humidityPercent: room.humidityPercent,
        illuminanceLux: room.illuminanceLux,
        windowDirection: room.windowDirection,
      );
    } else {
      await cubit.createRoom(name: name);
    }
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _confirmDeleteRoom(PlantRoomsCubit cubit) async {
    final PlantRoomModel room = widget.room!;
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(context.l10n.plantRoomsDeleteTitle),
          content: Text(context.l10n.plantRoomsDeleteMessage(room.name)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(context.l10n.plantRoomsDeleteCancel),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(context.l10n.plantRoomsDeleteConfirm),
            ),
          ],
        );
      },
    );
    if (confirmed != true || !mounted) {
      return;
    }
    await cubit.deleteRoom(roomId: room.id);
    if (!mounted) {
      return;
    }
    await widget.onRoomDeleted?.call(room.id);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }
}
