import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashLoading()) {
    on<StartLoadingSplash>(_onStartLoading);
  }

  Future <void>_onStartLoading(StartLoadingSplash event,Emitter<SplashState>emit)async{
    await Future.delayed( Duration(seconds: 3));
    emit(SplashLoaded());
  }
}
