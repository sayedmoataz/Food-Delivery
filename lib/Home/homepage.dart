import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Home%20Cubit/home_cubit.dart';
import 'package:food_delivery/cubit/Home%20Cubit/home_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyHomeCubit, MyHomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        // var cubit = MyHomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade400,
            title: const Text("F o o d  D e l i v e r y"),
          ),
        );
      },
    );
  }
}
