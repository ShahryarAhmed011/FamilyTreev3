import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../base/bloc/base_bloc.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends BaseBloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {});

    on<SignUpScreenInit>((event, emit) async {});
  }
}
