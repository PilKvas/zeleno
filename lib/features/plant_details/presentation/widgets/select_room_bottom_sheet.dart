import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_details/presentation/cubit/garden_cubit.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/uikit/loading_widget.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class SelectRoomBottomSheet extends StatefulWidget {
  final GardenCubit gardenCubit;
  final int specieId;

  const SelectRoomBottomSheet({
    super.key,
    required this.gardenCubit,
    required this.specieId,
  });

  @override
  State<SelectRoomBottomSheet> createState() => _SelectRoomBottomSheetState();
}

class _SelectRoomBottomSheetState extends State<SelectRoomBottomSheet> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  RoomModel? _selectedRoom;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return BlocBuilder<GardenCubit, GardenState>(
      bloc: widget.gardenCubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
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
              Text('Выберите комнату', style: textTheme.title),
              const SizedBox(height: 16),
              if (state.status.isLoading)
                const Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ZLoading(),
                  ),
                )
              else if (state.rooms.isEmpty)
                Center(
                  child: Text(
                    'У вас нет комнат. Создайте комнату сначала.',
                    style: textTheme.body,
                    textAlign: TextAlign.center,
                  ),
                )
              else
                Flexible(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'Введите название растения',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: colors.action,
                                width: 2,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста, введите название';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        Flexible(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: state.rooms.length,
                            separatorBuilder: (context, index) => const Divider(),
                            itemBuilder: (context, index) {
                              final room = state.rooms[index];
                              return _buildRoomItem(context, room);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRoomItem(BuildContext context, RoomModel room) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          widget.gardenCubit.addPlantToGarden(
            roomId: room.id,
            specieId: widget.specieId,
            customName: _controller.text,
          );
          Navigator.pop(context, room);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colors.action.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.home_outlined,
                color: colors.action,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    room.name,
                    style: textTheme.title.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  if (room.description != null)
                    Text(
                      room.description!,
                      style: textTheme.body.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
} 