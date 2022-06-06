import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Masks {
  static final Masks _instance = Masks.init();
  static Masks get instance => _instance;
  Masks.init();

  var maks = MaskTextInputFormatter(mask: '+998 ## ### ## ##', type: MaskAutoCompletionType.lazy, filter:  {"#": RegExp(r'[0-9]') });
}
