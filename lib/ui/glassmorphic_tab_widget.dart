import 'package:flutter/material.dart';
import 'package:nexlock_app/core/constants/colors.dart';

class GlassmorphicTabWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const GlassmorphicTabWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color:
                isSelected ? AppColors.glassHighlight : AppColors.glassSurface,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: isSelected ? AppColors.glassBorder : Colors.transparent,
              width: 1,
            ),
            boxShadow:
                isSelected
                    ? [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ]
                    : null,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
