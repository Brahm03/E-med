import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField {
  static textField(
      {required String text,
      IconButton? iconButton,
      required TextEditingController controller,
      IconButton? phoneNumber,
      bool read = false,
      List<MaskTextInputFormatter> formatter = const [],
      var onChanged,
      bool isShown = false,
      VoidCallback? onTap,
      FormFieldValidator<String>? validator
      }) {
    return TextFormField(
      inputFormatters: formatter,
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
