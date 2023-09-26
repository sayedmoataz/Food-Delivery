import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_cubit.dart';

import '../../cubit/Auth Cubit/auth_state.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyAuthCubit, MyAuthStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BlocConsumer<MyAuthCubit, MyAuthStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi, size: 96, color: Colors.green.shade400),
                    const Text("Check Your Internet onnection",style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
