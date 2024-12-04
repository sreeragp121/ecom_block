import 'package:block_samble/controllers/api/login_api.dart';
import 'package:block_samble/controllers/api/product_api.dart';
import 'package:block_samble/controllers/blocs/login_bloc/login_bloc.dart';
import 'package:block_samble/controllers/blocs/navbar_bloc/nav_bar_bloc.dart';
import 'package:block_samble/controllers/blocs/product_bloc/product_bloc.dart';
import 'package:block_samble/controllers/blocs/splash_bloc/splash_bloc.dart';
import 'package:block_samble/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloc>(
          create: (context) => SplashBloc()..add(StartLoadingSplash()),
        ),
        BlocProvider<NavBarBloc>(
          create: (context) =>NavBarBloc() ,
        ),
        BlocProvider<ProductBloc>(
          create: (context) =>ProductBloc(apiService: ApiService())..add(FetchProducts()) ,
        ),
        BlocProvider<LoginBloc>(
          create: (context) =>LoginBloc(authRepository: AuthRepository()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
      ),
    );
  }
}