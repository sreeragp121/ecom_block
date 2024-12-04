import 'package:block_samble/controllers/blocs/splash_bloc/splash_bloc.dart';
import 'package:block_samble/view/login_page/login_page.dart';
import 'package:block_samble/view/navigationbar/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) async {
        if (state is SplashLoaded) {
          await Future.delayed(Duration(seconds: 3));
          if (state.isLoggedIn) {
            Navigator.pushReplacement(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(
                  builder: (context) => const MyNavigationbar(),
                ));
          } else {
            Navigator.pushReplacement(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
          }
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          )),
        ),
      ),
    );
  }
}
