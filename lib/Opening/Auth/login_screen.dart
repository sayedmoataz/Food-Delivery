import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/Opening/Auth/signup_screen.dart';
import 'package:food_delivery/Shared/Widgets/text_form_field.dart';
import 'package:food_delivery/Shared/functions/navigation_funcation.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_cubit.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_state.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyAuthCubit, MyAuthStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var formKey = GlobalKey<FormState>();
        var authCubit = MyAuthCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const FlutterLogo(size: 48),
                        const SizedBox(height: 25),
                        Text(
                          "Welcome Back...",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.green.shade400,
                          ),
                        ),
                        const SizedBox(height: 30),
                        myTextFormField(
                          context: context,
                          controller: authCubit.username,
                          hint: "E-mail",
                          inputType: TextInputType.emailAddress,
                          icon: Icon(Icons.email, color: Colors.green.shade400),
                        ),
                        const SizedBox(height: 20),
                        myTextFormField(
                          context: context,
                          controller: authCubit.password,
                          hint: "Password",
                          obsecure: authCubit.isVisable,
                          inputType: TextInputType.visiblePassword,
                          passIcon: IconButton(
                              onPressed: () => authCubit.showPassword(),
                              icon: authCubit.isVisable
                                  ? Icon(Icons.visibility_off,
                                      color: Colors.green.shade400)
                                  : Icon(Icons.visibility,
                                      color: Colors.red.shade400)),
                          icon: Icon(Icons.password,
                              color: Colors.green.shade400),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: authCubit.isLoginLoadding
                                ? Center(
                                    child: CircularProgressIndicator(
                                        color: Colors.green.shade400))
                                : MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Colors.green.shade400,
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        authCubit.loginLoadding();
                                        authCubit.login(
                                          context: context,
                                          email: authCubit.username.text
                                              .toString(),
                                          password: authCubit.password.text
                                              .toString(),
                                        );
                                        return;
                                      }
                                      formKey.currentState!.save();
                                    },
                                    child: const Text('LOG-IN',
                                        style: TextStyle(color: Colors.white)),
                                  )),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account ? ",
                              style: TextStyle(
                                  color: Colors.green.shade400, fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () =>
                                    navigateTo(context, const MySignUpScreen()),
                                child: const Text("Sign Up Now"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
