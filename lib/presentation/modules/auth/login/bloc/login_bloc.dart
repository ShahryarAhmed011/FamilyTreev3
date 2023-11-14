import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../base/bloc/base_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LogInBloc extends BaseBloc<LogInEvent, LogInState> {
  LogInBloc() : super(LogInInitial()) {
    on<LogInEvent>((event, emit) async {});

    on<LogInScreenInit>((event, emit) async {});
  }
}
