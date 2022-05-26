import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/styles/theme.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  // final String value;
  final bool required;
  final Function(String)? onChange;
  final bool password;
  final bool email;

  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  CustomFormField(
      {Key? key,
      required this.hint,
      this.required = false,
      this.onChange,
      // required this.value,
      this.email = false,
      this.password = false,

      //*VALIDATOR
      this.inputFormatters,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        child: TextFormField(
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            labelStyle: TextStyle(
                color: Colors.green,
                fontSize: 17,
                fontFamily: gilroyFontFamily,
                fontWeight: FontWeight.bold),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: hint,
          ),
          obscureText: this.password,
          validator: email
              ? (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Enter correct name";
                  } else {
                    return null;
                  }
                }
              : (value) {
                  if (value!.isEmpty && this.required) {
                    return "field required";
                  }
                },
          onChanged: this.onChange,
        ));
  }
}
