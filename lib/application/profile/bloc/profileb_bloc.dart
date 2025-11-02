import 'package:bloc/bloc.dart';
import 'package:firstapp/domain/core/user/model/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profileb_event.dart';
part 'profileb_state.dart';
part 'profileb_bloc.freezed.dart';

class ProfilebBloc extends Bloc<ProfilebEvent, ProfilebState> {
  ProfilebBloc() : super(_Initial()) {
    on<ProfilebEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
