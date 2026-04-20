import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? iconColor;

  const MenuButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ICON BOX
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: backgroundColor ?? const Color(0xFFE8F0F6),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, size: 26, color: iconColor ?? Colors.blueGrey),
          ),

          const SizedBox(height: 8),

          // LABEL
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
