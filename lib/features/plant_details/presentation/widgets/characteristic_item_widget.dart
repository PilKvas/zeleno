import 'package:flutter/material.dart';

class CharacteristicItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const CharacteristicItemWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.green),
        ),
        const SizedBox(height: 4),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
