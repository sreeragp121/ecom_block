import 'package:bloc/bloc.dart';
import 'package:block_samble/controllers/api/login_api.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<LogInButtonPressed>(_onLogInButtonPressed);
  }

  Future<void> _onLogInButtonPressed(
      LogInButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    try {
      await authRepository.authenticate(
          username: event.userName, password: event.password);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedInkey', true);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }
}
