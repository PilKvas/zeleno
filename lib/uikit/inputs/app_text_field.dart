import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zeleno_v2/core/helper/debouncer.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

class ZTextField extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final Widget? icon;
  final bool showError;
  final bool? readOnly;
  final bool isRequired;
  final bool isPassword;
  final String? hintText;
  final Color? fillColor;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final InputBorder? border;
  final VoidCallback? onPressed;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlignVertical? textAlignVertical;
  final String? initialValue;
  final bool? isDebounsed;
  final int? maxLines;

  const ZTextField({
    this.icon,
    super.key,
    this.border,
    this.hintText,
    this.validator,
    this.fillColor,
    this.errorText,
    this.onPressed,
    this.onChanged,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    this.readOnly = false,
    this.showError = false,
    this.isRequired = false,
    this.isPassword = false,
    this.contentPadding,
    this.textAlignVertical,
    this.initialValue,
    this.isDebounsed,
    this.suffixIcon,
    this.obscureText,
    this.maxLines,
  });

  @override
  State<ZTextField> createState() => _ZTextFieldState();
}

class _ZTextFieldState extends State<ZTextField> {
  late final TextEditingController _textController;
  final _debouncer = Debouncer(milliseconds: 500);
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword;
    _textController = widget.controller ??
        TextEditingController(
          text: widget.initialValue,
        );
    _focusNode.addListener(
      () {
        if (context.mounted) {
          setState(
            () {
              _isFocused = _focusNode.hasFocus;
            },
          );
        }
      },
    );
  }

  void clearInput() {
    _textController.clear();
    widget.onChanged?.call(_textController.text);
    widget.onPressed?.call();
  }

  void showPassword() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  Widget? defineIcon() {
    if (_isObscured) {
      return Icon(Icons.visibility);
    } else {
      return Icon(Icons.visibility_off);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    return TextFormField(
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      obscureText: _isObscured,
      readOnly: widget.readOnly ?? false,
      validator: widget.validator,
      controller: _textController,
      focusNode: _focusNode,
      textAlignVertical: widget.textAlignVertical,
      onChanged: (text) {
        if (widget.isDebounsed == false) {
          widget.onChanged?.call(text);
        } else {
          _debouncer.run(
            () {
              widget.onChanged?.call(text);
            },
          );
        }
      },
      decoration: InputDecoration(
        isDense: true,
        hintStyle: TextStyle(
          color: colors.secondaryText,
        ),
        errorText: widget.errorText,
        errorStyle: const TextStyle(
          color: Colors.red,
        ),
        filled: true,
        fillColor: widget.fillColor,
        contentPadding: widget.contentPadding ?? const EdgeInsets.all(8),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(
                splashRadius: 10,
                icon: defineIcon() ?? const SizedBox(),
                onPressed: showPassword,
              )
            : null,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
