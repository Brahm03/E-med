import 'package:emed/core/constants/color/ColorConst.dart';
import 'package:emed/core/constants/radius/RadiusConst.dart';
import 'package:flutter/material.dart';

class MyTextField {
  static textField(
      {required String text,
      IconButton? iconButton,
      required TextEditingController controller,
      IconButton? phoneNumber,
      bool read = false,
      var onChanged,
      bool isShown = false,
      VoidCallback? onTap,
      FormFieldValidator<String>? validator
      }) {
    return TextFormField(
      obscureText: isShown,
      validator: validator,
      controller: controller,
      readOnly: read,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: iconButton,
        prefixIcon: phoneNumber,
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiuConst.large),
          borderSide: const BorderSide(color: ColorConst.kPrimaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorConst.red),
          borderRadius: BorderRadius.circular(RadiuConst.medium),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorConst.kPrimaryColor),
          borderRadius: BorderRadius.circular(RadiuConst.medium),
        ),
      ),
    );
  }
}
