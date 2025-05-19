import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/rooms/presentation/cubit/rooms_cubit.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/inputs/app_text_field.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class AddRoomBottomSheet extends StatefulWidget {
  final RoomsCubit roomsCubit;

  const AddRoomBottomSheet({
    super.key,
    required this.roomsCubit,
  });

  @override
  State<AddRoomBottomSheet> createState() => _AddRoomBottomSheetState();
}

class _AddRoomBottomSheetState extends State<AddRoomBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _selectedHemisphere;
  int? _temperature;
  int? _humidity;
  String? _selectedWindowSide;

  final _hemispheres = ['north', 'south'];
  final _windowSides = [
    'north',
    'south',
    'east',
    'west',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    // Use MediaQuery to adjust for keyboard
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16 + bottomPadding),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text('Добавить комнату', style: textTheme.title),
              const SizedBox(height: 24),

              // Name field
              ZTextField(
                controller: _nameController,
                fillColor: const Color.fromRGBO(248, 248, 252, 1),
                hintText: 'Название комнаты *',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите название комнаты';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Description field
              ZTextField(
                controller: _descriptionController,
                hintText: "Описание",
                maxLines: 3,
                fillColor: const Color.fromRGBO(248, 248, 252, 1),
              ),
              const SizedBox(height: 16),

              // Hemisphere dropdown
              DropdownButtonFormField<String>(
                hint: Text(
                  'Полушарие',
                  style: TextStyle(
                    color: colors.secondaryText,
                  ),
                ),
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(248, 248, 252, 1),
                  isDense: true,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                value: _selectedHemisphere,
                items: _hemispheres.map((hemisphere) {
                  return DropdownMenuItem(
                    value: hemisphere,
                    child: Text(hemisphere),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedHemisphere = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Window side dropdown
              DropdownButtonFormField<String>(
                hint: Text(
                  'Сторона окна',
                  style: TextStyle(
                    color: colors.secondaryText,
                  ),
                ),
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(248, 248, 252, 1),
                  isDense: true,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                value: _selectedWindowSide,
                items: _windowSides.map((side) {
                  return DropdownMenuItem(
                    value: side,
                    child: Text(side),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedWindowSide = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Temperature slider
              Text('Температура: ${_temperature ?? "Не указана"}°C'),
              Slider(
                value: (_temperature ?? 20).toDouble(),
                min: 0,
                max: 40,
                divisions: 100,
                inactiveColor: const Color.fromRGBO(248, 248, 252, 1),
                activeColor: colors.action,
                label: _temperature?.toString() ?? "",
                onChanged: (double value) {
                  setState(() {
                    _temperature = value.round();
                  });
                },
              ),
              const SizedBox(height: 16),

              // Humidity slider
              Text('Влажность: ${_humidity ?? "Не указана"}%'),
              Slider(
                value: (_humidity ?? 50).toDouble(),
                min: 0,
                max: 100,
                divisions: 100,
                inactiveColor: const Color.fromRGBO(248, 248, 252, 1),
                activeColor: colors.action,
                label: _humidity?.toString() ?? "",
                onChanged: (double value) {
                  setState(() {
                    _humidity = value.round();
                  });
                },
              ),
              const SizedBox(height: 24),

              ZButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.roomsCubit.createRoom(
                      name: _nameController.text,
                      description: _descriptionController.text.isNotEmpty
                          ? _descriptionController.text
                          : null,
                      hemisphere: _selectedHemisphere,
                      temperature: _temperature,
                      humidity: _humidity,
                      windowSide: _selectedWindowSide,
                    );
                    Navigator.pop(context);
                  }
                },
                type: ZButtonType.primary,
                child: const Text('Добавить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
