import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:food_delivery/Home/homepage.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_cubit.dart';
import 'package:food_delivery/cubit/Home%20Cubit/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          home: OfflineBuilder(
            connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,
            ) {
              final bool connected = connectivity != ConnectivityResult.none;
              if (connected) {
                return const MyHomePage();
              } else {
                return const MyHomePage();
              }
            },
            child: const Center(child: CircularProgressIndicator()),
          ),
        ));
  }
}
