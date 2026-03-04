import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({
    super.key,
    this.text,
    this.Text_Styles,
    this.Styles,
    this.fill_color,
    this.suffix_Icon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.height,
    this.width,
    this.onTap
  });

  final String? text;
  final double? width;
  final double? height;
  final Color? Text_Styles;
  final TextStyle? Styles;
  final Color? fill_color;
  final Widget? suffix_Icon;
  final Widget? prefixIcon;
  void Function()? onTap;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        readOnly: true,
        onTap: onTap,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.email),
          suffixIcon: suffix_Icon,
          prefixIcon: prefixIcon,
          fillColor: fill_color,
          filled: true,

          //labelText:  "Enter your email",
          hintStyle: Styles?.copyWith(color: Text_Styles),
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
