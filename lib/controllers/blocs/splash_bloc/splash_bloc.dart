import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartLoadingSplash>(_onStartLoading);
  }

  Future<void> _onStartLoading(
      StartLoadingSplash event, Emitter<SplashState> emit) async {
    emit(SplashLoading());
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedInkey') ?? false;

    emit(SplashLoaded(isLoggedIn: isLoggedIn));
  }
}
