import 'package:flutter/material.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

enum GlassmorphicButtonVariant { primary, secondary, danger }

class GlassmorphicButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final bool isLoading;
  final GlassmorphicButtonVariant variant;

  const GlassmorphicButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isLoading = false,
    this.variant = GlassmorphicButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: GlassmorphicContainer(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading) ...[
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(_getTextColor()),
                ),
              ),
              const SizedBox(width: 8),
            ] else if (icon != null) ...[
              Icon(icon, color: _getTextColor(), size: 18),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: _getTextColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTextColor() {
    switch (variant) {
      case GlassmorphicButtonVariant.primary:
        return AppColors.accent;
      case GlassmorphicButtonVariant.secondary:
        return Colors.white;
      case GlassmorphicButtonVariant.danger:
        return Colors.red.shade300;
    }
  }
}
