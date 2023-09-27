import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_cubit.dart';
import 'package:food_delivery/cubit/Home%20Cubit/home_cubit.dart';

import 'Opening/Splash/splash_screen.dart';
import 'Shared/Widgets/offline_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.green.shade400,
      statusBarColor: Colors.green.shade400, 
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MyHomeCubit>(
              create: (BuildContext context) => MyHomeCubit()),
          BlocProvider<MyAuthCubit>(
              create: (BuildContext context) => MyAuthCubit()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Food Delivery",
            home: myOfflineWidget(connectedPage: const SplashScreen())));
  }
}
