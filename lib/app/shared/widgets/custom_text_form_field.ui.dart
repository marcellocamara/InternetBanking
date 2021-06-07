import 'package:flutter/material.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class CustomTextFormFieldWidget extends StatelessWidget {
  final enabled;
  final onChanged;
  final keyboardType;
  final labelText;
  final hintText;
  final initialValue;
  final suffixIcon;
  final inputFormatters;

  CustomTextFormFieldWidget({
    @required this.enabled,
    @required this.onChanged,
    @required this.keyboardType,
    @required this.labelText,
    @required this.hintText,
    this.initialValue,
    this.suffixIcon,
    this.inputFormatters,
  })  : assert(enabled != null),
        assert(onChanged != null),
        assert(keyboardType != null),
        assert(labelText != null),
        assert(hintText != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1, bottom: 5),
          child: Text(
            labelText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: enabled ? Colors.black87 : Colors.grey[400],
              fontSize: 13,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: enabled ? Colors.black : Colors.grey,
          ),
          enabled: enabled,
          onChanged: onChanged,
          keyboardType: keyboardType,
          initialValue: initialValue,
          inputFormatters: inputFormatters,
          textInputAction: TextInputAction.next,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
