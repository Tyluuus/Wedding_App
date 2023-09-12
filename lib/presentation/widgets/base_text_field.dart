import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BaseTextField extends HookWidget {
  final TextEditingController textEditingController;
  final String label;
  final int? maxLength;
  final bool obscureText;
  final ValueNotifier<bool>? passed;
  final String? error;
  final Function(String)? onChanged;
  final String? inputRegex;
  final bool? autofocus;
  final Function()? onSubmit;
  final bool? readOnly;
  final bool numeric;
  final bool phone;

  const BaseTextField({
    Key? key,
    required this.textEditingController,
    required this.label,
    this.maxLength,
    this.obscureText = false,
    this.passed,
    this.error,
    this.onChanged,
    this.inputRegex,
    this.autofocus,
    this.onSubmit,
    this.readOnly,
    this.numeric = false,
    this.phone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unfocusedOnce = useState(false);
    final useObscure = useState(obscureText);
    if (passed != null && passed!.value == true && !unfocusedOnce.value) {
      FocusManager.instance.primaryFocus?.unfocus();
      FocusScope.of(context).unfocus();
      unfocusedOnce.value = true;
    } else if (passed != null && passed!.value == false) {
      unfocusedOnce.value = false;
    }
    textEditingController.selection = autofocus ?? false
        ? TextSelection(
            baseOffset: 0,
            extentOffset: textEditingController.text.contains('.') ? textEditingController.text.lastIndexOf('.') : textEditingController.text.length)
        : textEditingController.selection;

    return Container(
      color: Colors.orangeAccent.withOpacity(0.2),
      child: TextField(
        keyboardType: phone
            ? TextInputType.phone
            : numeric
                ? TextInputType.number
                : null,
        onSubmitted: (text) => onSubmit != null ? onSubmit!() : null,
        textInputAction: onSubmit == null ? TextInputAction.next : TextInputAction.done,
        autofocus: autofocus ?? false,
        inputFormatters: inputRegex != null ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(inputRegex!))] : null,
        maxLength: maxLength,
        enabled: passed == null ? true : !passed!.value,
        cursorWidth: 1.0,
        cursorColor: Colors.black,
        controller: textEditingController,
        decoration: InputDecoration(
          counterText: '',
          hoverColor: Colors.black,
          errorText: error,
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        onChanged: onChanged,
        obscureText: useObscure.value,
        readOnly: readOnly ?? false,
      ),
    );
  }
}
