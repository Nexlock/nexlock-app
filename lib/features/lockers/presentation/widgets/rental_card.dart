import 'package:flutter/material.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_model.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

class RentalCard extends StatelessWidget {
  final RentalModel rental;
  final VoidCallback? onTap;

  const RentalCard({super.key, required this.rental, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlassmorphicContainer(
        margin: const EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.accent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.lock,
                          color: AppColors.accent,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Locker ${rental.locker.lockerId}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              rental.locker.module.name,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color:
                        rental.isLocked
                            ? Colors.red.withOpacity(0.2)
                            : Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color:
                          rental.isLocked
                              ? Colors.red.withOpacity(0.4)
                              : Colors.green.withOpacity(0.4),
                    ),
                  ),
                  child: Text(
                    rental.isLocked ? 'LOCKED' : 'UNLOCKED',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: rental.isLocked ? Colors.red : Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.schedule,
                  size: 14,
                  color: Colors.white.withOpacity(0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  'Expires: ${_formatDateTime(rental.expiresAt)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.timer,
                  size: 14,
                  color: Colors.white.withOpacity(0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  _getTimeRemaining(rental.expiresAt),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: _getTimeRemainingColor(rental.expiresAt),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _getTimeRemaining(DateTime expiresAt) {
    final now = DateTime.now();
    final difference = expiresAt.difference(now);

    if (difference.isNegative) {
      return 'Expired';
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;

    if (days > 0) {
      return '${days}d ${hours}h';
    } else if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }

  Color _getTimeRemainingColor(DateTime expiresAt) {
    final now = DateTime.now();
    final difference = expiresAt.difference(now);

    if (difference.isNegative) {
      return Colors.red;
    } else if (difference.inHours < 1) {
      return Colors.orange;
    } else if (difference.inHours < 6) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }
}
