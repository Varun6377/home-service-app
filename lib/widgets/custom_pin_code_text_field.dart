import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../utils/app_export.dart';

class CustomPinCodeTextField extends StatefulWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  _CustomPinCodeTextFieldState createState() => _CustomPinCodeTextFieldState();
}

class _CustomPinCodeTextFieldState extends State<CustomPinCodeTextField> {
  String pin = '';

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: Column(
              children: [
                pinCodeTextFieldWidget,
              ],
            ),
          )
        : Column(
            children: [
              pinCodeTextFieldWidget,
            ],
          );
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: widget.context,
        controller: widget.controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: widget.textStyle ?? Theme.of(context).textTheme.headline6,
        hintStyle: widget.hintStyle ?? Theme.of(context).textTheme.headline6,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 50,
          fieldWidth: 50,
          shape: PinCodeFieldShape.underline,
          inactiveFillColor: Color.fromARGB(255, 184, 184, 184),
          activeFillColor: Colors.transparent,
          inactiveColor: Colors.transparent,
          activeColor: Color.fromARGB(255, 184, 184, 184),
          selectedColor: Color.fromARGB(255, 184, 184, 184),
          selectedFillColor: Colors.transparent,
        ),
        onChanged: (value) {
          setState(() {
            pin = value;
          });
          widget.onChanged(value);
        },
      );
}
