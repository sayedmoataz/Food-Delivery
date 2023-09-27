import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_cubit.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_state.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyAuthCubit, MyAuthStates>(
      listener: (context, state) { },
      builder: (context, state) {
        return Scaffold(
          
        );
      },
    );
  }
}
