import 'package:flutter/material.dart';
import '../style/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.hintStyle,
    this.controller,
    this.secureText = false,
    this.borderColor,
    this.prefix,
    this.suffix,
    this.fillColor,
    this.isFilled,
    this.validator,
    this.maxLines = 1,
    this.minLines = 1,
    this.textInputType = TextInputType.text,
    this.greyIcon,
    this.blackIcon,
  });

  final String hint;
  final TextStyle hintStyle;
  final TextEditingController? controller;
  final bool secureText;
  final Color? borderColor;
  final Color? fillColor;
  final bool? isFilled;
  final Widget? prefix;
  final Widget? suffix;
  final FormFieldValidator<String>? validator;
  final int maxLines;
  final int minLines;
  final TextInputType textInputType;
  final Widget? greyIcon;
  final Widget? blackIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final TextEditingController _controller = TextEditingController();
  Color borderColor = AppColors.darkGray;
  bool isTextEmpty = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener((){
      _checkTextField(_controller.text);
    });
  }

  void _checkTextField(String text) {
    setState(() {
      borderColor = text.isEmpty ? AppColors.darkGray : AppColors.black;
      isTextEmpty = text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) {
        _checkTextField(text);
      },
      controller: widget.controller,
      validator: widget.validator ?? (val) => null,
      obscureText: widget.secureText,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: widget.isFilled,
        prefixIcon: isTextEmpty ? widget.greyIcon : widget.blackIcon,
        prefixIconColor: Colors.grey,
        suffixIcon: widget.suffix,
        hintStyle: widget.hintStyle,
        hintText: widget.hint,
        // label: Icon(Icons.access_alarms),
        // labelText: 'UserName',
        // prefixIconConstraints: BoxConstraints(
        //   maxHeight: 30,
        //   minWidth: 120
        // ),


        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),


        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),


        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGray),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),


        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),


        //---------
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGray),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      style: const TextStyle(
        height: 1,
        fontSize: 14,
        color: AppColors.black,
        // color: AppColors.mediumSeaGreen,
      ),
    );
  }
}