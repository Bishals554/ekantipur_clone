import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: textStyle ??
                const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
          onTap: onTap,
        ),
        const Divider(
          thickness: 0.1,
        ),
      ],
    );
  }
}
