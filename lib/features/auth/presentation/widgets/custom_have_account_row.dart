import 'package:flutter/material.dart';

class CustomHaveAccountRow extends StatelessWidget {
  const CustomHaveAccountRow({
    required this.text,
    required this.actionText,
    required this.onTap,
    super.key,
  });
  final String text;
  final String actionText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: const Color(0xFF616A6B),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo',
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              actionText,
              style: TextStyle(
                color: const Color(0xFF1B5E37),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
