import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/Home/homepage.dart';
import 'package:food_delivery/Shared/Cache/cache_helper.dart';
import 'package:food_delivery/Shared/functions/navigation_funcation.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_state.dart';
import 'package:http/http.dart' as http;

import '../../models/auth/login_model.dart';

class MyAuthCubit extends Cubit<MyAuthStates> {
  MyAuthCubit() : super(MyAuthInitState());

  static MyAuthCubit get(contaxt) => BlocProvider.of(contaxt);

  String APIsUrl = "http://18.184.182.150/api";
  bool isVisable = true;
  bool isLoginLoadding = false;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  showPassword() {
    isVisable = !isVisable;
    emit(ShowPasswordState());
  }

  loginLoadding() {
    isLoginLoadding = !isLoginLoadding;
    emit(LoginLoaddingState());
  }

  LoginModel? loginModel;

  Future<void> login({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    emit(LoginLoaddingState());
    await http.post(Uri.parse('$APIsUrl/customers/login'),
        body: {'email': email, 'password': password},
        headers: {'Accept': 'application/json'}).then((value) {
      loginModel = LoginModel.fromJson(jsonDecode(value.body));
      loginLoadding();
      if (loginModel!.code == 200) {
        CacheHelper.putData(
            key: "token", value: loginModel!.data.token.toString());
        debugPrint("loginModel is : \n ${value.body}");
        navigateFinalTo(context, const MyHomePage());
        emit(SuccessLoginLoaddingState());
      } else {
        Fluttertoast.showToast(
          msg: "username or password is wrong, please Try Again",
          backgroundColor: Colors.green.shade400,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }).catchError((e) {
      loginLoadding();
      Fluttertoast.showToast(
        msg: "username or password is wrong, please Try Again",
        backgroundColor: Colors.green.shade400,
        toastLength: Toast.LENGTH_LONG,
      );
      debugPrint("login error is $e");
      emit(FailedLoginLoaddingState());
    });
  }
}
