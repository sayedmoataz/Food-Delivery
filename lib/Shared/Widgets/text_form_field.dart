// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget myTextFormField({
  required BuildContext context,
  TextEditingController? controller,
  TextInputType? inputType,
  bool obsecure = false,
  String? hint,
  Widget? icon,
  Widget? passIcon,
  InputBorder? border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15))),
}) =>
    TextFormField(
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus(),
      controller: controller,
      keyboardType: inputType,
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
        suffixIcon: passIcon,
        border: border,
        contentPadding: const EdgeInsets.all(20),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green.shade400)),
      ),
      validator: (Value) {
        if (Value!.isEmpty) {
          return '$hint Must Not be Empty';
        } else {
          return null;
        }
      },
    );
