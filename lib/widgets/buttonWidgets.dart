import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidgets extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double width;
  const ButtonWidgets({required this.child,this.height = 60, required this.onPressed,this.width = 350,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style,
      child: Align(alignment: Alignment.center,child: child),
    );
  }
}
