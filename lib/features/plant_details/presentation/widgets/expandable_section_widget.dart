import 'package:flutter/material.dart';

class ExpandableSectionWidget extends StatefulWidget {
  final String title;
  final dynamic content;
  final bool isTable;

  const ExpandableSectionWidget({
    super.key,
    required this.title,
    required this.content,
    this.isTable = false,
  });

  @override
  State<ExpandableSectionWidget> createState() =>
      _ExpandableSectionWidgetState();
}

class _ExpandableSectionWidgetState extends State<ExpandableSectionWidget> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                key: ValueKey<bool>(_isExpanded),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: _isExpanded
              ? Container(
                  key: const ValueKey<bool>(true),
                  child: widget.isTable
                      ? widget.content
                      : Text(widget.content.toString()),
                )
              : const SizedBox(key: ValueKey<bool>(false)),
        ),
      ],
    );
  }
}
