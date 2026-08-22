import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/profile/domain/model/export.dart';
import 'package:zeleno_v2/features/profile/domain/repository/export.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required IProfileRepository profileRepository})
    : _profileRepository = profileRepository,
      super(const ProfileState.initial());

  final IProfileRepository _profileRepository;

  Future<void> loadUser() async {
    emit(const ProfileState.loading());
    try {
      final user = await _profileRepository.getCurrentUser();
      emit(ProfileState.loaded(user));
    } catch (error, _) {
      emit(ProfileState.failure(error));
    }
  }
}
