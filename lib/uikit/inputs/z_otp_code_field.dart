import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class ZOtpCodeField extends StatefulWidget {
  const ZOtpCodeField({
    super.key,
    this.length = 6,
    this.autofocus = true,
    this.onChanged,
  });

  final int length;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  @override
  State<ZOtpCodeField> createState() => _ZOtpCodeFieldState();
}

class _ZOtpCodeFieldState extends State<ZOtpCodeField> {
  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List<TextEditingController>.generate(
      widget.length,
      (_) => TextEditingController(),
    );
    _focusNodes = List<FocusNode>.generate(widget.length, (_) => FocusNode());
    if (widget.autofocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }
        _focusNodes.first.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    for (final TextEditingController controller in _controllers) {
      controller.dispose();
    }
    for (final FocusNode focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography textTheme = ZTypography.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(widget.length, (int index) {
        return SizedBox(
          width: 52,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            autofocus: widget.autofocus && index == 0,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            style: textTheme.title.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              height: 1.0,
              color: colors.secondaryTextFieldColor,
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (String value) =>
                _onFieldChanged(index: index, value: value),
            decoration: InputDecoration(
              counterText: '',
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 14,
              ),
              filled: true,
              fillColor: colors.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colors.actionSecondary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colors.action, width: 2),
              ),
            ),
          ),
        );
      }),
    );
  }

  void _onFieldChanged({required int index, required String value}) {
    if (value.length > 1) {
      _applyPastedOtp(startIndex: index, pastedValue: value);
      _notifyValueChanged();
      return;
    }
    if (value.isNotEmpty && index < widget.length - 1) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
    _notifyValueChanged();
  }

  void _applyPastedOtp({required int startIndex, required String pastedValue}) {
    final String digitsOnly = pastedValue.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.isEmpty) {
      _controllers[startIndex].clear();
      return;
    }
    for (int i = startIndex; i < widget.length; i++) {
      _controllers[i].clear();
    }
    int offset = 0;
    while (startIndex + offset < widget.length && offset < digitsOnly.length) {
      final String char = digitsOnly[offset];
      final TextEditingController controller =
          _controllers[startIndex + offset];
      controller.text = char;
      controller.selection = const TextSelection.collapsed(offset: 1);
      offset++;
    }
    final int nextIndex = startIndex + offset;
    if (nextIndex < widget.length) {
      _focusNodes[nextIndex].requestFocus();
      return;
    }
    _focusNodes.last.unfocus();
  }

  void _notifyValueChanged() {
    final String value = _controllers
        .map((TextEditingController controller) => controller.text)
        .join();
    widget.onChanged?.call(value);
  }
}
