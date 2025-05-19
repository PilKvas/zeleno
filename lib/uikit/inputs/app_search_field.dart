import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

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
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final bool? obscureText;

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
    this.inputFormatters,
    this.validator,
    this.obscureText,
  });

  InputBorder? getBorders(BuildContext context) =>
      border ??
      OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(18),
      );

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: IgnorePointer(
        ignoring: onTap != null,
        child: SizedBox(
          height: 42,
          child: TextFormField(
            // style: style ?? textStyles.labelLarge,
            validator: validator,
            obscureText: obscureText ?? false,
            textAlign: TextAlign.start,
            controller: controller,
            onChanged: onChanged,
            autofocus: autofocus,
            focusNode: focusNode,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: colors.secondaryText,
              ),
              hintText: hintText,
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
