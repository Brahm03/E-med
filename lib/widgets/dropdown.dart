import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:emed/core/constants/PM/pMconst.dart';
import 'package:emed/core/constants/color/colorConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:flutter/material.dart';

class DropdownWidgets extends StatelessWidget {
  List items = [];
  DropdownWidgets({Key? key, required this.items}) : super(key: key);
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButtonHideUnderline(
        child: Padding(
          padding: PMconst.small,
          child: DropdownButton2(
            itemHeight: context.h * 0.1,
            isExpanded: true,
            hint: Row(
              children: const [
                SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: Text(
                    'Select Item',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConst.kPrimaryColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              // setState(() {
              //   selectedValue = value as String;
              // });
            },
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 25,
            iconDisabledColor: Colors.grey,
            buttonHeight: context.h * 0.08,
            buttonWidth: context.w,
            buttonPadding: const EdgeInsets.only(left: 20, right: 20),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.black26,
              ),
              color: ColorConst.white,
            ),
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 200,
            dropdownWidth: 200,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(-20, 0),
          ),
        ),
      ),
    );
  }
}
