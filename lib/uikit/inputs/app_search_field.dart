import 'package:flutter/material.dart';


// TODO(darbinyan): in progress

class AppSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final bool autofocus;
  final InputBorder? border;
  final String? hintText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final Color? fillColor;
  final TextStyle? style;
  final InputDecoration? decoration;

  const AppSearchField({
    super.key,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.autofocus = false,
    this.suffixIcon,
    this.focusNode,
    this.onTap,
    this.fillColor,
    this.hintText,
    this.border,
    this.style,
    this.decoration,
  });

  InputBorder? getBorders(BuildContext context) =>
      border ??
      OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(18),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: IgnorePointer(
        ignoring: onTap != null,
        child: SizedBox(
          height: 42,
          child: TextField(
            // style: style ?? textStyles.labelLarge,
            controller: controller,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            autofocus: autofocus,
            focusNode: focusNode,
            decoration: InputDecoration(
              filled: fillColor != null,
              fillColor: fillColor,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
